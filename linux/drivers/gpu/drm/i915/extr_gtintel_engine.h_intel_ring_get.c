
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_ring {int ref; } ;


 int kref_get (int *) ;

__attribute__((used)) static inline struct intel_ring *intel_ring_get(struct intel_ring *ring)
{
 kref_get(&ring->ref);
 return ring;
}
