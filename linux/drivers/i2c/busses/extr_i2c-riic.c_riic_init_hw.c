
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int parent; } ;
struct TYPE_3__ {TYPE_2__ dev; } ;
struct riic_dev {TYPE_1__ adapter; scalar_t__ base; int clk; } ;
struct i2c_timings {int bus_freq_hz; int scl_fall_ns; int scl_rise_ns; } ;


 int DIV_ROUND_UP (unsigned long,unsigned long) ;
 int EINVAL ;
 int ICBR_RESERVED ;
 int ICCR1_ICE ;
 int ICCR1_IICRST ;
 int ICCR1_SOWP ;
 int ICMR1_CKS (int) ;
 int ICMR3_ACKWP ;
 int ICMR3_RDRFS ;
 scalar_t__ RIIC_ICBRH ;
 scalar_t__ RIIC_ICBRL ;
 scalar_t__ RIIC_ICCR1 ;
 scalar_t__ RIIC_ICMR1 ;
 scalar_t__ RIIC_ICMR3 ;
 scalar_t__ RIIC_ICSER ;
 unsigned long clk_get_rate (int ) ;
 int dev_err (TYPE_2__*,char*,unsigned long) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_put (int ) ;
 int pr_debug (char*,unsigned long,int,int,int,int,int,int) ;
 int riic_clear_set_bit (struct riic_dev*,int,int ,scalar_t__) ;
 int writeb (int,scalar_t__) ;

__attribute__((used)) static int riic_init_hw(struct riic_dev *riic, struct i2c_timings *t)
{
 int ret = 0;
 unsigned long rate;
 int total_ticks, cks, brl, brh;

 pm_runtime_get_sync(riic->adapter.dev.parent);

 if (t->bus_freq_hz > 400000) {
  dev_err(&riic->adapter.dev,
   "unsupported bus speed (%dHz). 400000 max\n",
   t->bus_freq_hz);
  ret = -EINVAL;
  goto out;
 }

 rate = clk_get_rate(riic->clk);
 total_ticks = DIV_ROUND_UP(rate, t->bus_freq_hz);

 for (cks = 0; cks < 7; cks++) {




  brl = ((total_ticks * 6) / 10);
  if (brl <= (0x1F + 3))
   break;

  total_ticks /= 2;
  rate /= 2;
 }

 if (brl > (0x1F + 3)) {
  dev_err(&riic->adapter.dev, "invalid speed (%lu). Too slow.\n",
   (unsigned long)t->bus_freq_hz);
  ret = -EINVAL;
  goto out;
 }

 brh = total_ticks - brl;


 if (cks == 0) {
  brl -= 4;
  brh -= 4;
 } else {
  brl -= 3;
  brh -= 3;
 }





 brl -= t->scl_fall_ns / (1000000000 / rate);
 brh -= t->scl_rise_ns / (1000000000 / rate);


 if (brl < 1)
  brl = 1;
 if (brh < 1)
  brh = 1;

 pr_debug("i2c-riic: freq=%lu, duty=%d, fall=%lu, rise=%lu, cks=%d, brl=%d, brh=%d\n",
   rate / total_ticks, ((brl + 3) * 100) / (brl + brh + 6),
   t->scl_fall_ns / (1000000000 / rate),
   t->scl_rise_ns / (1000000000 / rate), cks, brl, brh);


 writeb(ICCR1_IICRST | ICCR1_SOWP, riic->base + RIIC_ICCR1);
 riic_clear_set_bit(riic, 0, ICCR1_ICE, RIIC_ICCR1);

 writeb(ICMR1_CKS(cks), riic->base + RIIC_ICMR1);
 writeb(brh | ICBR_RESERVED, riic->base + RIIC_ICBRH);
 writeb(brl | ICBR_RESERVED, riic->base + RIIC_ICBRL);

 writeb(0, riic->base + RIIC_ICSER);
 writeb(ICMR3_ACKWP | ICMR3_RDRFS, riic->base + RIIC_ICMR3);

 riic_clear_set_bit(riic, ICCR1_IICRST, 0, RIIC_ICCR1);

out:
 pm_runtime_put(riic->adapter.dev.parent);
 return ret;
}
