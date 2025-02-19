
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mt312_state {int dummy; } ;
struct dvb_frontend {struct mt312_state* demodulator_priv; } ;
struct dvb_diseqc_master_cmd {int msg_len; int* msg; } ;


 int DISEQC_INSTR ;
 int DISEQC_MODE ;
 int EINVAL ;
 int msleep (int) ;
 int mt312_readreg (struct mt312_state*,int ,int*) ;
 int mt312_write (struct mt312_state*,int,int*,int) ;
 int mt312_writereg (struct mt312_state*,int ,int) ;

__attribute__((used)) static int mt312_send_master_cmd(struct dvb_frontend *fe,
     struct dvb_diseqc_master_cmd *c)
{
 struct mt312_state *state = fe->demodulator_priv;
 int ret;
 u8 diseqc_mode;

 if ((c->msg_len == 0) || (c->msg_len > sizeof(c->msg)))
  return -EINVAL;

 ret = mt312_readreg(state, DISEQC_MODE, &diseqc_mode);
 if (ret < 0)
  return ret;

 ret = mt312_write(state, (0x80 | DISEQC_INSTR), c->msg, c->msg_len);
 if (ret < 0)
  return ret;

 ret = mt312_writereg(state, DISEQC_MODE,
        (diseqc_mode & 0x40) | ((c->msg_len - 1) << 3)
        | 0x04);
 if (ret < 0)
  return ret;


 msleep(100);


 if (c->msg[0] & 0x02) {
  ret = mt312_writereg(state, DISEQC_MODE, (diseqc_mode & 0x40));
  if (ret < 0)
   return ret;
 }

 return 0;
}
