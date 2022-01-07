
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct dvb_frontend {int dummy; } ;


 int au8522_read_snr (struct dvb_frontend*,int*) ;

__attribute__((used)) static int au8522_read_signal_strength(struct dvb_frontend *fe,
           u16 *signal_strength)
{







 u16 snr;
 u32 tmp;
 int ret = au8522_read_snr(fe, &snr);

 *signal_strength = 0;

 if (0 == ret) {





  tmp = (snr * ((1 << 24) / 10));



  if (tmp >= 8960 * 0x10000)
   *signal_strength = 0xffff;
  else
   *signal_strength = tmp / 8960;
 }

 return ret;
}
