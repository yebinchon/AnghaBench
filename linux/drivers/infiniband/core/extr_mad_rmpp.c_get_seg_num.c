
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int seg_num; } ;
struct ib_rmpp_mad {TYPE_1__ rmpp_hdr; } ;
struct ib_mad_recv_buf {scalar_t__ mad; } ;


 int be32_to_cpu (int ) ;

__attribute__((used)) static inline int get_seg_num(struct ib_mad_recv_buf *seg)
{
 struct ib_rmpp_mad *rmpp_mad;

 rmpp_mad = (struct ib_rmpp_mad *) seg->mad;
 return be32_to_cpu(rmpp_mad->rmpp_hdr.seg_num);
}
