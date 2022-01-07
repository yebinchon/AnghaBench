
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct kone_mouse_event {int tilt; } ;
struct TYPE_2__ {int tilt; } ;
struct kone_device {scalar_t__ roccat_claimed; TYPE_1__ last_mouse_event; } ;
struct hid_report {int dummy; } ;
struct hid_device {int dummy; } ;


 struct kone_device* hid_get_drvdata (struct hid_device*) ;
 int kone_keep_values_up_to_date (struct kone_device*,struct kone_mouse_event*) ;
 int kone_report_to_chrdev (struct kone_device*,struct kone_mouse_event*) ;
 scalar_t__ memcmp (int *,int *,int) ;
 int memcpy (TYPE_1__*,struct kone_mouse_event*,int) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static int kone_raw_event(struct hid_device *hdev, struct hid_report *report,
  u8 *data, int size)
{
 struct kone_device *kone = hid_get_drvdata(hdev);
 struct kone_mouse_event *event = (struct kone_mouse_event *)data;


 if (size != sizeof(struct kone_mouse_event))
  return 0;

 if (kone == ((void*)0))
  return 0;






 if (memcmp(&kone->last_mouse_event.tilt, &event->tilt, 5))
  memcpy(&kone->last_mouse_event, event,
    sizeof(struct kone_mouse_event));
 else
  memset(&event->tilt, 0, 5);

 kone_keep_values_up_to_date(kone, event);

 if (kone->roccat_claimed)
  kone_report_to_chrdev(kone, event);

 return 0;
}
