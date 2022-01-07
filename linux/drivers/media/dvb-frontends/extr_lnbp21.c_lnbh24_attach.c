
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_adapter {int dummy; } ;
struct dvb_frontend {int dummy; } ;


 int LNBH24_TTX ;
 struct dvb_frontend* lnbx2x_attach (struct dvb_frontend*,struct i2c_adapter*,int ,int ,int ,int ) ;

struct dvb_frontend *lnbh24_attach(struct dvb_frontend *fe,
    struct i2c_adapter *i2c, u8 override_set,
    u8 override_clear, u8 i2c_addr)
{
 return lnbx2x_attach(fe, i2c, override_set, override_clear,
       i2c_addr, LNBH24_TTX);
}
