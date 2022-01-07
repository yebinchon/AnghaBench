
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct s5p_aes_dev {int dummy; } ;


 int FCINTENCLR ;
 int SSS_WRITE (struct s5p_aes_dev*,int ,int ) ;

__attribute__((used)) static void s5p_hash_irq_disable(struct s5p_aes_dev *dev, u32 flags)
{
 SSS_WRITE(dev, FCINTENCLR, flags);
}
