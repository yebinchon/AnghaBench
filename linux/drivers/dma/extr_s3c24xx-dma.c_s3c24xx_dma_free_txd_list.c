
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s3c24xx_dma_engine {int dummy; } ;
struct s3c24xx_dma_chan {int vc; } ;


 int LIST_HEAD (int ) ;
 int head ;
 int vchan_dma_desc_free_list (int *,int *) ;
 int vchan_get_all_descriptors (int *,int *) ;

__attribute__((used)) static void s3c24xx_dma_free_txd_list(struct s3c24xx_dma_engine *s3cdma,
    struct s3c24xx_dma_chan *s3cchan)
{
 LIST_HEAD(head);

 vchan_get_all_descriptors(&s3cchan->vc, &head);
 vchan_dma_desc_free_list(&s3cchan->vc, &head);
}
