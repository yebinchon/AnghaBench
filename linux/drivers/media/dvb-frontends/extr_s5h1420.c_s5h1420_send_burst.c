
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct s5h1420_state {int dummy; } ;
struct dvb_frontend {struct s5h1420_state* demodulator_priv; } ;
typedef enum fe_sec_mini_cmd { ____Placeholder_fe_sec_mini_cmd } fe_sec_mini_cmd ;


 int ETIMEDOUT ;
 int HZ ;
 int SEC_MINI_B ;
 int jiffies ;
 int msleep (int) ;
 int s5h1420_readreg (struct s5h1420_state*,int) ;
 int s5h1420_writereg (struct s5h1420_state*,int,int) ;
 scalar_t__ time_after (int,unsigned long) ;
 scalar_t__ time_before (int,unsigned long) ;

__attribute__((used)) static int s5h1420_send_burst(struct dvb_frontend *fe,
         enum fe_sec_mini_cmd minicmd)
{
 struct s5h1420_state* state = fe->demodulator_priv;
 u8 val;
 int result = 0;
 unsigned long timeout;


 val = s5h1420_readreg(state, 0x3b);
 s5h1420_writereg(state, 0x3b, (s5h1420_readreg(state, 0x3b) & 0x70) | 0x01);


 if (minicmd == SEC_MINI_B) {
  s5h1420_writereg(state, 0x3b, s5h1420_readreg(state, 0x3b) | 0x04);
 }
 msleep(15);


 s5h1420_writereg(state, 0x3b, s5h1420_readreg(state, 0x3b) | 0x08);


 timeout = jiffies + ((100*HZ) / 1000);
 while(time_before(jiffies, timeout)) {
  if (!(s5h1420_readreg(state, 0x3b) & 0x08))
   break;

  msleep(5);
 }
 if (time_after(jiffies, timeout))
  result = -ETIMEDOUT;


 s5h1420_writereg(state, 0x3b, val);
 msleep(15);
 return result;
}
