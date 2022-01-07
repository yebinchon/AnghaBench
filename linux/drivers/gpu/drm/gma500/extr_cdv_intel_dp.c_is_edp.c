
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gma_encoder {scalar_t__ type; } ;


 scalar_t__ INTEL_OUTPUT_EDP ;

__attribute__((used)) static bool is_edp(struct gma_encoder *encoder)
{
 return encoder->type == INTEL_OUTPUT_EDP;
}
