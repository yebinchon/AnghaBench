
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kxtj9_data {TYPE_1__* client; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int dev; } ;


 int INT_REL ;
 int IRQ_HANDLED ;
 int dev_err (int *,char*,int) ;
 int i2c_smbus_read_byte_data (TYPE_1__*,int ) ;
 int kxtj9_report_acceleration_data (struct kxtj9_data*) ;

__attribute__((used)) static irqreturn_t kxtj9_isr(int irq, void *dev)
{
 struct kxtj9_data *tj9 = dev;
 int err;


 kxtj9_report_acceleration_data(tj9);

 err = i2c_smbus_read_byte_data(tj9->client, INT_REL);
 if (err < 0)
  dev_err(&tj9->client->dev,
   "error clearing interrupt status: %d\n", err);

 return IRQ_HANDLED;
}
