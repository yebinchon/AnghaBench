
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;
struct input_polled_dev {struct input_dev* input; struct buttons_dev* private; } ;
struct input_dev {int dummy; } ;
struct buttons_dev {scalar_t__* count; int * keymap; } ;


 int ARRAY_SIZE (int *) ;
 scalar_t__ BUTTONS_COUNT_THRESHOLD ;
 int EV_MSC ;
 int MSC_SCAN ;
 unsigned int button_status () ;
 int input_event (struct input_dev*,int ,int ,int) ;
 int input_report_key (struct input_dev*,int ,int) ;
 int input_sync (struct input_dev*) ;

__attribute__((used)) static void handle_buttons(struct input_polled_dev *dev)
{
 struct buttons_dev *bdev = dev->private;
 struct input_dev *input = dev->input;
 u8 status;
 int i;

 status = button_status();

 for (i = 0; i < ARRAY_SIZE(bdev->keymap); i++) {
  if (status & (1U << i)) {
   if (++bdev->count[i] == BUTTONS_COUNT_THRESHOLD) {
    input_event(input, EV_MSC, MSC_SCAN, i);
    input_report_key(input, bdev->keymap[i], 1);
    input_sync(input);
   }
  } else {
   if (bdev->count[i] >= BUTTONS_COUNT_THRESHOLD) {
    input_event(input, EV_MSC, MSC_SCAN, i);
    input_report_key(input, bdev->keymap[i], 0);
    input_sync(input);
   }
   bdev->count[i] = 0;
  }
 }
}
