
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mb86a20s_state {int dummy; } ;


 unsigned int ARRAY_SIZE (unsigned char*) ;
 int EINVAL ;
 int FEC_1_2 ;
 int FEC_2_3 ;
 int FEC_3_4 ;
 int FEC_5_6 ;
 int FEC_7_8 ;
 int FEC_AUTO ;
 int mb86a20s_readreg (struct mb86a20s_state*,int) ;
 int mb86a20s_writereg (struct mb86a20s_state*,int,unsigned char) ;

__attribute__((used)) static int mb86a20s_get_fec(struct mb86a20s_state *state,
       unsigned layer)
{
 int rc;

 static unsigned char reg[] = {
  [0] = 0x87,
  [1] = 0x8b,
  [2] = 0x8f,
 };

 if (layer >= ARRAY_SIZE(reg))
  return -EINVAL;
 rc = mb86a20s_writereg(state, 0x6d, reg[layer]);
 if (rc < 0)
  return rc;
 rc = mb86a20s_readreg(state, 0x6e);
 if (rc < 0)
  return rc;
 switch ((rc >> 4) & 0x07) {
 case 0:
  return FEC_1_2;
 case 1:
  return FEC_2_3;
 case 2:
  return FEC_3_4;
 case 3:
  return FEC_5_6;
 case 4:
  return FEC_7_8;
 default:
  return FEC_AUTO;
 }
}
