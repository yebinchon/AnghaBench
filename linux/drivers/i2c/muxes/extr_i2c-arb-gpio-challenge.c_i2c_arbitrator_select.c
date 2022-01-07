
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i2c_mux_core {int dev; } ;
struct i2c_arbitrator_data {int wait_free_us; int wait_retry_us; int slew_delay_us; int our_gpio; int their_gpio; } ;


 int EBUSY ;
 int dev_err (int ,char*) ;
 int gpiod_get_value (int ) ;
 int gpiod_set_value (int ,int) ;
 struct i2c_arbitrator_data* i2c_mux_priv (struct i2c_mux_core*) ;
 int jiffies ;
 scalar_t__ time_before (int,unsigned long) ;
 int udelay (int ) ;
 int usecs_to_jiffies (int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int i2c_arbitrator_select(struct i2c_mux_core *muxc, u32 chan)
{
 const struct i2c_arbitrator_data *arb = i2c_mux_priv(muxc);
 unsigned long stop_retry, stop_time;


 stop_time = jiffies + usecs_to_jiffies(arb->wait_free_us) + 1;
 do {

  gpiod_set_value(arb->our_gpio, 1);
  udelay(arb->slew_delay_us);


  stop_retry = jiffies + usecs_to_jiffies(arb->wait_retry_us) + 1;
  while (time_before(jiffies, stop_retry)) {
   int gpio_val = gpiod_get_value(arb->their_gpio);

   if (!gpio_val) {

    return 0;
   }

   usleep_range(50, 200);
  }


  gpiod_set_value(arb->our_gpio, 0);

  usleep_range(arb->wait_retry_us, arb->wait_retry_us * 2);
 } while (time_before(jiffies, stop_time));


 gpiod_set_value(arb->our_gpio, 0);
 udelay(arb->slew_delay_us);
 dev_err(muxc->dev, "Could not claim bus, timeout\n");
 return -EBUSY;
}
