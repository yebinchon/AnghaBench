
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct adp5589_kpad {int gpimapsize; int input; TYPE_2__* gpimap; TYPE_3__* client; TYPE_1__* var; int is_adp5585; } ;
struct TYPE_6__ {int dev; } ;
struct TYPE_5__ {unsigned short pin; int sw_evt; } ;
struct TYPE_4__ {unsigned short gpi_pin_row_end; unsigned short gpi_pin_row_base; unsigned short gpi_pin_col_base; int (* reg ) (int ) ;} ;


 int ADP5589_GPI_STATUS_A ;
 int ADP5589_GPI_STATUS_B ;
 int ADP5589_GPI_STATUS_C ;
 int adp5589_read (TYPE_3__*,int ) ;
 int dev_err (int *,char*,unsigned short) ;
 int input_report_switch (int ,int ,int) ;
 int input_sync (int ) ;
 int stub1 (int ) ;
 int stub2 (int ) ;

__attribute__((used)) static void adp5589_report_switch_state(struct adp5589_kpad *kpad)
{
 int gpi_stat_tmp, pin_loc;
 int i;
 int gpi_stat1 = adp5589_read(kpad->client,
         kpad->var->reg(ADP5589_GPI_STATUS_A));
 int gpi_stat2 = adp5589_read(kpad->client,
         kpad->var->reg(ADP5589_GPI_STATUS_B));
 int gpi_stat3 = !kpad->is_adp5585 ?
   adp5589_read(kpad->client, ADP5589_GPI_STATUS_C) : 0;

 for (i = 0; i < kpad->gpimapsize; i++) {
  unsigned short pin = kpad->gpimap[i].pin;

  if (pin <= kpad->var->gpi_pin_row_end) {
   gpi_stat_tmp = gpi_stat1;
   pin_loc = pin - kpad->var->gpi_pin_row_base;
  } else if ((pin - kpad->var->gpi_pin_col_base) < 8) {
   gpi_stat_tmp = gpi_stat2;
   pin_loc = pin - kpad->var->gpi_pin_col_base;
  } else {
   gpi_stat_tmp = gpi_stat3;
   pin_loc = pin - kpad->var->gpi_pin_col_base - 8;
  }

  if (gpi_stat_tmp < 0) {
   dev_err(&kpad->client->dev,
    "Can't read GPIO_DAT_STAT switch %d, default to OFF\n",
    pin);
   gpi_stat_tmp = 0;
  }

  input_report_switch(kpad->input,
        kpad->gpimap[i].sw_evt,
        !(gpi_stat_tmp & (1 << pin_loc)));
 }

 input_sync(kpad->input);
}
