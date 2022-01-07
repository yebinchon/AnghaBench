
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g2d_data {int cmdlist_mutex; int free_cmdlist; } ;
struct g2d_cmdlist_node {int list; } ;


 int list_move_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void g2d_put_cmdlist(struct g2d_data *g2d, struct g2d_cmdlist_node *node)
{
 mutex_lock(&g2d->cmdlist_mutex);
 list_move_tail(&node->list, &g2d->free_cmdlist);
 mutex_unlock(&g2d->cmdlist_mutex);
}
