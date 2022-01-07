
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s5p_aes_dev {int dummy; } ;


 int FCHRDMAC ;
 int SSS_FCHRDMAC_FLUSH ;
 int SSS_WRITE (struct s5p_aes_dev*,int ,int ) ;

__attribute__((used)) static void s5p_hash_dma_flush(struct s5p_aes_dev *dev)
{
 SSS_WRITE(dev, FCHRDMAC, SSS_FCHRDMAC_FLUSH);
}
