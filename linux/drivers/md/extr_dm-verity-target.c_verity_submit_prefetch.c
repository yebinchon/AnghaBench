
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_verity_prefetch_work {int work; int n_blocks; int block; struct dm_verity* v; } ;
struct dm_verity_io {int n_blocks; int block; } ;
struct dm_verity {int verify_wq; } ;


 int GFP_NOIO ;
 int INIT_WORK (int *,int ) ;
 int __GFP_NOMEMALLOC ;
 int __GFP_NORETRY ;
 int __GFP_NOWARN ;
 struct dm_verity_prefetch_work* kmalloc (int,int) ;
 int queue_work (int ,int *) ;
 int verity_prefetch_io ;

__attribute__((used)) static void verity_submit_prefetch(struct dm_verity *v, struct dm_verity_io *io)
{
 struct dm_verity_prefetch_work *pw;

 pw = kmalloc(sizeof(struct dm_verity_prefetch_work),
  GFP_NOIO | __GFP_NORETRY | __GFP_NOMEMALLOC | __GFP_NOWARN);

 if (!pw)
  return;

 INIT_WORK(&pw->work, verity_prefetch_io);
 pw->v = v;
 pw->block = io->block;
 pw->n_blocks = io->n_blocks;
 queue_work(v->verify_wq, &pw->work);
}
