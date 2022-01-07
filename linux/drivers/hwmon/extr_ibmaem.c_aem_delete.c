
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int user; } ;
struct aem_data {int id; int pdev; TYPE_1__ ipmi; int hwmon_dev; struct aem_data* rs_resp; int list; } ;


 int aem_ida ;
 int aem_remove_sensors (struct aem_data*) ;
 int hwmon_device_unregister (int ) ;
 int ida_simple_remove (int *,int ) ;
 int ipmi_destroy_user (int ) ;
 int kfree (struct aem_data*) ;
 int list_del (int *) ;
 int platform_device_unregister (int ) ;
 int platform_set_drvdata (int ,int *) ;

__attribute__((used)) static void aem_delete(struct aem_data *data)
{
 list_del(&data->list);
 aem_remove_sensors(data);
 kfree(data->rs_resp);
 hwmon_device_unregister(data->hwmon_dev);
 ipmi_destroy_user(data->ipmi.user);
 platform_set_drvdata(data->pdev, ((void*)0));
 platform_device_unregister(data->pdev);
 ida_simple_remove(&aem_ida, data->id);
 kfree(data);
}
