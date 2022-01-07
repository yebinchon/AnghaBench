
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct dvb_frontend {int dummy; } ;


 int dib7000p_get_snr (struct dvb_frontend*) ;

__attribute__((used)) static int dib7000p_read_snr(struct dvb_frontend *fe, u16 *snr)
{
 u32 result;

 result = dib7000p_get_snr(fe);

 *snr = result / ((1 << 24) / 10);
 return 0;
}
