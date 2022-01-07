
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ioatdma_chan {int dummy; } ;


 int __ioat_issue_pending (struct ioatdma_chan*) ;
 scalar_t__ ioat_pending_level ;
 scalar_t__ ioat_ring_pending (struct ioatdma_chan*) ;

__attribute__((used)) static void ioat_update_pending(struct ioatdma_chan *ioat_chan)
{
 if (ioat_ring_pending(ioat_chan) > ioat_pending_level)
  __ioat_issue_pending(ioat_chan);
}
