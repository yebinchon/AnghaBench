
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lima_device {scalar_t__ regulator; } ;


 int regulator_disable (scalar_t__) ;

__attribute__((used)) static void lima_regulator_fini(struct lima_device *dev)
{
 if (dev->regulator)
  regulator_disable(dev->regulator);
}
