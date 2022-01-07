
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_ring {int ref; } ;


 int intel_ring_free ;
 int kref_put (int *,int ) ;

__attribute__((used)) static inline void intel_ring_put(struct intel_ring *ring)
{
 kref_put(&ring->ref, intel_ring_free);
}
