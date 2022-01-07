
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dst; int src; } ;
struct brcm_message {TYPE_1__ spu; } ;
struct iproc_reqctx_s {struct brcm_message mb_mssg; } ;


 int kfree (int ) ;
 int memset (struct brcm_message*,int ,int) ;

__attribute__((used)) static void spu_chunk_cleanup(struct iproc_reqctx_s *rctx)
{

 struct brcm_message *mssg = &rctx->mb_mssg;

 kfree(mssg->spu.src);
 kfree(mssg->spu.dst);
 memset(mssg, 0, sizeof(struct brcm_message));
}
