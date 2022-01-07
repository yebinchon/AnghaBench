
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int parent; } ;
struct input_dev {TYPE_1__ dev; } ;


 int pm_runtime_get (int ) ;

__attribute__((used)) static int cyttsp4_mt_open(struct input_dev *input)
{
 pm_runtime_get(input->dev.parent);
 return 0;
}
