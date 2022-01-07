
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct dvb_device {int tsout_num_entities; TYPE_1__* adapter; int * intf_devnode; TYPE_2__* tsout_pads; TYPE_2__* tsout_entity; TYPE_2__* pads; TYPE_2__* entity; } ;
struct TYPE_5__ {struct TYPE_5__* name; } ;
struct TYPE_4__ {TYPE_2__* conn_pads; TYPE_2__* conn; } ;


 int kfree (TYPE_2__*) ;
 int media_device_unregister_entity (TYPE_2__*) ;
 int media_devnode_remove (int *) ;

__attribute__((used)) static void dvb_media_device_free(struct dvb_device *dvbdev)
{
}
