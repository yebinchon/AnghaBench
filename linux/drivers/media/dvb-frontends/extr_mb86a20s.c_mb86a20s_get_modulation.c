
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mb86a20s_state {int dummy; } ;


 unsigned int ARRAY_SIZE (unsigned char*) ;
 int DQPSK ;
 int EINVAL ;
 int QAM_16 ;
 int QAM_64 ;
 int QAM_AUTO ;
 int QPSK ;
 int mb86a20s_readreg (struct mb86a20s_state*,int) ;
 int mb86a20s_writereg (struct mb86a20s_state*,int,unsigned char) ;

__attribute__((used)) static int mb86a20s_get_modulation(struct mb86a20s_state *state,
       unsigned layer)
{
 int rc;
 static unsigned char reg[] = {
  [0] = 0x86,
  [1] = 0x8a,
  [2] = 0x8e,
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
  return DQPSK;
 case 1:
  return QPSK;
 case 2:
  return QAM_16;
 case 3:
  return QAM_64;
 default:
  return QAM_AUTO;
 }
}
