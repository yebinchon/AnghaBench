
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct ak8974 {int map; } ;
typedef int __le16 ;


 int cpu_to_le16 (int ) ;
 int regmap_bulk_write (int ,int ,int *,int) ;

__attribute__((used)) static int ak8974_set_u16_val(struct ak8974 *ak8974, u8 reg, u16 val)
{
 __le16 bulk = cpu_to_le16(val);

 return regmap_bulk_write(ak8974->map, reg, &bulk, 2);
}
