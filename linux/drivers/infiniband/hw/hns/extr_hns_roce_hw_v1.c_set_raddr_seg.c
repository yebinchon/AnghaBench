
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct hns_roce_wqe_raddr_seg {scalar_t__ len; int rkey; int raddr; } ;


 int cpu_to_le32 (int ) ;
 int cpu_to_le64 (int ) ;

__attribute__((used)) static void set_raddr_seg(struct hns_roce_wqe_raddr_seg *rseg, u64 remote_addr,
     u32 rkey)
{
 rseg->raddr = cpu_to_le64(remote_addr);
 rseg->rkey = cpu_to_le32(rkey);
 rseg->len = 0;
}
