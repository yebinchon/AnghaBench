
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;
struct TYPE_3__ {int func; } ;
typedef TYPE_1__ drm_savage_init_t ;


 int EINVAL ;
 int LOCK_TEST_WITH_RETURN (struct drm_device*,struct drm_file*) ;


 int savage_do_cleanup_bci (struct drm_device*) ;
 int savage_do_init_bci (struct drm_device*,TYPE_1__*) ;

__attribute__((used)) static int savage_bci_init(struct drm_device *dev, void *data, struct drm_file *file_priv)
{
 drm_savage_init_t *init = data;

 LOCK_TEST_WITH_RETURN(dev, file_priv);

 switch (init->func) {
 case 128:
  return savage_do_init_bci(dev, init);
 case 129:
  return savage_do_cleanup_bci(dev);
 }

 return -EINVAL;
}
