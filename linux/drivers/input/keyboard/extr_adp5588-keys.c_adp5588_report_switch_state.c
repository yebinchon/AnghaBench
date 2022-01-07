
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct adp5588_kpad {int gpimapsize; int input; TYPE_1__* gpimap; TYPE_2__* client; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {unsigned short pin; int sw_evt; } ;


 int GPIO_DAT_STAT1 ;
 int GPIO_DAT_STAT2 ;
 int GPIO_DAT_STAT3 ;
 unsigned short GPI_PIN_COL_BASE ;
 unsigned short GPI_PIN_ROW_BASE ;
 unsigned short GPI_PIN_ROW_END ;
 int adp5588_read (TYPE_2__*,int ) ;
 int dev_err (int *,char*,unsigned short) ;
 int input_report_switch (int ,int ,int) ;
 int input_sync (int ) ;

__attribute__((used)) static void adp5588_report_switch_state(struct adp5588_kpad *kpad)
{
 int gpi_stat1 = adp5588_read(kpad->client, GPIO_DAT_STAT1);
 int gpi_stat2 = adp5588_read(kpad->client, GPIO_DAT_STAT2);
 int gpi_stat3 = adp5588_read(kpad->client, GPIO_DAT_STAT3);
 int gpi_stat_tmp, pin_loc;
 int i;

 for (i = 0; i < kpad->gpimapsize; i++) {
  unsigned short pin = kpad->gpimap[i].pin;

  if (pin <= GPI_PIN_ROW_END) {
   gpi_stat_tmp = gpi_stat1;
   pin_loc = pin - GPI_PIN_ROW_BASE;
  } else if ((pin - GPI_PIN_COL_BASE) < 8) {
   gpi_stat_tmp = gpi_stat2;
   pin_loc = pin - GPI_PIN_COL_BASE;
  } else {
   gpi_stat_tmp = gpi_stat3;
   pin_loc = pin - GPI_PIN_COL_BASE - 8;
  }

  if (gpi_stat_tmp < 0) {
   dev_err(&kpad->client->dev,
    "Can't read GPIO_DAT_STAT switch %d default to OFF\n",
    pin);
   gpi_stat_tmp = 0;
  }

  input_report_switch(kpad->input,
        kpad->gpimap[i].sw_evt,
        !(gpi_stat_tmp & (1 << pin_loc)));
 }

 input_sync(kpad->input);
}
