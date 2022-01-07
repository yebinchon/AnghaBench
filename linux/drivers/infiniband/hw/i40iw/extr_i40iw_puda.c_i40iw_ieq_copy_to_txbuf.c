
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_2__ {scalar_t__ va; } ;
struct i40iw_puda_buf {TYPE_1__ mem; } ;


 int memcpy (void*,void*,int) ;

__attribute__((used)) static void i40iw_ieq_copy_to_txbuf(struct i40iw_puda_buf *buf,
        struct i40iw_puda_buf *txbuf,
        u16 buf_offset, u32 txbuf_offset,
        u32 length)
{
 void *mem1 = (u8 *)buf->mem.va + buf_offset;
 void *mem2 = (u8 *)txbuf->mem.va + txbuf_offset;

 memcpy(mem2, mem1, length);
}
