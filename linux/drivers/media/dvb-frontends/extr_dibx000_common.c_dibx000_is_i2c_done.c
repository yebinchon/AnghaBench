
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct dibx000_i2c_master {scalar_t__ base_reg; } ;


 int EREMOTEIO ;
 int dibx000_read_word (struct dibx000_i2c_master*,scalar_t__) ;

__attribute__((used)) static int dibx000_is_i2c_done(struct dibx000_i2c_master *mst)
{
 int i = 100;
 u16 status;

 while (((status = dibx000_read_word(mst, mst->base_reg + 2)) & 0x0100) == 0 && --i > 0)
  ;


 if (i == 0)
  return -EREMOTEIO;


 if ((status & 0x0080) == 0)
  return -EREMOTEIO;

 return 0;
}
