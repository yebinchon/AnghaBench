
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ nr_disks; } ;
typedef TYPE_1__ mdp_super_t ;


 int GFP_KERNEL ;
 int MD_SB_GENERIC_CONSTANT_WORDS ;
 int kfree (TYPE_1__*) ;
 TYPE_1__* kmalloc (int,int ) ;
 scalar_t__ memcmp (TYPE_1__*,TYPE_1__*,int) ;

__attribute__((used)) static int md_sb_equal(mdp_super_t *sb1, mdp_super_t *sb2)
{
 int ret;
 mdp_super_t *tmp1, *tmp2;

 tmp1 = kmalloc(sizeof(*tmp1),GFP_KERNEL);
 tmp2 = kmalloc(sizeof(*tmp2),GFP_KERNEL);

 if (!tmp1 || !tmp2) {
  ret = 0;
  goto abort;
 }

 *tmp1 = *sb1;
 *tmp2 = *sb2;




 tmp1->nr_disks = 0;
 tmp2->nr_disks = 0;

 ret = (memcmp(tmp1, tmp2, MD_SB_GENERIC_CONSTANT_WORDS * 4) == 0);
abort:
 kfree(tmp1);
 kfree(tmp2);
 return ret;
}
