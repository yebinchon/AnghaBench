
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct lm3533_als {TYPE_1__* pdev; int lm3533; } ;
struct TYPE_2__ {int dev; } ;


 int LM3533_ALS_ENABLE_MASK ;
 int LM3533_REG_ALS_CONF ;
 int dev_err (int *,char*) ;
 int lm3533_update (int ,int ,int ,int ) ;

__attribute__((used)) static int lm3533_als_disable(struct lm3533_als *als)
{
 u8 mask = LM3533_ALS_ENABLE_MASK;
 int ret;

 ret = lm3533_update(als->lm3533, LM3533_REG_ALS_CONF, 0, mask);
 if (ret)
  dev_err(&als->pdev->dev, "failed to disable ALS\n");

 return ret;
}
