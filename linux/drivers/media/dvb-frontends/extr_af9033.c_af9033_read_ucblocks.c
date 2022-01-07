
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dvb_frontend {struct af9033_dev* demodulator_priv; } ;
struct af9033_dev {int error_block_count; } ;



__attribute__((used)) static int af9033_read_ucblocks(struct dvb_frontend *fe, u32 *ucblocks)
{
 struct af9033_dev *dev = fe->demodulator_priv;

 *ucblocks = dev->error_block_count;

 return 0;
}
