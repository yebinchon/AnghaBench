
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_wc {scalar_t__ status; int vendor_err; } ;


 scalar_t__ IB_WC_WR_FLUSH_ERR ;
 int ib_wc_status_msg (scalar_t__) ;
 int isert_dbg (char*,char const*,int ,scalar_t__) ;
 int isert_err (char*,char const*,int ,scalar_t__,int ) ;

__attribute__((used)) static void
isert_print_wc(struct ib_wc *wc, const char *type)
{
 if (wc->status != IB_WC_WR_FLUSH_ERR)
  isert_err("%s failure: %s (%d) vend_err %x\n", type,
     ib_wc_status_msg(wc->status), wc->status,
     wc->vendor_err);
 else
  isert_dbg("%s failure: %s (%d)\n", type,
     ib_wc_status_msg(wc->status), wc->status);
}
