
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct adxl372_state {int regmap; } ;
typedef int regval ;
typedef int __be16 ;


 int be16_to_cpu (int ) ;
 int regmap_bulk_read (int ,int ,int *,int) ;

__attribute__((used)) static int adxl372_read_axis(struct adxl372_state *st, u8 addr)
{
 __be16 regval;
 int ret;

 ret = regmap_bulk_read(st->regmap, addr, &regval, sizeof(regval));
 if (ret < 0)
  return ret;

 return be16_to_cpu(regval);
}
