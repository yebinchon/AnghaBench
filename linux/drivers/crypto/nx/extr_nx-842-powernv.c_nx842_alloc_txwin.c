
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vas_window {int dummy; } ;
struct vas_tx_win_attr {scalar_t__ pid; scalar_t__ lpid; } ;
struct TYPE_2__ {int id; } ;
struct nx842_coproc {int ct; TYPE_1__ vas; } ;


 scalar_t__ IS_ERR (struct vas_window*) ;
 int PTR_ERR (struct vas_window*) ;
 int pr_err (char*,int ) ;
 int vas_init_tx_win_attr (struct vas_tx_win_attr*,int ) ;
 struct vas_window* vas_tx_win_open (int ,int ,struct vas_tx_win_attr*) ;

__attribute__((used)) static struct vas_window *nx842_alloc_txwin(struct nx842_coproc *coproc)
{
 struct vas_window *txwin = ((void*)0);
 struct vas_tx_win_attr txattr;





 vas_init_tx_win_attr(&txattr, coproc->ct);
 txattr.lpid = 0;
 txattr.pid = 0;




 txwin = vas_tx_win_open(coproc->vas.id, coproc->ct, &txattr);
 if (IS_ERR(txwin))
  pr_err("ibm,nx-842: Can not open TX window: %ld\n",
    PTR_ERR(txwin));

 return txwin;
}
