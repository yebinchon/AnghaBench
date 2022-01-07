
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct dvb_frontend {int dummy; } ;


 int stv0367ter_snr_readreg (struct dvb_frontend*) ;

__attribute__((used)) static int stv0367ter_read_snr(struct dvb_frontend *fe, u16 *snr)
{
 u32 snrval = stv0367ter_snr_readreg(fe);

 *snr = snrval / 1000;

 return 0;
}
