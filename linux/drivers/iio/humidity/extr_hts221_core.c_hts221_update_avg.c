
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct hts221_hw {TYPE_1__* sensors; int regmap; } ;
struct hts221_avg {scalar_t__* avg_avl; int mask; int addr; } ;
typedef enum hts221_sensor_type { ____Placeholder_hts221_sensor_type } hts221_sensor_type ;
struct TYPE_2__ {int cur_avg_idx; } ;


 int EINVAL ;
 int HTS221_AVG_DEPTH ;
 int __ffs (int) ;
 struct hts221_avg* hts221_avg_list ;
 int regmap_update_bits (int ,int ,int,int) ;

__attribute__((used)) static int hts221_update_avg(struct hts221_hw *hw,
        enum hts221_sensor_type type,
        u16 val)
{
 const struct hts221_avg *avg = &hts221_avg_list[type];
 int i, err, data;

 for (i = 0; i < HTS221_AVG_DEPTH; i++)
  if (avg->avg_avl[i] == val)
   break;

 if (i == HTS221_AVG_DEPTH)
  return -EINVAL;

 data = ((i << __ffs(avg->mask)) & avg->mask);
 err = regmap_update_bits(hw->regmap, avg->addr,
     avg->mask, data);
 if (err < 0)
  return err;

 hw->sensors[type].cur_avg_idx = i;

 return 0;
}
