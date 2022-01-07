
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request {int dummy; } ;
struct TYPE_2__ {int type; } ;
 int blk_rq_bytes (struct request*) ;
 TYPE_1__* ide_req (struct request*) ;
 int req_op (struct request*) ;

int ide_cd_get_xferlen(struct request *rq)
{
 switch (req_op(rq)) {
 default:
  return 32768;
 case 129:
 case 128:
  return blk_rq_bytes(rq);
 case 131:
 case 130:
  switch (ide_req(rq)->type) {
  case 133:
  case 132:
   return blk_rq_bytes(rq);
  default:
   return 0;
  }
 }
}
