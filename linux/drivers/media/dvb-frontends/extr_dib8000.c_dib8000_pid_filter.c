
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u16 ;
struct dvb_frontend {struct dib8000_state* demodulator_priv; } ;
struct dib8000_state {int dummy; } ;


 int dib8000_write_word (struct dib8000_state*,scalar_t__,int) ;
 int dprintk (char*,scalar_t__,int,scalar_t__) ;

__attribute__((used)) static int dib8000_pid_filter(struct dvb_frontend *fe, u8 id, u16 pid, u8 onoff)
{
 struct dib8000_state *st = fe->demodulator_priv;
 dprintk("Index %x, PID %d, OnOff %d\n", id, pid, onoff);
 return dib8000_write_word(st, 305 + id, onoff ? (1 << 13) | pid : 0);
}
