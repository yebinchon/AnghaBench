
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
 int ENOMEM ;
 int GFP_ATOMIC ;
 scalar_t__ __get_free_pages (int ,int ) ;
 int get_order (int) ;
 int kfree (struct scatterlist*) ;
 struct scatterlist* kmalloc (int,int ) ;
 int s5p_sg_copy_buf (void*,struct scatterlist*,int ,int ) ;
 int sg_init_table (struct scatterlist*,int) ;
 int sg_set_buf (struct scatterlist*,void*,int) ;

__attribute__((used)) static int s5p_make_sg_cpy(struct s5p_aes_dev *dev, struct scatterlist *src,
      struct scatterlist **dst)
{
 void *pages;
 int len;

 *dst = kmalloc(sizeof(**dst), GFP_ATOMIC);
 if (!*dst)
  return -ENOMEM;

 len = ALIGN(dev->req->nbytes, AES_BLOCK_SIZE);
 pages = (void *)__get_free_pages(GFP_ATOMIC, get_order(len));
 if (!pages) {
  kfree(*dst);
  *dst = ((void*)0);
  return -ENOMEM;
 }

 s5p_sg_copy_buf(pages, src, dev->req->nbytes, 0);

 sg_init_table(*dst, 1);
 sg_set_buf(*dst, pages, len);

 return 0;
}
