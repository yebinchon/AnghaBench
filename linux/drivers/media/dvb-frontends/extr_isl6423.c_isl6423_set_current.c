
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct isl6423_dev {int reg_3; struct isl6423_config* config; } ;
struct isl6423_config {int current_max; int curlim; } ;
struct dvb_frontend {scalar_t__ sec_priv; } ;


 int FE_ERROR ;






 int dprintk (int ,int,char*,int) ;
 int isl6423_write (struct isl6423_dev*,int) ;

__attribute__((used)) static int isl6423_set_current(struct dvb_frontend *fe)
{
 struct isl6423_dev *isl6423 = (struct isl6423_dev *) fe->sec_priv;
 u8 reg_3 = isl6423->reg_3;
 const struct isl6423_config *config = isl6423->config;
 int err = 0;

 switch (config->current_max) {
 case 133:


  reg_3 &= ~0x3;
  break;

 case 132:


  reg_3 &= ~0x2;
  reg_3 |= 0x1;
  break;

 case 131:


  reg_3 &= ~0x1;
  reg_3 |= 0x2;
  break;

 case 130:


  reg_3 |= 0x3;
  break;
 }

 err = isl6423_write(isl6423, reg_3);
 if (err < 0)
  goto exit;

 switch (config->curlim) {
 case 128:

  reg_3 &= ~0x10;
  break;

 case 129:

  reg_3 |= 0x10;
  break;
 }

 err = isl6423_write(isl6423, reg_3);
 if (err < 0)
  goto exit;

 isl6423->reg_3 = reg_3;

 return 0;
exit:
 dprintk(FE_ERROR, 1, "I/O error <%d>", err);
 return err;
}
