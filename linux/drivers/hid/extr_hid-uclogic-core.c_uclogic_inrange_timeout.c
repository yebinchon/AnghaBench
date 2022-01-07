
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uclogic_drvdata {struct input_dev* pen_input; } ;
struct timer_list {int dummy; } ;
struct input_dev {int key; } ;


 int ABS_PRESSURE ;
 int BTN_TOOL_PEN ;
 int BTN_TOUCH ;
 int EV_MSC ;
 int MSC_SCAN ;
 struct uclogic_drvdata* drvdata ;
 struct uclogic_drvdata* from_timer (int ,struct timer_list*,int ) ;
 int input_event (struct input_dev*,int ,int ,int) ;
 int input_report_abs (struct input_dev*,int ,int ) ;
 int input_report_key (struct input_dev*,int ,int ) ;
 int input_sync (struct input_dev*) ;
 int inrange_timer ;
 scalar_t__ test_bit (int ,int ) ;

__attribute__((used)) static void uclogic_inrange_timeout(struct timer_list *t)
{
 struct uclogic_drvdata *drvdata = from_timer(drvdata, t,
       inrange_timer);
 struct input_dev *input = drvdata->pen_input;

 if (input == ((void*)0))
  return;
 input_report_abs(input, ABS_PRESSURE, 0);

 if (test_bit(BTN_TOUCH, input->key)) {
  input_event(input, EV_MSC, MSC_SCAN,

    0xd0042);
  input_report_key(input, BTN_TOUCH, 0);
 }
 input_report_key(input, BTN_TOOL_PEN, 0);
 input_sync(input);
}
