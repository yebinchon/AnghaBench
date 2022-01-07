
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdma_txreq {scalar_t__ sn; int (* complete ) (struct sdma_txreq*,int) ;struct iowait* wait; } ;
struct sdma_engine {scalar_t__ head_sn; int dd; } ;
struct iowait {int dummy; } ;
typedef int (* callback_t ) (struct sdma_txreq*,int) ;


 scalar_t__ WARN_ON_ONCE (int) ;
 int __sdma_txclean (int ,struct sdma_txreq*) ;
 int dd_dev_err (int ,char*,scalar_t__,scalar_t__) ;
 int iowait_drain_wakeup (struct iowait*) ;
 scalar_t__ iowait_sdma_dec (struct iowait*) ;
 int stub1 (struct sdma_txreq*,int) ;
 int trace_hfi1_sdma_out_sn (struct sdma_engine*,scalar_t__) ;

__attribute__((used)) static inline void complete_tx(struct sdma_engine *sde,
          struct sdma_txreq *tx,
          int res)
{

 struct iowait *wait = tx->wait;
 callback_t complete = tx->complete;
 __sdma_txclean(sde->dd, tx);
 if (complete)
  (*complete)(tx, res);
 if (iowait_sdma_dec(wait))
  iowait_drain_wakeup(wait);
}
