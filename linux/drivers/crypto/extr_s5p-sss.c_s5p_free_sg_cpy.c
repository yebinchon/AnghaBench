
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scatterlist {int dummy; } ;
struct s5p_aes_dev {TYPE_1__* req; } ;
struct TYPE_2__ {int nbytes; } ;


 int AES_BLOCK_SIZE ;
 int ALIGN (int ,int ) ;
 int free_pages (unsigned long,int ) ;
 int get_order (int) ;
 int kfree (struct scatterlist*) ;
 scalar_t__ sg_virt (struct scatterlist*) ;

__attribute__((used)) static void s5p_free_sg_cpy(struct s5p_aes_dev *dev, struct scatterlist **sg)
{
 int len;

 if (!*sg)
  return;

 len = ALIGN(dev->req->nbytes, AES_BLOCK_SIZE);
 free_pages((unsigned long)sg_virt(*sg), get_order(len));

 kfree(*sg);
 *sg = ((void*)0);
}
