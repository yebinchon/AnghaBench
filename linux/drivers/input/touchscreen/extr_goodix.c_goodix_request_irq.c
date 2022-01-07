
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct goodix_ts_data {TYPE_1__* client; int irq_flags; } ;
struct TYPE_2__ {int name; int irq; int dev; } ;


 int devm_request_threaded_irq (int *,int ,int *,int ,int ,int ,struct goodix_ts_data*) ;
 int goodix_ts_irq_handler ;

__attribute__((used)) static int goodix_request_irq(struct goodix_ts_data *ts)
{
 return devm_request_threaded_irq(&ts->client->dev, ts->client->irq,
      ((void*)0), goodix_ts_irq_handler,
      ts->irq_flags, ts->client->name, ts);
}
