
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
struct s5p_aes_dev {int dummy; } ;


 int FCBTDMAL ;
 int FCBTDMAS ;
 int SSS_WRITE (struct s5p_aes_dev*,int ,int ) ;
 int sg_dma_address (struct scatterlist const*) ;
 int sg_dma_len (struct scatterlist const*) ;

__attribute__((used)) static void s5p_set_dma_outdata(struct s5p_aes_dev *dev,
    const struct scatterlist *sg)
{
 SSS_WRITE(dev, FCBTDMAS, sg_dma_address(sg));
 SSS_WRITE(dev, FCBTDMAL, sg_dma_len(sg));
}
