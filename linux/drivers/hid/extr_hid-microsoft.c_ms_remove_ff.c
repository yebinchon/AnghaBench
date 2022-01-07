
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ms_data {int quirks; int ff_worker; } ;
struct hid_device {int dummy; } ;


 int MS_QUIRK_FF ;
 int cancel_work_sync (int *) ;
 struct ms_data* hid_get_drvdata (struct hid_device*) ;

__attribute__((used)) static void ms_remove_ff(struct hid_device *hdev)
{
 struct ms_data *ms = hid_get_drvdata(hdev);

 if (!(ms->quirks & MS_QUIRK_FF))
  return;

 cancel_work_sync(&ms->ff_worker);
}
