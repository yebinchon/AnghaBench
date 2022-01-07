
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct class {int dummy; } ;
struct TYPE_3__ {struct TYPE_3__* revoked_ksv_list; } ;


 int kfree (TYPE_1__*) ;
 TYPE_1__* srm_data ;

void drm_teardown_hdcp_srm(struct class *drm_class)
{
 if (srm_data) {
  kfree(srm_data->revoked_ksv_list);
  kfree(srm_data);
 }
}
