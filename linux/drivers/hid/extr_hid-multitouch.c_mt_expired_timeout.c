
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct mt_device {int mt_io_flags; struct hid_device* hdev; } ;
struct hid_device {int dummy; } ;


 int MT_IO_FLAGS_PENDING_SLOTS ;
 int MT_IO_FLAGS_RUNNING ;
 int clear_bit (int ,int *) ;
 struct mt_device* from_timer (int ,struct timer_list*,int ) ;
 int mt_release_contacts (struct hid_device*) ;
 int release_timer ;
 struct mt_device* td ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void mt_expired_timeout(struct timer_list *t)
{
 struct mt_device *td = from_timer(td, t, release_timer);
 struct hid_device *hdev = td->hdev;





 if (test_and_set_bit(MT_IO_FLAGS_RUNNING, &td->mt_io_flags))
  return;
 if (test_bit(MT_IO_FLAGS_PENDING_SLOTS, &td->mt_io_flags))
  mt_release_contacts(hdev);
 clear_bit(MT_IO_FLAGS_RUNNING, &td->mt_io_flags);
}
