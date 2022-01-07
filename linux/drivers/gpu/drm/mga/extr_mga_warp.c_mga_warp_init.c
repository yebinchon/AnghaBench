
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_3__ {int chipset; } ;
typedef TYPE_1__ drm_mga_private_t ;


 int DRM_ERROR (char*,scalar_t__,scalar_t__) ;
 int EINVAL ;



 scalar_t__ MGA_READ (int ) ;
 int MGA_WACCEPTSEQ ;
 int MGA_WCACHEFLUSH_ENABLE ;
 int MGA_WGETMSB ;
 int MGA_WIADDR ;
 int MGA_WIADDR2 ;
 int MGA_WMASTER_ENABLE ;
 int MGA_WMISC ;
 int MGA_WMODE_SUSPEND ;
 int MGA_WRITE (int ,int) ;
 int MGA_WUCODECACHE_ENABLE ;
 int MGA_WVRTXSZ ;
 scalar_t__ WMISC_EXPECTED ;

int mga_warp_init(drm_mga_private_t *dev_priv)
{
 u32 wmisc;



 switch (dev_priv->chipset) {
 case 129:
 case 128:
  MGA_WRITE(MGA_WIADDR2, MGA_WMODE_SUSPEND);
  MGA_WRITE(MGA_WGETMSB, 0x00000E00);
  MGA_WRITE(MGA_WVRTXSZ, 0x00001807);
  MGA_WRITE(MGA_WACCEPTSEQ, 0x18000000);
  break;
 case 130:
  MGA_WRITE(MGA_WIADDR, MGA_WMODE_SUSPEND);
  MGA_WRITE(MGA_WGETMSB, 0x1606);
  MGA_WRITE(MGA_WVRTXSZ, 7);
  break;
 default:
  return -EINVAL;
 }

 MGA_WRITE(MGA_WMISC, (MGA_WUCODECACHE_ENABLE |
         MGA_WMASTER_ENABLE | MGA_WCACHEFLUSH_ENABLE));
 wmisc = MGA_READ(MGA_WMISC);
 if (wmisc != WMISC_EXPECTED) {
  DRM_ERROR("WARP engine config failed! 0x%x != 0x%x\n",
     wmisc, WMISC_EXPECTED);
  return -EINVAL;
 }

 return 0;
}
