
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vcnl4035_data {int regmap; } ;


 int VCNL4035_INT_ALS_IF_H_MASK ;
 int VCNL4035_INT_ALS_IF_L_MASK ;
 int VCNL4035_INT_FLAG ;
 int regmap_read (int ,int ,int*) ;

__attribute__((used)) static inline bool vcnl4035_is_triggered(struct vcnl4035_data *data)
{
 int ret;
 int reg;

 ret = regmap_read(data->regmap, VCNL4035_INT_FLAG, &reg);
 if (ret < 0)
  return 0;

 return !!(reg &
  (VCNL4035_INT_ALS_IF_H_MASK | VCNL4035_INT_ALS_IF_L_MASK));
}
