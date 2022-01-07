
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tiger_ch {int bch; } ;
struct mISDN_ctrl_req {int dummy; } ;


 int mISDN_ctrl_bchannel (int *,struct mISDN_ctrl_req*) ;

__attribute__((used)) static int
channel_bctrl(struct tiger_ch *bc, struct mISDN_ctrl_req *cq)
{
 return mISDN_ctrl_bchannel(&bc->bch, cq);
}
