
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ssi_protocol {int lock; int cmdqueue; } ;
struct hsi_msg {int link; TYPE_1__* cl; } ;
struct TYPE_2__ {int device; } ;


 int dev_dbg (int *,char*,int ) ;
 struct ssi_protocol* hsi_client_drvdata (TYPE_1__*) ;
 int list_add_tail (int *,int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int ssip_get_cmd (struct hsi_msg*) ;

__attribute__((used)) static inline void ssip_release_cmd(struct hsi_msg *msg)
{
 struct ssi_protocol *ssi = hsi_client_drvdata(msg->cl);

 dev_dbg(&msg->cl->device, "Release cmd 0x%08x\n", ssip_get_cmd(msg));
 spin_lock_bh(&ssi->lock);
 list_add_tail(&msg->link, &ssi->cmdqueue);
 spin_unlock_bh(&ssi->lock);
}
