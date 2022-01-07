
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt8973a_muic_info {int irq_data; int irq; } ;
struct i2c_client {int dummy; } ;


 struct rt8973a_muic_info* i2c_get_clientdata (struct i2c_client*) ;
 int regmap_del_irq_chip (int ,int ) ;

__attribute__((used)) static int rt8973a_muic_i2c_remove(struct i2c_client *i2c)
{
 struct rt8973a_muic_info *info = i2c_get_clientdata(i2c);

 regmap_del_irq_chip(info->irq, info->irq_data);

 return 0;
}
