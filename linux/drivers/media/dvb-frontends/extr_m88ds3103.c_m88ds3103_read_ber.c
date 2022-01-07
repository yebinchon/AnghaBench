
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct m88ds3103_dev {int dvbv3_ber; } ;
struct dvb_frontend {struct m88ds3103_dev* demodulator_priv; } ;



__attribute__((used)) static int m88ds3103_read_ber(struct dvb_frontend *fe, u32 *ber)
{
 struct m88ds3103_dev *dev = fe->demodulator_priv;

 *ber = dev->dvbv3_ber;

 return 0;
}
