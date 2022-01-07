
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {struct saa7146_dev* dev; int timeout; int queue; } ;
struct saa7146_vv {int current_hps_sync; int current_hps_source; int * standard; TYPE_2__ video_dmaq; } ;
struct saa7146_dev {TYPE_1__* ext_vv_data; } ;
struct TYPE_3__ {int * stds; } ;


 int INIT_LIST_HEAD (int *) ;
 int SAA7146_HPS_SOURCE_PORT_A ;
 int SAA7146_HPS_SYNC_PORT_A ;
 int saa7146_buffer_timeout ;
 int timer_setup (int *,int ,int ) ;

__attribute__((used)) static void video_init(struct saa7146_dev *dev, struct saa7146_vv *vv)
{
 INIT_LIST_HEAD(&vv->video_dmaq.queue);

 timer_setup(&vv->video_dmaq.timeout, saa7146_buffer_timeout, 0);
 vv->video_dmaq.dev = dev;


 vv->standard = &dev->ext_vv_data->stds[0];


 vv->current_hps_source = SAA7146_HPS_SOURCE_PORT_A;
 vv->current_hps_sync = SAA7146_HPS_SYNC_PORT_A;
}
