
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mms114_data {int cache_mode_control; } ;


 unsigned int MMS114_MODE_CONTROL ;
 int __mms114_read_reg (struct mms114_data*,unsigned int,int,int*) ;

__attribute__((used)) static int mms114_read_reg(struct mms114_data *data, unsigned int reg)
{
 u8 val;
 int error;

 if (reg == MMS114_MODE_CONTROL)
  return data->cache_mode_control;

 error = __mms114_read_reg(data, reg, 1, &val);
 return error < 0 ? error : val;
}
