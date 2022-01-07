
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max30100_data {int regmap; } ;


 int MAX30100_REG_FIFO_DATA_ENTRY_COUNT ;
 int MAX30100_REG_INT_STATUS ;
 unsigned int MAX30100_REG_INT_STATUS_FIFO_RDY ;
 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static inline int max30100_fifo_count(struct max30100_data *data)
{
 unsigned int val;
 int ret;

 ret = regmap_read(data->regmap, MAX30100_REG_INT_STATUS, &val);
 if (ret)
  return ret;


 if (val & MAX30100_REG_INT_STATUS_FIFO_RDY)
  return MAX30100_REG_FIFO_DATA_ENTRY_COUNT - 1;

 return 0;
}
