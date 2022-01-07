
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct seq_file {int dummy; } ;
struct gpio_chip {int dummy; } ;
struct adnp {int reg_shift; int i2c_lock; } ;


 int BIT (unsigned int) ;
 scalar_t__ GPIO_DDR (struct adnp*) ;
 scalar_t__ GPIO_IER (struct adnp*) ;
 scalar_t__ GPIO_ISR (struct adnp*) ;
 scalar_t__ GPIO_PLR (struct adnp*) ;
 int adnp_read (struct adnp*,scalar_t__,int*) ;
 struct adnp* gpiochip_get_data (struct gpio_chip*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int seq_printf (struct seq_file*,char*,unsigned int,char const*,char const*,char const*,char const*) ;

__attribute__((used)) static void adnp_gpio_dbg_show(struct seq_file *s, struct gpio_chip *chip)
{
 struct adnp *adnp = gpiochip_get_data(chip);
 unsigned int num_regs = 1 << adnp->reg_shift, i, j;
 int err;

 for (i = 0; i < num_regs; i++) {
  u8 ddr, plr, ier, isr;

  mutex_lock(&adnp->i2c_lock);

  err = adnp_read(adnp, GPIO_DDR(adnp) + i, &ddr);
  if (err < 0)
   goto unlock;

  err = adnp_read(adnp, GPIO_PLR(adnp) + i, &plr);
  if (err < 0)
   goto unlock;

  err = adnp_read(adnp, GPIO_IER(adnp) + i, &ier);
  if (err < 0)
   goto unlock;

  err = adnp_read(adnp, GPIO_ISR(adnp) + i, &isr);
  if (err < 0)
   goto unlock;

  mutex_unlock(&adnp->i2c_lock);

  for (j = 0; j < 8; j++) {
   unsigned int bit = (i << adnp->reg_shift) + j;
   const char *direction = "input ";
   const char *level = "low ";
   const char *interrupt = "disabled";
   const char *pending = "";

   if (ddr & BIT(j))
    direction = "output";

   if (plr & BIT(j))
    level = "high";

   if (ier & BIT(j))
    interrupt = "enabled ";

   if (isr & BIT(j))
    pending = "pending";

   seq_printf(s, "%2u: %s %s IRQ %s %s\n", bit,
       direction, level, interrupt, pending);
  }
 }

 return;

unlock:
 mutex_unlock(&adnp->i2c_lock);
}
