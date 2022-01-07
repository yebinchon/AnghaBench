
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpr0521_data {TYPE_1__* client; int regmap; } ;
struct TYPE_2__ {int dev; } ;


 int EBUSY ;
 int RPR0521_INTERRUPT_INT_REASSERT_DISABLE ;
 int RPR0521_INTERRUPT_INT_TRIG_ALS_DISABLE ;
 int RPR0521_INTERRUPT_INT_TRIG_PS_ENABLE ;
 int RPR0521_PXS_PERSISTENCE_DRDY ;
 int RPR0521_PXS_PERSISTENCE_MASK ;
 int RPR0521_REG_INTERRUPT ;
 int RPR0521_REG_PXS_CTRL ;
 int dev_err (int *,char*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static int rpr0521_write_int_enable(struct rpr0521_data *data)
{
 int err;


 err = regmap_update_bits(data->regmap, RPR0521_REG_PXS_CTRL,
  RPR0521_PXS_PERSISTENCE_MASK,
  RPR0521_PXS_PERSISTENCE_DRDY);
 if (err) {
  dev_err(&data->client->dev, "PS control reg write fail.\n");
  return -EBUSY;
  }


 err = regmap_write(data->regmap, RPR0521_REG_INTERRUPT,
  RPR0521_INTERRUPT_INT_REASSERT_DISABLE |
  RPR0521_INTERRUPT_INT_TRIG_ALS_DISABLE |
  RPR0521_INTERRUPT_INT_TRIG_PS_ENABLE
  );
 if (err) {
  dev_err(&data->client->dev, "Interrupt setup write fail.\n");
  return -EBUSY;
  }

 return 0;
}
