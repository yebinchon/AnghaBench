
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct ipu_soc {int lock; } ;
struct TYPE_4__ {int mask; int val; int reg; } ;
struct TYPE_3__ {int mask; int val; int reg; } ;
struct fsu_link_info {TYPE_2__ sink; TYPE_1__ src; } ;


 int EINVAL ;
 struct fsu_link_info* find_fsu_link_info (int,int) ;
 int ipu_cm_read (struct ipu_soc*,int ) ;
 int ipu_cm_write (struct ipu_soc*,int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int ipu_fsu_link(struct ipu_soc *ipu, int src_ch, int sink_ch)
{
 const struct fsu_link_info *link;
 u32 src_reg, sink_reg;
 unsigned long flags;

 link = find_fsu_link_info(src_ch, sink_ch);
 if (!link)
  return -EINVAL;

 spin_lock_irqsave(&ipu->lock, flags);

 if (link->src.mask) {
  src_reg = ipu_cm_read(ipu, link->src.reg);
  src_reg &= ~link->src.mask;
  src_reg |= link->src.val;
  ipu_cm_write(ipu, src_reg, link->src.reg);
 }

 if (link->sink.mask) {
  sink_reg = ipu_cm_read(ipu, link->sink.reg);
  sink_reg &= ~link->sink.mask;
  sink_reg |= link->sink.val;
  ipu_cm_write(ipu, sink_reg, link->sink.reg);
 }

 spin_unlock_irqrestore(&ipu->lock, flags);
 return 0;
}
