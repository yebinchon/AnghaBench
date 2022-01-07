
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct regmap {int dummy; } ;


 int LOCHNAGAR2_IMON_CH_SEL_SHIFT ;
 int LOCHNAGAR2_IMON_CTRL4 ;
 int LOCHNAGAR2_IMON_DATA1 ;
 int LOCHNAGAR2_IMON_DATA2 ;
 unsigned int LOCHNAGAR2_IMON_DATA_RDY_MASK ;
 int LOCHNAGAR2_IMON_DATA_REQ_MASK ;
 int regmap_read (struct regmap*,int ,unsigned int*) ;
 int regmap_read_poll_timeout (struct regmap*,int ,unsigned int,unsigned int,int,int) ;
 int regmap_write (struct regmap*,int ,int) ;

__attribute__((used)) static int request_data(struct regmap *regmap, int chan, u32 *data)
{
 unsigned int val;
 int ret;

 ret = regmap_write(regmap, LOCHNAGAR2_IMON_CTRL4,
      LOCHNAGAR2_IMON_DATA_REQ_MASK |
      chan << LOCHNAGAR2_IMON_CH_SEL_SHIFT);
 if (ret < 0)
  return ret;

 ret = regmap_read_poll_timeout(regmap, LOCHNAGAR2_IMON_CTRL4, val,
     val & LOCHNAGAR2_IMON_DATA_RDY_MASK,
     1000, 10000);
 if (ret < 0)
  return ret;

 ret = regmap_read(regmap, LOCHNAGAR2_IMON_DATA1, &val);
 if (ret < 0)
  return ret;

 *data = val << 16;

 ret = regmap_read(regmap, LOCHNAGAR2_IMON_DATA2, &val);
 if (ret < 0)
  return ret;

 *data |= val;

 return regmap_write(regmap, LOCHNAGAR2_IMON_CTRL4, 0);
}
