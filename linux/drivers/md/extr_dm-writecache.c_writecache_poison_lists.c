
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {void* prev; void* next; } ;
struct TYPE_3__ {void* prev; void* next; } ;
struct dm_writecache {TYPE_2__ freelist; TYPE_1__ lru; int tree; } ;


 void* LIST_POISON1 ;
 void* LIST_POISON2 ;
 int memset (int *,int,int) ;

__attribute__((used)) static void writecache_poison_lists(struct dm_writecache *wc)
{



 memset(&wc->tree, -1, sizeof wc->tree);
 wc->lru.next = LIST_POISON1;
 wc->lru.prev = LIST_POISON2;
 wc->freelist.next = LIST_POISON1;
 wc->freelist.prev = LIST_POISON2;
}
