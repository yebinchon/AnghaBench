
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ad7879 {int dev; int regmap; } ;


 int dev_err (int ,char*,int ,int) ;
 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static int ad7879_read(struct ad7879 *ts, u8 reg)
{
 unsigned int val;
 int error;

 error = regmap_read(ts->regmap, reg, &val);
 if (error) {
  dev_err(ts->dev, "failed to read register %#02x: %d\n",
   reg, error);
  return error;
 }

 return val;
}
