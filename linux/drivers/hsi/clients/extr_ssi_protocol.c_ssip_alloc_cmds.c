
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ssi_protocol {int cmdqueue; int channel_id_cmd; } ;
struct TYPE_2__ {int sgl; } ;
struct hsi_msg {int link; int channel; TYPE_1__ sgt; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 unsigned int SSIP_MAX_CMDS ;
 struct hsi_msg* hsi_alloc_msg (int,int ) ;
 int hsi_free_msg (struct hsi_msg*) ;
 int * kmalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int sg_init_one (int ,int *,int) ;
 int ssip_free_cmds (struct ssi_protocol*) ;

__attribute__((used)) static int ssip_alloc_cmds(struct ssi_protocol *ssi)
{
 struct hsi_msg *msg;
 u32 *buf;
 unsigned int i;

 for (i = 0; i < SSIP_MAX_CMDS; i++) {
  msg = hsi_alloc_msg(1, GFP_KERNEL);
  if (!msg)
   goto out;
  buf = kmalloc(sizeof(*buf), GFP_KERNEL);
  if (!buf) {
   hsi_free_msg(msg);
   goto out;
  }
  sg_init_one(msg->sgt.sgl, buf, sizeof(*buf));
  msg->channel = ssi->channel_id_cmd;
  list_add_tail(&msg->link, &ssi->cmdqueue);
 }

 return 0;
out:
 ssip_free_cmds(ssi);

 return -ENOMEM;
}
