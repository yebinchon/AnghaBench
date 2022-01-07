
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* read_byte ) (struct i2c_pca_pf_data*,int ) ;} ;
struct i2c_pca_pf_data {int wait; TYPE_1__ algo_data; } ;
typedef int irqreturn_t ;


 int I2C_PCA_CON ;
 int I2C_PCA_CON_SI ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int stub1 (struct i2c_pca_pf_data*,int ) ;
 int wake_up (int *) ;

__attribute__((used)) static irqreturn_t i2c_pca_pf_handler(int this_irq, void *dev_id)
{
 struct i2c_pca_pf_data *i2c = dev_id;

 if ((i2c->algo_data.read_byte(i2c, I2C_PCA_CON) & I2C_PCA_CON_SI) == 0)
  return IRQ_NONE;

 wake_up(&i2c->wait);

 return IRQ_HANDLED;
}
