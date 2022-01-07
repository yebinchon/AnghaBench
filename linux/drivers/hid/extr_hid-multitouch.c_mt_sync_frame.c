
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt_device {int mt_io_flags; } ;
struct mt_application {int quirks; scalar_t__ left_button_state; scalar_t__ num_received; scalar_t__ timestamp; } ;
struct input_dev {int dummy; } ;


 int BTN_LEFT ;
 int EV_KEY ;
 int EV_MSC ;
 int MSC_TIMESTAMP ;
 int MT_IO_FLAGS_ACTIVE_SLOTS ;
 int MT_IO_FLAGS_PENDING_SLOTS ;
 int MT_QUIRK_WIN8_PTP_BUTTONS ;
 int clear_bit (int ,int *) ;
 int input_event (struct input_dev*,int ,int ,scalar_t__) ;
 int input_mt_sync_frame (struct input_dev*) ;
 int input_sync (struct input_dev*) ;
 int mt_release_pending_palms (struct mt_device*,struct mt_application*,struct input_dev*) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void mt_sync_frame(struct mt_device *td, struct mt_application *app,
     struct input_dev *input)
{
 if (app->quirks & MT_QUIRK_WIN8_PTP_BUTTONS)
  input_event(input, EV_KEY, BTN_LEFT, app->left_button_state);

 input_mt_sync_frame(input);
 input_event(input, EV_MSC, MSC_TIMESTAMP, app->timestamp);
 input_sync(input);

 mt_release_pending_palms(td, app, input);

 app->num_received = 0;
 app->left_button_state = 0;

 if (test_bit(MT_IO_FLAGS_ACTIVE_SLOTS, &td->mt_io_flags))
  set_bit(MT_IO_FLAGS_PENDING_SLOTS, &td->mt_io_flags);
 else
  clear_bit(MT_IO_FLAGS_PENDING_SLOTS, &td->mt_io_flags);
 clear_bit(MT_IO_FLAGS_ACTIVE_SLOTS, &td->mt_io_flags);
}
