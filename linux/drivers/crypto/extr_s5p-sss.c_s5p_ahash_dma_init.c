
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct s5p_aes_dev {int dummy; } ;


 int SSS_FCINTENCLR_HDONEINTENCLR ;
 int SSS_FCINTENCLR_HPARTINTENCLR ;
 int SSS_FCINTENCLR_HRDMAINTENCLR ;
 int SSS_FCINTENSET_HDONEINTENSET ;
 int SSS_FCINTENSET_HPARTINTENSET ;
 int SSS_FCINTENSET_HRDMAINTENSET ;
 int SSS_HASHIN_MASK ;
 int s5p_hash_dma_enable (struct s5p_aes_dev*) ;
 int s5p_hash_dma_flush (struct s5p_aes_dev*) ;
 int s5p_hash_irq_disable (struct s5p_aes_dev*,int) ;
 int s5p_hash_irq_enable (struct s5p_aes_dev*,int) ;
 int s5p_hash_set_flow (struct s5p_aes_dev*,int) ;

__attribute__((used)) static void s5p_ahash_dma_init(struct s5p_aes_dev *dev, u32 hashflow)
{
 s5p_hash_irq_disable(dev, SSS_FCINTENCLR_HRDMAINTENCLR |
        SSS_FCINTENCLR_HDONEINTENCLR |
        SSS_FCINTENCLR_HPARTINTENCLR);
 s5p_hash_dma_flush(dev);

 s5p_hash_dma_enable(dev);
 s5p_hash_set_flow(dev, hashflow & SSS_HASHIN_MASK);
 s5p_hash_irq_enable(dev, SSS_FCINTENSET_HRDMAINTENSET |
       SSS_FCINTENSET_HDONEINTENSET |
       SSS_FCINTENSET_HPARTINTENSET);
}
