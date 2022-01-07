
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct dma_async_tx_descriptor {int dummy; } ;
struct async_submit_ctl {int dummy; } ;


 int ASYNC_TX_ACK ;
 int ASYNC_TX_XOR_DROP_DST ;
 int async_tx_quiesce (struct dma_async_tx_descriptor**) ;
 struct dma_async_tx_descriptor* async_xor (struct page*,struct page**,int ,int,int,struct async_submit_ctl*) ;
 int init_async_submit (struct async_submit_ctl*,int,int *,int *,int *,int *) ;

__attribute__((used)) static void ppl_xor(int size, struct page *page1, struct page *page2)
{
 struct async_submit_ctl submit;
 struct dma_async_tx_descriptor *tx;
 struct page *xor_srcs[] = { page1, page2 };

 init_async_submit(&submit, ASYNC_TX_ACK|ASYNC_TX_XOR_DROP_DST,
     ((void*)0), ((void*)0), ((void*)0), ((void*)0));
 tx = async_xor(page1, xor_srcs, 0, 2, size, &submit);

 async_tx_quiesce(&tx);
}
