
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct entry {unsigned int level; int dirty; int allocated; int sentinel; int pending_work; void* prev; void* next; void* hash_next; } ;


 void* INDEXER_NULL ;

__attribute__((used)) static void init_entry(struct entry *e)
{




 e->hash_next = INDEXER_NULL;
 e->next = INDEXER_NULL;
 e->prev = INDEXER_NULL;
 e->level = 0u;
 e->dirty = 1;
 e->allocated = 1;
 e->sentinel = 0;
 e->pending_work = 0;
}
