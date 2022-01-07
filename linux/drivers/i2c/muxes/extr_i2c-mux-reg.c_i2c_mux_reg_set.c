
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int reg_size; int reg; int write_only; int little_endian; } ;
struct regmux {TYPE_1__ data; } ;


 int EINVAL ;
 int ioread16 (int ) ;
 int ioread32 (int ) ;
 int ioread8 (int ) ;
 int iowrite16 (unsigned int,int ) ;
 int iowrite16be (unsigned int,int ) ;
 int iowrite32 (unsigned int,int ) ;
 int iowrite32be (unsigned int,int ) ;
 int iowrite8 (unsigned int,int ) ;

__attribute__((used)) static int i2c_mux_reg_set(const struct regmux *mux, unsigned int chan_id)
{
 if (!mux->data.reg)
  return -EINVAL;







 switch (mux->data.reg_size) {
 case 4:
  if (mux->data.little_endian)
   iowrite32(chan_id, mux->data.reg);
  else
   iowrite32be(chan_id, mux->data.reg);
  if (!mux->data.write_only)
   ioread32(mux->data.reg);
  break;
 case 2:
  if (mux->data.little_endian)
   iowrite16(chan_id, mux->data.reg);
  else
   iowrite16be(chan_id, mux->data.reg);
  if (!mux->data.write_only)
   ioread16(mux->data.reg);
  break;
 case 1:
  iowrite8(chan_id, mux->data.reg);
  if (!mux->data.write_only)
   ioread8(mux->data.reg);
  break;
 }

 return 0;
}
