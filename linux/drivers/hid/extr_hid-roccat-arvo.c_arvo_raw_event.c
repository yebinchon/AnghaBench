
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hid_report {int dummy; } ;
struct hid_device {int dummy; } ;
struct arvo_device {scalar_t__ roccat_claimed; } ;


 int arvo_report_to_chrdev (struct arvo_device*,int *) ;
 struct arvo_device* hid_get_drvdata (struct hid_device*) ;

__attribute__((used)) static int arvo_raw_event(struct hid_device *hdev,
  struct hid_report *report, u8 *data, int size)
{
 struct arvo_device *arvo = hid_get_drvdata(hdev);

 if (size != 3)
  return 0;

 if (arvo && arvo->roccat_claimed)
  arvo_report_to_chrdev(arvo, data);

 return 0;
}
