
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sm_metadata {int uncommitted; } ;
struct block_op {int dummy; } ;


 int DMERR (char*) ;
 int brb_empty (int *) ;
 int brb_peek (int *,struct block_op*) ;
 int brb_pop (int *) ;
 int commit_bop (struct sm_metadata*,struct block_op*) ;

__attribute__((used)) static int apply_bops(struct sm_metadata *smm)
{
 int r = 0;

 while (!brb_empty(&smm->uncommitted)) {
  struct block_op bop;

  r = brb_peek(&smm->uncommitted, &bop);
  if (r) {
   DMERR("bug in bop ring buffer");
   break;
  }

  r = commit_bop(smm, &bop);
  if (r)
   break;

  brb_pop(&smm->uncommitted);
 }

 return r;
}
