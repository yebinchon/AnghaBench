
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct uverbs_attr_bundle {int dummy; } ;
struct TYPE_2__ {scalar_t__ data; } ;
struct uverbs_attr {TYPE_1__ ptr_attr; } ;
typedef scalar_t__ s64 ;


 int EINVAL ;
 int ENOENT ;
 scalar_t__ IS_ERR (struct uverbs_attr const*) ;
 int PTR_ERR (struct uverbs_attr const*) ;
 struct uverbs_attr* uverbs_attr_get (struct uverbs_attr_bundle const*,size_t) ;

int _uverbs_get_const(s64 *to, const struct uverbs_attr_bundle *attrs_bundle,
        size_t idx, s64 lower_bound, u64 upper_bound,
        s64 *def_val)
{
 const struct uverbs_attr *attr;

 attr = uverbs_attr_get(attrs_bundle, idx);
 if (IS_ERR(attr)) {
  if ((PTR_ERR(attr) != -ENOENT) || !def_val)
   return PTR_ERR(attr);

  *to = *def_val;
 } else {
  *to = attr->ptr_attr.data;
 }

 if (*to < lower_bound || (*to > 0 && (u64)*to > upper_bound))
  return -EINVAL;

 return 0;
}
