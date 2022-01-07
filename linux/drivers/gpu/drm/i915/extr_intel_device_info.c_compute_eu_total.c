
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct sseu_dev_info {int * eu_mask; } ;


 size_t ARRAY_SIZE (int *) ;
 scalar_t__ hweight8 (int ) ;

__attribute__((used)) static u16 compute_eu_total(const struct sseu_dev_info *sseu)
{
 u16 i, total = 0;

 for (i = 0; i < ARRAY_SIZE(sseu->eu_mask); i++)
  total += hweight8(sseu->eu_mask[i]);

 return total;
}
