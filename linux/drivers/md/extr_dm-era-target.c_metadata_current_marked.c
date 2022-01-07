
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct writeset {int dummy; } ;
struct era_metadata {int current_writeset; } ;
typedef int dm_block_t ;


 struct writeset* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int writeset_marked (struct writeset*,int ) ;

__attribute__((used)) static bool metadata_current_marked(struct era_metadata *md, dm_block_t block)
{
 bool r;
 struct writeset *ws;

 rcu_read_lock();
 ws = rcu_dereference(md->current_writeset);
 r = writeset_marked(ws, block);
 rcu_read_unlock();

 return r;
}
