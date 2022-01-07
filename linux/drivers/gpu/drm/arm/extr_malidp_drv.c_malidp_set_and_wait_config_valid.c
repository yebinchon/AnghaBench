
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct malidp_hw_device {TYPE_1__* hw; } ;
struct malidp_drm {int config_valid; int wq; struct malidp_hw_device* dev; } ;
struct drm_device {struct malidp_drm* dev_private; } ;
struct TYPE_2__ {scalar_t__ (* in_config_mode ) (struct malidp_hw_device*) ;int (* set_config_valid ) (struct malidp_hw_device*,int) ;} ;


 int ETIMEDOUT ;
 scalar_t__ MALIDP_CONFIG_VALID_DONE ;
 int MALIDP_CONF_VALID_TIMEOUT ;
 scalar_t__ atomic_read (int *) ;
 int atomic_set (int *,scalar_t__) ;
 int msecs_to_jiffies (int ) ;
 int stub1 (struct malidp_hw_device*,int) ;
 scalar_t__ stub2 (struct malidp_hw_device*) ;
 int wait_event_interruptible_timeout (int ,int,int ) ;

__attribute__((used)) static int malidp_set_and_wait_config_valid(struct drm_device *drm)
{
 struct malidp_drm *malidp = drm->dev_private;
 struct malidp_hw_device *hwdev = malidp->dev;
 int ret;

 hwdev->hw->set_config_valid(hwdev, 1);

 if (hwdev->hw->in_config_mode(hwdev)) {
  atomic_set(&malidp->config_valid, MALIDP_CONFIG_VALID_DONE);
  return 0;
 }

 ret = wait_event_interruptible_timeout(malidp->wq,
   atomic_read(&malidp->config_valid) == MALIDP_CONFIG_VALID_DONE,
   msecs_to_jiffies(MALIDP_CONF_VALID_TIMEOUT));

 return (ret > 0) ? 0 : -ETIMEDOUT;
}
