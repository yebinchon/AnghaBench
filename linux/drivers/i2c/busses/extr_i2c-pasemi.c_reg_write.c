
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pasemi_smbus {scalar_t__ base; TYPE_1__* dev; } ;
struct TYPE_2__ {int dev; } ;


 int dev_dbg (int *,char*,scalar_t__,int) ;
 int outl (int,scalar_t__) ;

__attribute__((used)) static inline void reg_write(struct pasemi_smbus *smbus, int reg, int val)
{
 dev_dbg(&smbus->dev->dev, "smbus write reg %lx val %08x\n",
  smbus->base + reg, val);
 outl(val, smbus->base + reg);
}
