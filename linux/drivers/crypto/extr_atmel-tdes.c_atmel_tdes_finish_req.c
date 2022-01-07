
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct atmel_tdes_dev {int flags; int iclk; struct ablkcipher_request* req; } ;
struct TYPE_2__ {int (* complete ) (TYPE_1__*,int) ;} ;
struct ablkcipher_request {TYPE_1__ base; } ;


 int TDES_FLAGS_BUSY ;
 int clk_disable_unprepare (int ) ;
 int stub1 (TYPE_1__*,int) ;

__attribute__((used)) static void atmel_tdes_finish_req(struct atmel_tdes_dev *dd, int err)
{
 struct ablkcipher_request *req = dd->req;

 clk_disable_unprepare(dd->iclk);

 dd->flags &= ~TDES_FLAGS_BUSY;

 req->base.complete(&req->base, err);
}
