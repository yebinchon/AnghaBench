
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stmfts_data {int mutex; TYPE_1__* client; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int dev; } ;


 int IRQ_HANDLED ;
 int dev_err (int *,char*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stmfts_parse_events (struct stmfts_data*) ;
 int stmfts_read_events (struct stmfts_data*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static irqreturn_t stmfts_irq_handler(int irq, void *dev)
{
 struct stmfts_data *sdata = dev;
 int err;

 mutex_lock(&sdata->mutex);

 err = stmfts_read_events(sdata);
 if (unlikely(err))
  dev_err(&sdata->client->dev,
   "failed to read events: %d\n", err);
 else
  stmfts_parse_events(sdata);

 mutex_unlock(&sdata->mutex);
 return IRQ_HANDLED;
}
