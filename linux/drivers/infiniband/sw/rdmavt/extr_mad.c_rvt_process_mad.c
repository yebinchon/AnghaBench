
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct ib_wc {int dummy; } ;
struct ib_mad_hdr {int dummy; } ;
struct ib_grh {int dummy; } ;
struct ib_device {int dummy; } ;


 int EINVAL ;
 int IB_MAD_RESULT_FAILURE ;
 scalar_t__ ibport_num_to_idx (struct ib_device*,int ) ;

int rvt_process_mad(struct ib_device *ibdev, int mad_flags, u8 port_num,
      const struct ib_wc *in_wc, const struct ib_grh *in_grh,
      const struct ib_mad_hdr *in, size_t in_mad_size,
      struct ib_mad_hdr *out, size_t *out_mad_size,
      u16 *out_mad_pkey_index)
{






 if (ibport_num_to_idx(ibdev, port_num) < 0)
  return -EINVAL;

 return IB_MAD_RESULT_FAILURE;
}
