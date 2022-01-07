
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i40iw_sc_dev {int hw; } ;
struct i40iw_puda_buf {int buf_mem; int mem; } ;


 int i40iw_free_dma_mem (int ,int *) ;
 int i40iw_free_virt_mem (int ,int *) ;

__attribute__((used)) static void i40iw_puda_dele_buf(struct i40iw_sc_dev *dev,
    struct i40iw_puda_buf *buf)
{
 i40iw_free_dma_mem(dev->hw, &buf->mem);
 i40iw_free_virt_mem(dev->hw, &buf->buf_mem);
}
