
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct s5p_aes_dev {int lock; } ;


 int FCFIFOCTRL ;
 int SSS_HASHIN_MASK ;
 int SSS_READ (struct s5p_aes_dev*,int ) ;
 int SSS_WRITE (struct s5p_aes_dev*,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void s5p_hash_set_flow(struct s5p_aes_dev *dev, u32 hashflow)
{
 unsigned long flags;
 u32 flow;

 spin_lock_irqsave(&dev->lock, flags);

 flow = SSS_READ(dev, FCFIFOCTRL);
 flow &= ~SSS_HASHIN_MASK;
 flow |= hashflow;
 SSS_WRITE(dev, FCFIFOCTRL, flow);

 spin_unlock_irqrestore(&dev->lock, flags);
}
