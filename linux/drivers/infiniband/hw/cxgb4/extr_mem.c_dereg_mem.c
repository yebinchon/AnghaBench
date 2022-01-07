
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int dummy; } ;
struct c4iw_wr_wait {int dummy; } ;
struct c4iw_rdev {int dummy; } ;


 int write_tpt_entry (struct c4iw_rdev*,int,int *,int ,int ,int ,int ,int ,int ,unsigned long,int ,int ,int ,int ,struct sk_buff*,struct c4iw_wr_wait*) ;

__attribute__((used)) static int dereg_mem(struct c4iw_rdev *rdev, u32 stag, u32 pbl_size,
       u32 pbl_addr, struct sk_buff *skb,
       struct c4iw_wr_wait *wr_waitp)
{
 return write_tpt_entry(rdev, 1, &stag, 0, 0, 0, 0, 0, 0, 0UL, 0, 0,
          pbl_size, pbl_addr, skb, wr_waitp);
}
