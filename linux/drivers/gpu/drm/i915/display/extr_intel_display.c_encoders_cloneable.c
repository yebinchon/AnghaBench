
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_encoder {int cloneable; int type; } ;



__attribute__((used)) static bool encoders_cloneable(const struct intel_encoder *a,
          const struct intel_encoder *b)
{

 return a == b || (a->cloneable & (1 << b->type) &&
     b->cloneable & (1 << a->type));
}
