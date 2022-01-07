
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct hfi1_devdata {int rcvctrl_lock; } ;


 int RCV_CTRL ;
 int read_csr (struct hfi1_devdata*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int write_csr (struct hfi1_devdata*,int ,int ) ;

__attribute__((used)) static void adjust_rcvctrl(struct hfi1_devdata *dd, u64 add, u64 clear)
{
 u64 rcvctrl;
 unsigned long flags;

 spin_lock_irqsave(&dd->rcvctrl_lock, flags);
 rcvctrl = read_csr(dd, RCV_CTRL);
 rcvctrl |= add;
 rcvctrl &= ~clear;
 write_csr(dd, RCV_CTRL, rcvctrl);
 spin_unlock_irqrestore(&dd->rcvctrl_lock, flags);
}
