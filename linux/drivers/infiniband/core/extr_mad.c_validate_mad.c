
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct ib_mad_qp_info {TYPE_1__* qp; } ;
struct ib_mad_hdr {scalar_t__ base_version; scalar_t__ mgmt_class; scalar_t__ attr_id; scalar_t__ method; } ;
struct TYPE_2__ {scalar_t__ qp_num; } ;


 scalar_t__ IB_MGMT_BASE_VERSION ;
 scalar_t__ IB_MGMT_CLASSPORTINFO_ATTR_ID ;
 scalar_t__ IB_MGMT_CLASS_CM ;
 scalar_t__ IB_MGMT_CLASS_SUBN_DIRECTED_ROUTE ;
 scalar_t__ IB_MGMT_CLASS_SUBN_LID_ROUTED ;
 scalar_t__ IB_MGMT_METHOD_SEND ;
 scalar_t__ OPA_MGMT_BASE_VERSION ;
 int pr_err (char*,scalar_t__,char*) ;

__attribute__((used)) static int validate_mad(const struct ib_mad_hdr *mad_hdr,
   const struct ib_mad_qp_info *qp_info,
   bool opa)
{
 int valid = 0;
 u32 qp_num = qp_info->qp->qp_num;


 if (mad_hdr->base_version != IB_MGMT_BASE_VERSION &&
     (!opa || mad_hdr->base_version != OPA_MGMT_BASE_VERSION)) {
  pr_err("MAD received with unsupported base version %d %s\n",
         mad_hdr->base_version, opa ? "(opa)" : "");
  goto out;
 }


 if ((mad_hdr->mgmt_class == IB_MGMT_CLASS_SUBN_LID_ROUTED) ||
     (mad_hdr->mgmt_class == IB_MGMT_CLASS_SUBN_DIRECTED_ROUTE)) {
  if (qp_num == 0)
   valid = 1;
 } else {

  if ((mad_hdr->mgmt_class == IB_MGMT_CLASS_CM) &&
      (mad_hdr->attr_id != IB_MGMT_CLASSPORTINFO_ATTR_ID) &&
      (mad_hdr->method != IB_MGMT_METHOD_SEND))
   goto out;

  if (qp_num != 0)
   valid = 1;
 }

out:
 return valid;
}
