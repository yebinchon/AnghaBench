
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bma150_data {scalar_t__ mode; TYPE_1__* client; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ BMA150_MODE_SLEEP ;
 int bma150_set_mode (struct bma150_data*,scalar_t__) ;
 int pm_runtime_put_sync (int *) ;

__attribute__((used)) static void bma150_close(struct bma150_data *bma150)
{
 pm_runtime_put_sync(&bma150->client->dev);

 if (bma150->mode != BMA150_MODE_SLEEP)
  bma150_set_mode(bma150, BMA150_MODE_SLEEP);
}
