
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct ad7879 {int dev; int regmap; } ;


 int dev_err (int ,char*,int ,int ,int) ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static int ad7879_write(struct ad7879 *ts, u8 reg, u16 val)
{
 int error;

 error = regmap_write(ts->regmap, reg, val);
 if (error) {
  dev_err(ts->dev,
   "failed to write %#04x to register %#02x: %d\n",
   val, reg, error);
  return error;
 }

 return 0;
}
