
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int i915_reg_t ;
typedef enum port { ____Placeholder_port } port ;


 int DVOA ;
 int DVOB ;
 int PORT_A ;
 int PORT_B ;
 int PORT_C ;
 scalar_t__ i915_mmio_reg_equal (int ,int ) ;

__attribute__((used)) static enum port intel_dvo_port(i915_reg_t dvo_reg)
{
 if (i915_mmio_reg_equal(dvo_reg, DVOA))
  return PORT_A;
 else if (i915_mmio_reg_equal(dvo_reg, DVOB))
  return PORT_B;
 else
  return PORT_C;
}
