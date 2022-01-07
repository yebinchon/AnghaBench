
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xcmd ;
struct uverbs_attr_bundle {int driver_udata; } ;
struct ib_uverbs_create_xsrq {int srq_limit; int max_sge; int max_wr; int pd_handle; int srq_type; int user_handle; int response; } ;
struct ib_uverbs_create_srq {int srq_limit; int max_sge; int max_wr; int pd_handle; int user_handle; int response; } ;
typedef int cmd ;


 int IB_SRQT_BASIC ;
 int __uverbs_create_xsrq (struct uverbs_attr_bundle*,struct ib_uverbs_create_xsrq*,int *) ;
 int memset (struct ib_uverbs_create_xsrq*,int ,int) ;
 int uverbs_request (struct uverbs_attr_bundle*,struct ib_uverbs_create_srq*,int) ;

__attribute__((used)) static int ib_uverbs_create_srq(struct uverbs_attr_bundle *attrs)
{
 struct ib_uverbs_create_srq cmd;
 struct ib_uverbs_create_xsrq xcmd;
 int ret;

 ret = uverbs_request(attrs, &cmd, sizeof(cmd));
 if (ret)
  return ret;

 memset(&xcmd, 0, sizeof(xcmd));
 xcmd.response = cmd.response;
 xcmd.user_handle = cmd.user_handle;
 xcmd.srq_type = IB_SRQT_BASIC;
 xcmd.pd_handle = cmd.pd_handle;
 xcmd.max_wr = cmd.max_wr;
 xcmd.max_sge = cmd.max_sge;
 xcmd.srq_limit = cmd.srq_limit;

 return __uverbs_create_xsrq(attrs, &xcmd, &attrs->driver_udata);
}
