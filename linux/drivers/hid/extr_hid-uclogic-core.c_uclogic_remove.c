
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uclogic_drvdata {int params; int desc_ptr; int inrange_timer; } ;
struct hid_device {int dummy; } ;


 int del_timer_sync (int *) ;
 struct uclogic_drvdata* hid_get_drvdata (struct hid_device*) ;
 int hid_hw_stop (struct hid_device*) ;
 int kfree (int ) ;
 int uclogic_params_cleanup (int *) ;

__attribute__((used)) static void uclogic_remove(struct hid_device *hdev)
{
 struct uclogic_drvdata *drvdata = hid_get_drvdata(hdev);

 del_timer_sync(&drvdata->inrange_timer);
 hid_hw_stop(hdev);
 kfree(drvdata->desc_ptr);
 uclogic_params_cleanup(&drvdata->params);
}
