
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btree_iter {int used; } ;



__attribute__((used)) static inline bool btree_iter_end(struct btree_iter *iter)
{
 return !iter->used;
}
