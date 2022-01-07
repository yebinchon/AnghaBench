
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ has_dma; } ;
struct atmel_sha_dev {TYPE_1__ caps; } ;
typedef int dma_addr_t ;


 int atmel_sha_xmit_dma (struct atmel_sha_dev*,int ,size_t,int ,size_t,int) ;
 int atmel_sha_xmit_pdc (struct atmel_sha_dev*,int ,size_t,int ,size_t,int) ;

__attribute__((used)) static int atmel_sha_xmit_start(struct atmel_sha_dev *dd, dma_addr_t dma_addr1,
  size_t length1, dma_addr_t dma_addr2, size_t length2, int final)
{
 if (dd->caps.has_dma)
  return atmel_sha_xmit_dma(dd, dma_addr1, length1,
    dma_addr2, length2, final);
 else
  return atmel_sha_xmit_pdc(dd, dma_addr1, length1,
    dma_addr2, length2, final);
}
