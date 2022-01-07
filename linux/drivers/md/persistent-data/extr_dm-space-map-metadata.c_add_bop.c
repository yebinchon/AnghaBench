
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sm_metadata {int uncommitted; } ;
typedef enum block_op_type { ____Placeholder_block_op_type } block_op_type ;
typedef int dm_block_t ;


 int DMERR (char*) ;
 int ENOMEM ;
 int brb_push (int *,int,int ) ;

__attribute__((used)) static int add_bop(struct sm_metadata *smm, enum block_op_type type, dm_block_t b)
{
 int r = brb_push(&smm->uncommitted, type, b);

 if (r) {
  DMERR("too many recursive allocations");
  return -ENOMEM;
 }

 return 0;
}
