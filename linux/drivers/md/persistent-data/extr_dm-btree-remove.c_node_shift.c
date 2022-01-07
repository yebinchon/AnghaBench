
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int max_entries; int value_size; int nr_entries; } ;
struct btree_node {TYPE_1__ header; } ;
typedef int __le64 ;


 int BUG_ON (int) ;
 void* key_ptr (struct btree_node*,int) ;
 int le32_to_cpu (int ) ;
 int memmove (void*,void*,int) ;
 void* value_ptr (struct btree_node*,int) ;

__attribute__((used)) static void node_shift(struct btree_node *n, int shift)
{
 uint32_t nr_entries = le32_to_cpu(n->header.nr_entries);
 uint32_t value_size = le32_to_cpu(n->header.value_size);

 if (shift < 0) {
  shift = -shift;
  BUG_ON(shift > nr_entries);
  BUG_ON((void *) key_ptr(n, shift) >= value_ptr(n, shift));
  memmove(key_ptr(n, 0),
   key_ptr(n, shift),
   (nr_entries - shift) * sizeof(__le64));
  memmove(value_ptr(n, 0),
   value_ptr(n, shift),
   (nr_entries - shift) * value_size);
 } else {
  BUG_ON(nr_entries + shift > le32_to_cpu(n->header.max_entries));
  memmove(key_ptr(n, shift),
   key_ptr(n, 0),
   nr_entries * sizeof(__le64));
  memmove(value_ptr(n, shift),
   value_ptr(n, 0),
   nr_entries * value_size);
 }
}
