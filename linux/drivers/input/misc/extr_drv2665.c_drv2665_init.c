
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drv2665_data {TYPE_1__* client; int regmap; } ;
struct TYPE_2__ {int dev; } ;


 int ARRAY_SIZE (int ) ;
 int dev_err (int *,char*,int) ;
 int drv2665_init_regs ;
 int regmap_register_patch (int ,int ,int ) ;

__attribute__((used)) static int drv2665_init(struct drv2665_data *haptics)
{
 int error;

 error = regmap_register_patch(haptics->regmap,
          drv2665_init_regs,
          ARRAY_SIZE(drv2665_init_regs));
 if (error) {
  dev_err(&haptics->client->dev,
   "Failed to write init registers: %d\n",
   error);
  return error;
 }

 return 0;
}
