
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ssi_protocol {scalar_t__ main_state; int lock; int tx_wd; } ;
struct hsi_client {int device; } ;


 scalar_t__ ACTIVE ;
 scalar_t__ SSIP_DATA_VERSION (int ) ;
 scalar_t__ SSIP_LOCAL_VERID ;
 int SSIP_WDTOUT ;
 int dev_dbg (int *,char*,scalar_t__) ;
 int dev_warn (int *,char*) ;
 struct ssi_protocol* hsi_client_drvdata (struct hsi_client*) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void ssip_rx_bootinforesp(struct hsi_client *cl, u32 cmd)
{
 struct ssi_protocol *ssi = hsi_client_drvdata(cl);

 if (SSIP_DATA_VERSION(cmd) != SSIP_LOCAL_VERID)
  dev_warn(&cl->device, "boot info resp verid mismatch\n");

 spin_lock_bh(&ssi->lock);
 if (ssi->main_state != ACTIVE)

  mod_timer(&ssi->tx_wd, jiffies + msecs_to_jiffies(SSIP_WDTOUT));
 else
  dev_dbg(&cl->device, "boot info resp ignored M(%d)\n",
       ssi->main_state);
 spin_unlock_bh(&ssi->lock);
}
