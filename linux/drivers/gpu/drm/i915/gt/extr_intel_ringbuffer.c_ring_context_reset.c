
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_context {int ring; } ;


 int intel_ring_reset (int ,int ) ;

__attribute__((used)) static void ring_context_reset(struct intel_context *ce)
{
 intel_ring_reset(ce->ring, 0);
}
