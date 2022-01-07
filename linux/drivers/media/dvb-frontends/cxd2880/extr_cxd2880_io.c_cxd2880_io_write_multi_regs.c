
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cxd2880_reg_value {int value; int addr; } ;
struct cxd2880_io {int (* write_reg ) (struct cxd2880_io*,int,int ,int ) ;} ;
typedef enum cxd2880_io_tgt { ____Placeholder_cxd2880_io_tgt } cxd2880_io_tgt ;


 int EINVAL ;
 int stub1 (struct cxd2880_io*,int,int ,int ) ;

int cxd2880_io_write_multi_regs(struct cxd2880_io *io,
        enum cxd2880_io_tgt tgt,
        const struct cxd2880_reg_value reg_value[],
        u8 size)
{
 int ret;
 int i;

 if (!io)
  return -EINVAL;

 for (i = 0; i < size ; i++) {
  ret = io->write_reg(io, tgt, reg_value[i].addr,
        reg_value[i].value);
  if (ret)
   return ret;
 }

 return 0;
}
