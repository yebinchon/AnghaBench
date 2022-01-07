
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct ak8974 {int map; } ;
typedef int __le16 ;


 int le16_to_cpu (int ) ;
 int regmap_bulk_read (int ,int ,int *,int) ;

__attribute__((used)) static int ak8974_get_u16_val(struct ak8974 *ak8974, u8 reg, u16 *val)
{
 int ret;
 __le16 bulk;

 ret = regmap_bulk_read(ak8974->map, reg, &bulk, 2);
 if (ret)
  return ret;
 *val = le16_to_cpu(bulk);

 return 0;
}
