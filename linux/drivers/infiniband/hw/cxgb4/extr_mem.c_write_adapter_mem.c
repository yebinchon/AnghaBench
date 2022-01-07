
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct sk_buff {int dummy; } ;
struct c4iw_wr_wait {int dummy; } ;
struct TYPE_2__ {int pdev; int ulptx_memwrite_dsgl; } ;
struct c4iw_rdev {TYPE_1__ lldi; } ;


 int _c4iw_write_mem_dma (struct c4iw_rdev*,scalar_t__,scalar_t__,void*,struct sk_buff*,struct c4iw_wr_wait*) ;
 int _c4iw_write_mem_inline (struct c4iw_rdev*,scalar_t__,scalar_t__,void*,struct sk_buff*,struct c4iw_wr_wait*) ;
 scalar_t__ inline_threshold ;
 int pci_name (int ) ;
 int pr_warn_ratelimited (char*,int ) ;
 int use_dsgl ;

__attribute__((used)) static int write_adapter_mem(struct c4iw_rdev *rdev, u32 addr, u32 len,
        void *data, struct sk_buff *skb,
        struct c4iw_wr_wait *wr_waitp)
{
 int ret;

 if (!rdev->lldi.ulptx_memwrite_dsgl || !use_dsgl) {
  ret = _c4iw_write_mem_inline(rdev, addr, len, data, skb,
           wr_waitp);
  goto out;
 }

 if (len <= inline_threshold) {
  ret = _c4iw_write_mem_inline(rdev, addr, len, data, skb,
           wr_waitp);
  goto out;
 }

 ret = _c4iw_write_mem_dma(rdev, addr, len, data, skb, wr_waitp);
 if (ret) {
  pr_warn_ratelimited("%s: dma map failure (non fatal)\n",
        pci_name(rdev->lldi.pdev));
  ret = _c4iw_write_mem_inline(rdev, addr, len, data, skb,
           wr_waitp);
 }
out:
 return ret;

}
