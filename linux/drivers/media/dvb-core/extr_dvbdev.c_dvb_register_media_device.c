
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct media_link {int dummy; } ;
struct dvb_device {TYPE_2__* intf_devnode; int entity; TYPE_1__* adapter; } ;
struct TYPE_4__ {int intf; } ;
struct TYPE_3__ {int mdev; } ;







 int DVB_MAJOR ;
 int ENOMEM ;
 int MEDIA_INTF_T_DVB_CA ;
 int MEDIA_INTF_T_DVB_DEMUX ;
 int MEDIA_INTF_T_DVB_DVR ;
 int MEDIA_INTF_T_DVB_FE ;
 int MEDIA_INTF_T_DVB_NET ;
 int MEDIA_LNK_FL_ENABLED ;
 int MEDIA_LNK_FL_IMMUTABLE ;
 int dvb_create_media_entity (struct dvb_device*,int,unsigned int) ;
 struct media_link* media_create_intf_link (int ,int *,int) ;
 TYPE_2__* media_devnode_create (int ,int ,int ,int ,int) ;

__attribute__((used)) static int dvb_register_media_device(struct dvb_device *dvbdev,
         int type, int minor,
         unsigned demux_sink_pads)
{
 return 0;
}
