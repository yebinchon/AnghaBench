
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ilist {int tail; int head; scalar_t__ nr_elts; } ;


 int INDEXER_NULL ;

__attribute__((used)) static void l_init(struct ilist *l)
{
 l->nr_elts = 0;
 l->head = l->tail = INDEXER_NULL;
}
