
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct drm_device {int dummy; } ;


 int _PSB_IRQ_ASLE ;
 int _PSB_VSYNC_PIPEA_FLAG ;
 int _PSB_VSYNC_PIPEB_FLAG ;
 int mid_pipe_event_handler (struct drm_device*,int) ;
 int psb_intel_opregion_asle_intr (struct drm_device*) ;

__attribute__((used)) static void psb_vdc_interrupt(struct drm_device *dev, uint32_t vdc_stat)
{
 if (vdc_stat & _PSB_IRQ_ASLE)
  psb_intel_opregion_asle_intr(dev);

 if (vdc_stat & _PSB_VSYNC_PIPEA_FLAG)
  mid_pipe_event_handler(dev, 0);

 if (vdc_stat & _PSB_VSYNC_PIPEB_FLAG)
  mid_pipe_event_handler(dev, 1);
}
