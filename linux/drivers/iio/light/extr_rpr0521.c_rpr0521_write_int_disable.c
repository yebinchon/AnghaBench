
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpr0521_data {int regmap; } ;


 int RPR0521_INTERRUPT_INT_TRIG_ALS_DISABLE ;
 int RPR0521_INTERRUPT_INT_TRIG_PS_DISABLE ;
 int RPR0521_REG_INTERRUPT ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static int rpr0521_write_int_disable(struct rpr0521_data *data)
{

 return regmap_write(data->regmap, RPR0521_REG_INTERRUPT,
    RPR0521_INTERRUPT_INT_TRIG_ALS_DISABLE |
    RPR0521_INTERRUPT_INT_TRIG_PS_DISABLE
    );
}
