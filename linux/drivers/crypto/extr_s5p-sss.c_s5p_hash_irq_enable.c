
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s5p_aes_dev {int dummy; } ;


 int FCINTENSET ;
 int SSS_WRITE (struct s5p_aes_dev*,int ,int) ;

__attribute__((used)) static void s5p_hash_irq_enable(struct s5p_aes_dev *dev, int flags)
{
 SSS_WRITE(dev, FCINTENSET, flags);
}
