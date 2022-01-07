
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btree_keys {size_t page_order; } ;


 size_t PAGE_SIZE ;

__attribute__((used)) static inline size_t btree_keys_bytes(struct btree_keys *b)
{
 return PAGE_SIZE << b->page_order;
}
