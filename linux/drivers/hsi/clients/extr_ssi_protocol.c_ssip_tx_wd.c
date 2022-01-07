
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct ssi_protocol {struct hsi_client* cl; } ;
struct hsi_client {int device; } ;


 int dev_err (int *,char*) ;
 struct ssi_protocol* from_timer (int ,struct timer_list*,int ) ;
 struct ssi_protocol* ssi ;
 int ssip_error (struct hsi_client*) ;
 int tx_wd ;

__attribute__((used)) static void ssip_tx_wd(struct timer_list *t)
{
 struct ssi_protocol *ssi = from_timer(ssi, t, tx_wd);
 struct hsi_client *cl = ssi->cl;

 dev_err(&cl->device, "Watchdog triggered\n");
 ssip_error(cl);
}
