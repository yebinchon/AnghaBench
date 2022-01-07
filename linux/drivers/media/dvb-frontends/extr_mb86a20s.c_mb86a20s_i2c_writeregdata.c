
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct regdata {int data; int reg; } ;
struct mb86a20s_state {int dummy; } ;


 int mb86a20s_i2c_writereg (struct mb86a20s_state*,int ,int ,int ) ;

__attribute__((used)) static int mb86a20s_i2c_writeregdata(struct mb86a20s_state *state,
         u8 i2c_addr, struct regdata *rd, int size)
{
 int i, rc;

 for (i = 0; i < size; i++) {
  rc = mb86a20s_i2c_writereg(state, i2c_addr, rd[i].reg,
        rd[i].data);
  if (rc < 0)
   return rc;
 }
 return 0;
}
