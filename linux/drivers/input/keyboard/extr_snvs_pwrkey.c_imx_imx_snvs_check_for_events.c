
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct timer_list {int dummy; } ;
struct pwrkey_drv_data {int keystate; int check_timer; struct input_dev* input; int keycode; int snvs; } ;
struct TYPE_2__ {int parent; } ;
struct input_dev {TYPE_1__ dev; } ;


 int EV_KEY ;
 int REPEAT_INTERVAL ;
 int SNVS_HPSR_BTN ;
 int SNVS_HPSR_REG ;
 int check_timer ;
 struct pwrkey_drv_data* from_timer (int ,struct timer_list*,int ) ;
 int input_event (struct input_dev*,int ,int ,int) ;
 int input_sync (struct input_dev*) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int ) ;
 struct pwrkey_drv_data* pdata ;
 int pm_relax (int ) ;
 int regmap_read (int ,int ,int*) ;

__attribute__((used)) static void imx_imx_snvs_check_for_events(struct timer_list *t)
{
 struct pwrkey_drv_data *pdata = from_timer(pdata, t, check_timer);
 struct input_dev *input = pdata->input;
 u32 state;

 regmap_read(pdata->snvs, SNVS_HPSR_REG, &state);
 state = state & SNVS_HPSR_BTN ? 1 : 0;


 if (state ^ pdata->keystate) {
  pdata->keystate = state;
  input_event(input, EV_KEY, pdata->keycode, state);
  input_sync(input);
  pm_relax(pdata->input->dev.parent);
 }


 if (state) {
  mod_timer(&pdata->check_timer,
     jiffies + msecs_to_jiffies(REPEAT_INTERVAL));
 }
}
