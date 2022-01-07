
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct drm_mm_node {int start; } ;


 int div64_u64_rem (int ,int ,int *) ;

__attribute__((used)) static u64 misalignment(struct drm_mm_node *node, u64 alignment)
{
 u64 rem;

 if (!alignment)
  return 0;

 div64_u64_rem(node->start, alignment, &rem);
 return rem;
}
