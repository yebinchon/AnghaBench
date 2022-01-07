
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r1conf {int poolinfo; int r1buf_pool; } ;


 int BUG_ON (int ) ;
 int RESYNC_BLOCK_SIZE ;
 int RESYNC_WINDOW ;
 int mempool_init (int *,int,int ,int ,int ) ;
 int mempool_initialized (int *) ;
 int r1buf_pool_alloc ;
 int r1buf_pool_free ;

__attribute__((used)) static int init_resync(struct r1conf *conf)
{
 int buffs;

 buffs = RESYNC_WINDOW / RESYNC_BLOCK_SIZE;
 BUG_ON(mempool_initialized(&conf->r1buf_pool));

 return mempool_init(&conf->r1buf_pool, buffs, r1buf_pool_alloc,
       r1buf_pool_free, conf->poolinfo);
}
