
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_wc {int dummy; } ;
struct ib_cq {int dummy; } ;


 int srp_handle_qp_err (struct ib_cq*,struct ib_wc*,char*) ;

__attribute__((used)) static void srp_inv_rkey_err_done(struct ib_cq *cq, struct ib_wc *wc)
{
 srp_handle_qp_err(cq, wc, "INV RKEY");
}
