
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int sgl; } ;
struct hsi_msg {int link; struct cs_hsi_iface* context; int channel; TYPE_1__ sgt; } ;
struct cs_hsi_iface {int cmdqueue; } ;
struct TYPE_4__ {int channel_id_cmd; } ;


 unsigned int CS_MAX_CMDS ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 TYPE_2__ cs_char_data ;
 int cs_free_cmds (struct cs_hsi_iface*) ;
 struct hsi_msg* hsi_alloc_msg (int,int ) ;
 int hsi_free_msg (struct hsi_msg*) ;
 int * kmalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int sg_init_one (int ,int *,int) ;

__attribute__((used)) static int cs_alloc_cmds(struct cs_hsi_iface *hi)
{
 struct hsi_msg *msg;
 u32 *buf;
 unsigned int i;

 INIT_LIST_HEAD(&hi->cmdqueue);

 for (i = 0; i < CS_MAX_CMDS; i++) {
  msg = hsi_alloc_msg(1, GFP_KERNEL);
  if (!msg)
   goto out;
  buf = kmalloc(sizeof(*buf), GFP_KERNEL);
  if (!buf) {
   hsi_free_msg(msg);
   goto out;
  }
  sg_init_one(msg->sgt.sgl, buf, sizeof(*buf));
  msg->channel = cs_char_data.channel_id_cmd;
  msg->context = hi;
  list_add_tail(&msg->link, &hi->cmdqueue);
 }

 return 0;

out:
 cs_free_cmds(hi);
 return -ENOMEM;
}
