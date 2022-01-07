
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qxl_device {int release_ring; TYPE_1__* ram_header; } ;
struct drm_device {struct qxl_device* dev_private; } ;
struct TYPE_2__ {int int_mask; } ;


 int QXL_INTERRUPT_MASK ;
 int drm_mode_config_helper_resume (struct drm_device*) ;
 int qxl_create_monitors_object (struct qxl_device*) ;
 int qxl_reinit_memslots (struct qxl_device*) ;
 int qxl_ring_init_hdr (int ) ;

__attribute__((used)) static int qxl_drm_resume(struct drm_device *dev, bool thaw)
{
 struct qxl_device *qdev = dev->dev_private;

 qdev->ram_header->int_mask = QXL_INTERRUPT_MASK;
 if (!thaw) {
  qxl_reinit_memslots(qdev);
  qxl_ring_init_hdr(qdev->release_ring);
 }

 qxl_create_monitors_object(qdev);
 return drm_mode_config_helper_resume(dev);
}
