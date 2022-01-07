
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef size_t uint32_t ;
struct btree_node {int dummy; } ;
typedef int __le64 ;


 int le64_to_cpu (int ) ;
 int * value_base (struct btree_node*) ;

__attribute__((used)) static inline uint64_t value64(struct btree_node *n, uint32_t index)
{
 __le64 *values_le = value_base(n);

 return le64_to_cpu(values_le[index]);
}
