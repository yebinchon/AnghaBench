
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lm3692x_led {TYPE_1__* client; int regmap; } ;
struct TYPE_2__ {int dev; } ;


 int LM3692X_FAULT_FLAGS ;
 int dev_err (int *,char*,unsigned int) ;
 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static int lm3692x_fault_check(struct lm3692x_led *led)
{
 int ret;
 unsigned int read_buf;

 ret = regmap_read(led->regmap, LM3692X_FAULT_FLAGS, &read_buf);
 if (ret)
  return ret;

 if (read_buf)
  dev_err(&led->client->dev, "Detected a fault 0x%X\n", read_buf);




 regmap_read(led->regmap, LM3692X_FAULT_FLAGS, &read_buf);
 if (read_buf)
  dev_err(&led->client->dev, "Second read of fault flags 0x%X\n",
   read_buf);

 return read_buf;
}
