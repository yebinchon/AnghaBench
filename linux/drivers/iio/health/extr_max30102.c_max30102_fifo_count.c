
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max30102_data {int regmap; } ;


 int MAX30102_REG_INT_STATUS ;
 unsigned int MAX30102_REG_INT_STATUS_FIFO_RDY ;
 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static inline int max30102_fifo_count(struct max30102_data *data)
{
 unsigned int val;
 int ret;

 ret = regmap_read(data->regmap, MAX30102_REG_INT_STATUS, &val);
 if (ret)
  return ret;


 if (val & MAX30102_REG_INT_STATUS_FIFO_RDY)
  return 1;

 return 0;
}
