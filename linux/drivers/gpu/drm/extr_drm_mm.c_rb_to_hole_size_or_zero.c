
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct rb_node {int dummy; } ;


 int rb_to_hole_size (struct rb_node*) ;

__attribute__((used)) static u64 rb_to_hole_size_or_zero(struct rb_node *rb)
{
 return rb ? rb_to_hole_size(rb) : 0;
}
