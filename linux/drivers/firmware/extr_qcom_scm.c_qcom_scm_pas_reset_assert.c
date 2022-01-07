
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct reset_controller_dev {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;
 int __qcom_scm_pas_mss_reset (int ,int) ;
 TYPE_1__* __scm ;

__attribute__((used)) static int qcom_scm_pas_reset_assert(struct reset_controller_dev *rcdev,
         unsigned long idx)
{
 if (idx != 0)
  return -EINVAL;

 return __qcom_scm_pas_mss_reset(__scm->dev, 1);
}
