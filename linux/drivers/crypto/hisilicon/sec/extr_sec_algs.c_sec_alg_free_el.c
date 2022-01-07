
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sec_request_el {struct sec_request_el* sgl_out; struct sec_request_el* sgl_in; int dma_in; int in; int dma_out; int out; } ;
struct sec_dev_info {int dummy; } ;


 int kfree (struct sec_request_el*) ;
 int sec_free_hw_sgl (int ,int ,struct sec_dev_info*) ;

__attribute__((used)) static void sec_alg_free_el(struct sec_request_el *el,
       struct sec_dev_info *info)
{
 sec_free_hw_sgl(el->out, el->dma_out, info);
 sec_free_hw_sgl(el->in, el->dma_in, info);
 kfree(el->sgl_in);
 kfree(el->sgl_out);
 kfree(el);
}
