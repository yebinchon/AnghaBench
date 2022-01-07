
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flexcop_device {int init_state; int fe; } ;


 int FC_STATE_FE_INIT ;
 int dvb_frontend_detach (int ) ;
 int dvb_unregister_frontend (int ) ;

void flexcop_frontend_exit(struct flexcop_device *fc)
{
 if (fc->init_state & FC_STATE_FE_INIT) {
  dvb_unregister_frontend(fc->fe);
  dvb_frontend_detach(fc->fe);
 }
 fc->init_state &= ~FC_STATE_FE_INIT;
}
