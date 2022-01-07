
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct qedr_dev {int dummy; } ;
struct ib_wc {int dummy; } ;
struct ib_mad_hdr {int status; int mgmt_class; int method; int class_version; int class_specific; int attr_mod; int base_version; int attr_id; } ;
struct ib_grh {int dummy; } ;
struct ib_device {int dummy; } ;


 int DP_DEBUG (struct qedr_dev*,int ,char*,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int IB_MAD_RESULT_SUCCESS ;
 int QEDR_MSG_GSI ;
 struct qedr_dev* get_qedr_dev (struct ib_device*) ;

int qedr_process_mad(struct ib_device *ibdev, int process_mad_flags,
       u8 port_num,
       const struct ib_wc *in_wc,
       const struct ib_grh *in_grh,
       const struct ib_mad_hdr *mad_hdr,
       size_t in_mad_size, struct ib_mad_hdr *out_mad,
       size_t *out_mad_size, u16 *out_mad_pkey_index)
{
 struct qedr_dev *dev = get_qedr_dev(ibdev);

 DP_DEBUG(dev, QEDR_MSG_GSI,
   "QEDR_PROCESS_MAD in_mad %x %x %x %x %x %x %x %x\n",
   mad_hdr->attr_id, mad_hdr->base_version, mad_hdr->attr_mod,
   mad_hdr->class_specific, mad_hdr->class_version,
   mad_hdr->method, mad_hdr->mgmt_class, mad_hdr->status);
 return IB_MAD_RESULT_SUCCESS;
}
