
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ppl_conf {int io_kc; int io_pool; int flush_bs; int bs; struct ppl_conf* child_logs; TYPE_1__* mddev; } ;
struct TYPE_2__ {int flags; } ;


 int MD_HAS_MULTIPLE_PPLS ;
 int MD_HAS_PPL ;
 int bioset_exit (int *) ;
 int clear_bit (int ,int *) ;
 int kfree (struct ppl_conf*) ;
 int kmem_cache_destroy (int ) ;
 int mempool_exit (int *) ;

__attribute__((used)) static void __ppl_exit_log(struct ppl_conf *ppl_conf)
{
 clear_bit(MD_HAS_PPL, &ppl_conf->mddev->flags);
 clear_bit(MD_HAS_MULTIPLE_PPLS, &ppl_conf->mddev->flags);

 kfree(ppl_conf->child_logs);

 bioset_exit(&ppl_conf->bs);
 bioset_exit(&ppl_conf->flush_bs);
 mempool_exit(&ppl_conf->io_pool);
 kmem_cache_destroy(ppl_conf->io_kc);

 kfree(ppl_conf);
}
