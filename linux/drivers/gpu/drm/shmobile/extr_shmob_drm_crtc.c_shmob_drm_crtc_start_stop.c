
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct shmob_drm_device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* dev; } ;
struct shmob_drm_crtc {TYPE_2__ crtc; } ;
struct TYPE_3__ {struct shmob_drm_device* dev_private; } ;


 int LDCNT2R ;
 int LDCNT2R_DO ;
 int LDDCKSTPR ;
 int LDDCKSTPR_DCKSTP ;
 int LDPMR ;
 int LDPMR_LPS ;
 int cpu_relax () ;
 int lcdc_read (struct shmob_drm_device*,int ) ;
 int lcdc_write (struct shmob_drm_device*,int ,int) ;

__attribute__((used)) static void shmob_drm_crtc_start_stop(struct shmob_drm_crtc *scrtc, bool start)
{
 struct shmob_drm_device *sdev = scrtc->crtc.dev->dev_private;
 u32 value;

 value = lcdc_read(sdev, LDCNT2R);
 if (start)
  lcdc_write(sdev, LDCNT2R, value | LDCNT2R_DO);
 else
  lcdc_write(sdev, LDCNT2R, value & ~LDCNT2R_DO);


 while (1) {
  value = lcdc_read(sdev, LDPMR) & LDPMR_LPS;
  if ((start && value) || (!start && !value))
   break;

  cpu_relax();
 }

 if (!start) {

  lcdc_write(sdev, LDDCKSTPR, LDDCKSTPR_DCKSTP);
 }
}
