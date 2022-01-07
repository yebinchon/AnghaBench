
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpr0521_data {int regmap; } ;


 int RPR0521_INTERRUPT_ALS_INT_STATUS_MASK ;
 int RPR0521_INTERRUPT_PS_INT_STATUS_MASK ;
 int RPR0521_REG_INTERRUPT ;
 int regmap_read (int ,int ,int*) ;

__attribute__((used)) static inline bool rpr0521_is_triggered(struct rpr0521_data *data)
{
 int ret;
 int reg;

 ret = regmap_read(data->regmap, RPR0521_REG_INTERRUPT, &reg);
 if (ret < 0)
  return 0;
 if (reg &
     (RPR0521_INTERRUPT_ALS_INT_STATUS_MASK |
     RPR0521_INTERRUPT_PS_INT_STATUS_MASK))
  return 1;
 else
  return 0;
}
