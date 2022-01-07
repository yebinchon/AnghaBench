
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* complete ) (TYPE_1__*,int) ;} ;
struct ablkcipher_request {TYPE_1__ base; } ;


 int stub1 (TYPE_1__*,int) ;

__attribute__((used)) static void s5p_aes_complete(struct ablkcipher_request *req, int err)
{
 req->base.complete(&req->base, err);
}
