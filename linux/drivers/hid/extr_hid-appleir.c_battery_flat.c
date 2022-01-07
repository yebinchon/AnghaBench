
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct appleir {TYPE_1__* input_dev; } ;
struct TYPE_2__ {int dev; } ;


 int dev_err (int *,char*) ;

__attribute__((used)) static void battery_flat(struct appleir *appleir)
{
 dev_err(&appleir->input_dev->dev, "possible flat battery?\n");
}
