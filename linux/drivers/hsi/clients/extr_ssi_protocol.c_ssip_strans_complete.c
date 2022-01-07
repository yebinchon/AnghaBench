
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssi_protocol {int lock; } ;
struct hsi_msg {struct hsi_msg* context; struct hsi_client* cl; } ;
struct hsi_client {int dummy; } ;


 int SENDING ;
 int hsi_async_write (struct hsi_client*,struct hsi_msg*) ;
 struct ssi_protocol* hsi_client_drvdata (struct hsi_client*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int ssip_release_cmd (struct hsi_msg*) ;
 int ssip_set_txstate (struct ssi_protocol*,int ) ;

__attribute__((used)) static void ssip_strans_complete(struct hsi_msg *msg)
{
 struct hsi_client *cl = msg->cl;
 struct ssi_protocol *ssi = hsi_client_drvdata(cl);
 struct hsi_msg *data;

 data = msg->context;
 ssip_release_cmd(msg);
 spin_lock_bh(&ssi->lock);
 ssip_set_txstate(ssi, SENDING);
 spin_unlock_bh(&ssi->lock);
 hsi_async_write(cl, data);
}
