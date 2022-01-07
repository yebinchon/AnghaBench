
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uverbs_attr_bundle {int driver_udata; } ;
struct ib_uverbs_create_xsrq {int dummy; } ;
typedef int cmd ;


 int __uverbs_create_xsrq (struct uverbs_attr_bundle*,struct ib_uverbs_create_xsrq*,int *) ;
 int uverbs_request (struct uverbs_attr_bundle*,struct ib_uverbs_create_xsrq*,int) ;

__attribute__((used)) static int ib_uverbs_create_xsrq(struct uverbs_attr_bundle *attrs)
{
 struct ib_uverbs_create_xsrq cmd;
 int ret;

 ret = uverbs_request(attrs, &cmd, sizeof(cmd));
 if (ret)
  return ret;

 return __uverbs_create_xsrq(attrs, &cmd, &attrs->driver_udata);
}
