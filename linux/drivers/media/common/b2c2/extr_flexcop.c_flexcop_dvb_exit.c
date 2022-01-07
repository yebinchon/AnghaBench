
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int (* remove_frontend ) (TYPE_1__*,int *) ;int (* close ) (TYPE_1__*) ;} ;
struct TYPE_6__ {TYPE_1__ dmx; } ;
struct flexcop_device {int init_state; int dvb_adapter; TYPE_4__ demux; int dmxdev; int hw_frontend; int mem_frontend; int dvbnet; } ;


 int FC_STATE_DVB_INIT ;
 int deb_info (char*) ;
 int dvb_dmx_release (TYPE_4__*) ;
 int dvb_dmxdev_release (int *) ;
 int dvb_net_release (int *) ;
 int dvb_unregister_adapter (int *) ;
 int stub1 (TYPE_1__*) ;
 int stub2 (TYPE_1__*,int *) ;
 int stub3 (TYPE_1__*,int *) ;

__attribute__((used)) static void flexcop_dvb_exit(struct flexcop_device *fc)
{
 if (fc->init_state & FC_STATE_DVB_INIT) {
  dvb_net_release(&fc->dvbnet);

  fc->demux.dmx.close(&fc->demux.dmx);
  fc->demux.dmx.remove_frontend(&fc->demux.dmx,
   &fc->mem_frontend);
  fc->demux.dmx.remove_frontend(&fc->demux.dmx,
   &fc->hw_frontend);
  dvb_dmxdev_release(&fc->dmxdev);
  dvb_dmx_release(&fc->demux);
  dvb_unregister_adapter(&fc->dvb_adapter);
  deb_info("deinitialized dvb stuff\n");
 }
 fc->init_state &= ~FC_STATE_DVB_INIT;
}
