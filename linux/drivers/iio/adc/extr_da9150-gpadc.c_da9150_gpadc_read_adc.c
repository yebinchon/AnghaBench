
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct da9150_gpadc {int dev; int lock; int da9150; int complete; } ;


 int DA9150_GPADC_EN_MASK ;
 int DA9150_GPADC_MAN ;
 int DA9150_GPADC_MUX_SHIFT ;
 int DA9150_GPADC_RES_A ;
 int DA9150_GPADC_RES_L_BITS ;
 int DA9150_GPADC_RES_L_MASK ;
 int DA9150_GPADC_RES_L_SHIFT ;
 int DA9150_GPADC_RUN_MASK ;
 int ETIMEDOUT ;
 int da9150_bulk_read (int ,int ,int,int*) ;
 int da9150_reg_write (int ,int ,int) ;
 int dev_err (int ,char*,int) ;
 int msecs_to_jiffies (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int try_wait_for_completion (int *) ;
 int wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int da9150_gpadc_read_adc(struct da9150_gpadc *gpadc, int hw_chan)
{
 u8 result_regs[2];
 int result;

 mutex_lock(&gpadc->lock);


 da9150_reg_write(gpadc->da9150, DA9150_GPADC_MAN,
    (DA9150_GPADC_EN_MASK |
     hw_chan << DA9150_GPADC_MUX_SHIFT));


 try_wait_for_completion(&gpadc->complete);


 wait_for_completion_timeout(&gpadc->complete, msecs_to_jiffies(5));


 da9150_bulk_read(gpadc->da9150, DA9150_GPADC_RES_A, 2, result_regs);

 mutex_unlock(&gpadc->lock);


 if (result_regs[1] & DA9150_GPADC_RUN_MASK) {
  dev_err(gpadc->dev, "Timeout on channel %d of GPADC\n",
   hw_chan);
  return -ETIMEDOUT;
 }


 result = (result_regs[1] & DA9150_GPADC_RES_L_MASK) >>
   DA9150_GPADC_RES_L_SHIFT;

 result |= result_regs[0] << DA9150_GPADC_RES_L_BITS;

 return result;
}
