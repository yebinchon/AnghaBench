
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct sec_queue {scalar_t__ regs; } ;


 scalar_t__ SEC_Q_ERR_BASE_HADDR_REG ;
 scalar_t__ SEC_Q_ERR_BASE_LADDR_REG ;
 int lower_32_bits (int ) ;
 int upper_32_bits (int ) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static void sec_queue_errbase_addr(struct sec_queue *queue, u64 addr)
{
 writel_relaxed(upper_32_bits(addr),
         queue->regs + SEC_Q_ERR_BASE_HADDR_REG);
 writel_relaxed(lower_32_bits(addr),
         queue->regs + SEC_Q_ERR_BASE_LADDR_REG);
}
