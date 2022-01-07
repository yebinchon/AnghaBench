
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct goodix_ts_data {TYPE_1__* client; } ;
struct TYPE_2__ {int irq; int dev; } ;


 int devm_free_irq (int *,int ,struct goodix_ts_data*) ;

__attribute__((used)) static void goodix_free_irq(struct goodix_ts_data *ts)
{
 devm_free_irq(&ts->client->dev, ts->client->irq, ts);
}
