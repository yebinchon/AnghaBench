
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct isl6423_dev {int reg_3; int reg_4; } ;
struct dvb_frontend {scalar_t__ sec_priv; } ;


 int FE_ERROR ;
 int dprintk (int ,int,char*,int) ;
 int isl6423_write (struct isl6423_dev*,int) ;

__attribute__((used)) static int isl6423_voltage_boost(struct dvb_frontend *fe, long arg)
{
 struct isl6423_dev *isl6423 = (struct isl6423_dev *) fe->sec_priv;
 u8 reg_3 = isl6423->reg_3;
 u8 reg_4 = isl6423->reg_4;
 int err = 0;

 if (arg) {

  reg_4 |= (1 << 4);
  reg_4 |= 0x1;
  reg_3 |= (1 << 3);
 } else {

  reg_4 |= (1 << 4);
  reg_4 &= ~0x1;
  reg_3 |= (1 << 3);
 }
 err = isl6423_write(isl6423, reg_3);
 if (err < 0)
  goto exit;

 err = isl6423_write(isl6423, reg_4);
 if (err < 0)
  goto exit;

 isl6423->reg_3 = reg_3;
 isl6423->reg_4 = reg_4;

 return 0;
exit:
 dprintk(FE_ERROR, 1, "I/O error <%d>", err);
 return err;
}
