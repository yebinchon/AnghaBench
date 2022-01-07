
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;


 int EAGAIN ;
 int EBUSY ;
 int P2SB_ADDR_OFF ;
 int P2SB_BUSY ;
 int P2SB_DATA_OFF ;
 int P2SB_EADD_OFF ;
 int P2SB_HIDE_OFF ;
 int P2SB_READ (int ,int ,int*) ;
 int P2SB_ROUT_OFF ;
 int P2SB_STAT_OFF ;
 int P2SB_WRITE (int ,int ,int) ;
 int byte ;
 int dword ;
 scalar_t__ p2sb_is_busy (int*) ;
 int word ;

__attribute__((used)) static int _apl_rd_reg(int port, int off, int op, u32 *data)
{
 int retries = 0xff, ret;
 u16 status;
 u8 hidden;


 P2SB_READ(byte, P2SB_HIDE_OFF, &hidden);
 if (hidden)
  P2SB_WRITE(byte, P2SB_HIDE_OFF, 0);

 if (p2sb_is_busy(&status)) {
  ret = -EAGAIN;
  goto out;
 }

 P2SB_WRITE(dword, P2SB_ADDR_OFF, (port << 24) | off);
 P2SB_WRITE(dword, P2SB_DATA_OFF, 0);
 P2SB_WRITE(dword, P2SB_EADD_OFF, 0);
 P2SB_WRITE(word, P2SB_ROUT_OFF, 0);
 P2SB_WRITE(word, P2SB_STAT_OFF, (op << 8) | P2SB_BUSY);

 while (p2sb_is_busy(&status)) {
  if (retries-- == 0) {
   ret = -EBUSY;
   goto out;
  }
 }

 P2SB_READ(dword, P2SB_DATA_OFF, data);
 ret = (status >> 1) & 0x3;
out:

 if (hidden)
  P2SB_WRITE(byte, P2SB_HIDE_OFF, hidden);

 return ret;
}
