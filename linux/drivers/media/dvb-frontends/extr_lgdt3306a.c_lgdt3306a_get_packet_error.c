
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lgdt3306a_state {int dummy; } ;


 int lgdt3306a_read_reg (struct lgdt3306a_state*,int,int*) ;

__attribute__((used)) static u8 lgdt3306a_get_packet_error(struct lgdt3306a_state *state)
{
 u8 val;
 int ret;

 ret = lgdt3306a_read_reg(state, 0x00fa, &val);
 if (ret)
  return ret;

 return val;
}
