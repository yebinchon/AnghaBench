
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_gvt {int dummy; } ;


 int in_whitelist (unsigned int) ;

bool intel_gvt_in_force_nonpriv_whitelist(struct intel_gvt *gvt,
       unsigned int offset)
{
 return in_whitelist(offset);
}
