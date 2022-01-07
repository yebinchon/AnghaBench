
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stm32_hash_dev {int dma_lch; int dev; int dma_completion; int flags; } ;
struct scatterlist {int dummy; } ;
struct dma_async_tx_descriptor {struct stm32_hash_dev* callback_param; int callback; } ;
typedef int dma_cookie_t ;


 scalar_t__ DMA_COMPLETE ;
 int DMA_CTRL_ACK ;
 int DMA_MEM_TO_DEV ;
 int DMA_PREP_INTERRUPT ;
 int EINPROGRESS ;
 int ENOMEM ;
 int ETIMEDOUT ;
 int HASH_CR ;
 int HASH_CR_DMAE ;
 int HASH_CR_MDMAT ;
 int HASH_FLAGS_DMA_ACTIVE ;
 int HASH_FLAGS_FINAL ;
 int dev_err (int ,char*,...) ;
 scalar_t__ dma_async_is_tx_complete (int ,int ,int *,int *) ;
 int dma_async_issue_pending (int ) ;
 int dma_submit_error (int ) ;
 struct dma_async_tx_descriptor* dmaengine_prep_slave_sg (int ,struct scatterlist*,int,int ,int) ;
 int dmaengine_submit (struct dma_async_tx_descriptor*) ;
 int dmaengine_terminate_all (int ) ;
 int msecs_to_jiffies (int) ;
 int reinit_completion (int *) ;
 int stm32_hash_dma_callback ;
 int stm32_hash_read (struct stm32_hash_dev*,int ) ;
 int stm32_hash_set_nblw (struct stm32_hash_dev*,int) ;
 int stm32_hash_write (struct stm32_hash_dev*,int ,int ) ;
 int wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int stm32_hash_xmit_dma(struct stm32_hash_dev *hdev,
          struct scatterlist *sg, int length, int mdma)
{
 struct dma_async_tx_descriptor *in_desc;
 dma_cookie_t cookie;
 u32 reg;
 int err;

 in_desc = dmaengine_prep_slave_sg(hdev->dma_lch, sg, 1,
       DMA_MEM_TO_DEV, DMA_PREP_INTERRUPT |
       DMA_CTRL_ACK);
 if (!in_desc) {
  dev_err(hdev->dev, "dmaengine_prep_slave error\n");
  return -ENOMEM;
 }

 reinit_completion(&hdev->dma_completion);
 in_desc->callback = stm32_hash_dma_callback;
 in_desc->callback_param = hdev;

 hdev->flags |= HASH_FLAGS_FINAL;
 hdev->flags |= HASH_FLAGS_DMA_ACTIVE;

 reg = stm32_hash_read(hdev, HASH_CR);

 if (mdma)
  reg |= HASH_CR_MDMAT;
 else
  reg &= ~HASH_CR_MDMAT;

 reg |= HASH_CR_DMAE;

 stm32_hash_write(hdev, HASH_CR, reg);

 stm32_hash_set_nblw(hdev, length);

 cookie = dmaengine_submit(in_desc);
 err = dma_submit_error(cookie);
 if (err)
  return -ENOMEM;

 dma_async_issue_pending(hdev->dma_lch);

 if (!wait_for_completion_timeout(&hdev->dma_completion,
      msecs_to_jiffies(100)))
  err = -ETIMEDOUT;

 if (dma_async_is_tx_complete(hdev->dma_lch, cookie,
         ((void*)0), ((void*)0)) != DMA_COMPLETE)
  err = -ETIMEDOUT;

 if (err) {
  dev_err(hdev->dev, "DMA Error %i\n", err);
  dmaengine_terminate_all(hdev->dma_lch);
  return err;
 }

 return -EINPROGRESS;
}
