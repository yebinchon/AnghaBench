
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_fence {scalar_t__ ring; scalar_t__ seq; } ;


 int BUG_ON (int) ;

__attribute__((used)) static inline struct radeon_fence *radeon_fence_later(struct radeon_fence *a,
            struct radeon_fence *b)
{
 if (!a) {
  return b;
 }

 if (!b) {
  return a;
 }

 BUG_ON(a->ring != b->ring);

 if (a->seq > b->seq) {
  return a;
 } else {
  return b;
 }
}
