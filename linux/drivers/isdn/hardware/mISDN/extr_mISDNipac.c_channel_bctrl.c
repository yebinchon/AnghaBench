
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mISDN_ctrl_req {int dummy; } ;
struct bchannel {int dummy; } ;


 int mISDN_ctrl_bchannel (struct bchannel*,struct mISDN_ctrl_req*) ;

__attribute__((used)) static int
channel_bctrl(struct bchannel *bch, struct mISDN_ctrl_req *cq)
{
 return mISDN_ctrl_bchannel(bch, cq);
}
