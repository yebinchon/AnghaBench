
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct its_node {int flags; int device_ids; struct its_baser* tables; } ;
struct its_baser {int val; int psz; } ;


 int GITS_BASER_CACHEABILITY_MASK ;
 int GITS_BASER_InnerShareable ;
 int GITS_BASER_NR_REGS ;
 int GITS_BASER_RaWaWb ;
 int GITS_BASER_SHAREABILITY_MASK ;
 int GITS_BASER_TYPE (int) ;



 int GITS_BASER_nCnB ;
 int ITS_FLAGS_WORKAROUND_CAVIUM_22375 ;
 int ITS_MAX_VPEID_BITS ;
 int SZ_64K ;
 int get_order (int ) ;
 int its_free_tables (struct its_node*) ;
 int its_parse_indirect_baser (struct its_node*,struct its_baser*,int ,int *,int ) ;
 int its_read_baser (struct its_node*,struct its_baser*) ;
 int its_setup_baser (struct its_node*,struct its_baser*,int,int,int ,int ,int) ;

__attribute__((used)) static int its_alloc_tables(struct its_node *its)
{
 u64 shr = GITS_BASER_InnerShareable;
 u64 cache = GITS_BASER_RaWaWb;
 u32 psz = SZ_64K;
 int err, i;

 if (its->flags & ITS_FLAGS_WORKAROUND_CAVIUM_22375)

  cache = GITS_BASER_nCnB;

 for (i = 0; i < GITS_BASER_NR_REGS; i++) {
  struct its_baser *baser = its->tables + i;
  u64 val = its_read_baser(its, baser);
  u64 type = GITS_BASER_TYPE(val);
  u32 order = get_order(psz);
  bool indirect = 0;

  switch (type) {
  case 129:
   continue;

  case 130:
   indirect = its_parse_indirect_baser(its, baser,
           psz, &order,
           its->device_ids);
   break;

  case 128:
   indirect = its_parse_indirect_baser(its, baser,
           psz, &order,
           ITS_MAX_VPEID_BITS);
   break;
  }

  err = its_setup_baser(its, baser, cache, shr, psz, order, indirect);
  if (err < 0) {
   its_free_tables(its);
   return err;
  }


  psz = baser->psz;
  cache = baser->val & GITS_BASER_CACHEABILITY_MASK;
  shr = baser->val & GITS_BASER_SHAREABILITY_MASK;
 }

 return 0;
}
