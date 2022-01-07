
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct stv0900_table {int dummy; } ;
struct dvb_frontend {int dummy; } ;
typedef int s32 ;


 int stv0900_carr_get_quality (struct dvb_frontend*,struct stv0900_table const*) ;
 int stv0900_s2_cn ;

__attribute__((used)) static int stv0900_read_snr(struct dvb_frontend *fe, u16 *snr)
{
 s32 snrlcl = stv0900_carr_get_quality(fe,
   (const struct stv0900_table *)&stv0900_s2_cn);
 snrlcl = (snrlcl + 30) * 384;
 if (snrlcl < 0)
  snrlcl = 0;

 if (snrlcl > 65535)
  snrlcl = 65535;

 *snr = snrlcl;

 return 0;
}
