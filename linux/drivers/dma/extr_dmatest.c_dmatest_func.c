
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned int u8 ;
struct page {int dummy; } ;
struct dmatest_data {int cnt; unsigned int off; int ** aligned; } ;
struct dmatest_done {int done; } ;
struct dmatest_thread {int pending; scalar_t__ type; int done; int done_wait; struct dmatest_data dst; struct dmatest_data src; struct dma_chan* chan; struct dmatest_info* info; struct dmatest_done test_done; } ;
struct dmatest_params {scalar_t__ alignment; int xor_sources; int pq_sources; unsigned int buf_size; unsigned int iterations; int transfer_size; scalar_t__ noverify; int timeout; scalar_t__ polled; scalar_t__ norandom; } ;
struct dmatest_info {struct dmatest_params params; } ;
struct dmaengine_unmap_data {unsigned int len; unsigned int* addr; int bidi_cnt; int to_cnt; } ;
struct dma_device {unsigned int copy_align; unsigned int fill_align; unsigned int xor_align; unsigned int pq_align; struct dma_async_tx_descriptor* (* device_prep_dma_pq ) (struct dma_chan*,unsigned int*,unsigned int*,int,unsigned int*,unsigned int,int) ;struct dma_async_tx_descriptor* (* device_prep_dma_xor ) (struct dma_chan*,unsigned int,unsigned int*,int,unsigned int,int) ;struct dma_async_tx_descriptor* (* device_prep_dma_memset ) (struct dma_chan*,unsigned int,int ,unsigned int,int) ;struct dma_async_tx_descriptor* (* device_prep_dma_memcpy ) (struct dma_chan*,unsigned int,unsigned int,unsigned int,int) ;int dev; int max_xor; } ;
struct dma_chan {struct dma_device* device; } ;
struct dma_async_tx_descriptor {int (* tx_submit ) (struct dma_async_tx_descriptor*) ;struct dmatest_done* callback_param; int callback; } ;
typedef int s64 ;
typedef int ktime_t ;
typedef enum dma_status { ____Placeholder_dma_status } dma_status ;
typedef enum dma_ctrl_flags { ____Placeholder_dma_ctrl_flags } dma_ctrl_flags ;
typedef int dma_cookie_t ;
typedef unsigned int dma_addr_t ;
struct TYPE_3__ {int comm; } ;


 int DMA_BIDIRECTIONAL ;
 int DMA_COMPLETE ;
 int DMA_CTRL_ACK ;
 int DMA_ERROR ;
 scalar_t__ DMA_MEMCPY ;
 scalar_t__ DMA_MEMSET ;
 scalar_t__ DMA_PQ ;
 int DMA_PREP_INTERRUPT ;
 int DMA_TO_DEVICE ;
 scalar_t__ DMA_XOR ;
 int ENOMEM ;
 int FIXPT_GET_FRAC (unsigned long long) ;
 int FIXPT_TO_INT (unsigned long long) ;
 int GFP_KERNEL ;
 int PATTERN_COPY ;
 int PATTERN_DST ;
 int PATTERN_SRC ;
 TYPE_1__* current ;
 int dma_async_is_tx_complete (struct dma_chan*,int ,int *,int *) ;
 int dma_async_issue_pending (struct dma_chan*) ;
 void* dma_map_page (int ,struct page*,unsigned long,unsigned int,int ) ;
 int dma_mapping_error (int ,unsigned int) ;
 int dma_maxpq (struct dma_device*,int ) ;
 scalar_t__ dma_submit_error (int ) ;
 int dma_sync_wait (struct dma_chan*,int ) ;
 struct dmaengine_unmap_data* dmaengine_get_unmap_data (int ,int,int ) ;
 int dmaengine_terminate_sync (struct dma_chan*) ;
 int dmaengine_unmap_put (struct dmaengine_unmap_data*) ;
 int dmatest_KBs (int ,unsigned long long) ;
 scalar_t__ dmatest_alloc_test_data (struct dmatest_data*,unsigned int,unsigned int) ;
 int dmatest_callback ;
 int dmatest_free_test_data (struct dmatest_data*) ;
 int dmatest_init_dsts (int **,unsigned int,unsigned int,unsigned int,int) ;
 int dmatest_init_srcs (int **,unsigned int,unsigned int,unsigned int,int) ;
 unsigned long long dmatest_persec (int ,unsigned int) ;
 unsigned int dmatest_random () ;
 unsigned int dmatest_verify (int **,unsigned int,unsigned int,unsigned int,int,int,int) ;
 unsigned int* kcalloc (int,int,int ) ;
 int kfree (unsigned int*) ;
 unsigned int* kmalloc (int,int ) ;
 int kthread_should_stop () ;
 int ktime_add (int ,int ) ;
 int ktime_get () ;
 int ktime_sub (int ,int ) ;
 int ktime_to_us (int ) ;
 void* min_odd (int,int ) ;
 int msecs_to_jiffies (int ) ;
 int msleep (int) ;
 unsigned long offset_in_page (void*) ;
 int pr_debug (char*,int ) ;
 int pr_err (char*,unsigned int,...) ;
 int pr_info (char*,int ,unsigned int,unsigned int,int ,int ,int ,int) ;
 int result (char*,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int) ;
 int set_freezable () ;
 int set_user_nice (TYPE_1__*,int) ;
 int smp_rmb () ;
 struct dma_async_tx_descriptor* stub1 (struct dma_chan*,unsigned int,unsigned int,unsigned int,int) ;
 struct dma_async_tx_descriptor* stub2 (struct dma_chan*,unsigned int,int ,unsigned int,int) ;
 struct dma_async_tx_descriptor* stub3 (struct dma_chan*,unsigned int,unsigned int*,int,unsigned int,int) ;
 struct dma_async_tx_descriptor* stub4 (struct dma_chan*,unsigned int*,unsigned int*,int,unsigned int*,unsigned int,int) ;
 int stub5 (struct dma_async_tx_descriptor*) ;
 int thread_wait ;
 int verbose_result (char*,unsigned int,unsigned int,unsigned int,unsigned int,int ) ;
 struct page* virt_to_page (void*) ;
 int wait_event_freezable_timeout (int ,int,int ) ;
 int wake_up (int *) ;

__attribute__((used)) static int dmatest_func(void *data)
{
 struct dmatest_thread *thread = data;
 struct dmatest_done *done = &thread->test_done;
 struct dmatest_info *info;
 struct dmatest_params *params;
 struct dma_chan *chan;
 struct dma_device *dev;
 unsigned int error_count;
 unsigned int failed_tests = 0;
 unsigned int total_tests = 0;
 dma_cookie_t cookie;
 enum dma_status status;
 enum dma_ctrl_flags flags;
 u8 *pq_coefs = ((void*)0);
 int ret;
 unsigned int buf_size;
 struct dmatest_data *src;
 struct dmatest_data *dst;
 int i;
 ktime_t ktime, start, diff;
 ktime_t filltime = 0;
 ktime_t comparetime = 0;
 s64 runtime = 0;
 unsigned long long total_len = 0;
 unsigned long long iops = 0;
 u8 align = 0;
 bool is_memset = 0;
 dma_addr_t *srcs;
 dma_addr_t *dma_pq;

 set_freezable();

 ret = -ENOMEM;

 smp_rmb();
 thread->pending = 0;
 info = thread->info;
 params = &info->params;
 chan = thread->chan;
 dev = chan->device;
 src = &thread->src;
 dst = &thread->dst;
 if (thread->type == DMA_MEMCPY) {
  align = params->alignment < 0 ? dev->copy_align :
      params->alignment;
  src->cnt = dst->cnt = 1;
 } else if (thread->type == DMA_MEMSET) {
  align = params->alignment < 0 ? dev->fill_align :
      params->alignment;
  src->cnt = dst->cnt = 1;
  is_memset = 1;
 } else if (thread->type == DMA_XOR) {

  src->cnt = min_odd(params->xor_sources | 1, dev->max_xor);
  dst->cnt = 1;
  align = params->alignment < 0 ? dev->xor_align :
      params->alignment;
 } else if (thread->type == DMA_PQ) {

  src->cnt = min_odd(params->pq_sources | 1, dma_maxpq(dev, 0));
  dst->cnt = 2;
  align = params->alignment < 0 ? dev->pq_align :
      params->alignment;

  pq_coefs = kmalloc(params->pq_sources + 1, GFP_KERNEL);
  if (!pq_coefs)
   goto err_thread_type;

  for (i = 0; i < src->cnt; i++)
   pq_coefs[i] = 1;
 } else
  goto err_thread_type;


 if ((src->cnt + dst->cnt) >= 255) {
  pr_err("too many buffers (%d of 255 supported)\n",
         src->cnt + dst->cnt);
  goto err_free_coefs;
 }

 buf_size = params->buf_size;
 if (1 << align > buf_size) {
  pr_err("%u-byte buffer too small for %d-byte alignment\n",
         buf_size, 1 << align);
  goto err_free_coefs;
 }

 if (dmatest_alloc_test_data(src, buf_size, align) < 0)
  goto err_free_coefs;

 if (dmatest_alloc_test_data(dst, buf_size, align) < 0)
  goto err_src;

 set_user_nice(current, 10);

 srcs = kcalloc(src->cnt, sizeof(dma_addr_t), GFP_KERNEL);
 if (!srcs)
  goto err_dst;

 dma_pq = kcalloc(dst->cnt, sizeof(dma_addr_t), GFP_KERNEL);
 if (!dma_pq)
  goto err_srcs_array;




 if (params->polled)
  flags = DMA_CTRL_ACK;
 else
  flags = DMA_CTRL_ACK | DMA_PREP_INTERRUPT;

 ktime = ktime_get();
 while (!kthread_should_stop()
        && !(params->iterations && total_tests >= params->iterations)) {
  struct dma_async_tx_descriptor *tx = ((void*)0);
  struct dmaengine_unmap_data *um;
  dma_addr_t *dsts;
  unsigned int len;

  total_tests++;

  if (params->transfer_size) {
   if (params->transfer_size >= buf_size) {
    pr_err("%u-byte transfer size must be lower than %u-buffer size\n",
           params->transfer_size, buf_size);
    break;
   }
   len = params->transfer_size;
  } else if (params->norandom) {
   len = buf_size;
  } else {
   len = dmatest_random() % buf_size + 1;
  }


  if (!params->transfer_size) {
   len = (len >> align) << align;
   if (!len)
    len = 1 << align;
  }
  total_len += len;

  if (params->norandom) {
   src->off = 0;
   dst->off = 0;
  } else {
   src->off = dmatest_random() % (buf_size - len + 1);
   dst->off = dmatest_random() % (buf_size - len + 1);

   src->off = (src->off >> align) << align;
   dst->off = (dst->off >> align) << align;
  }

  if (!params->noverify) {
   start = ktime_get();
   dmatest_init_srcs(src->aligned, src->off, len,
       buf_size, is_memset);
   dmatest_init_dsts(dst->aligned, dst->off, len,
       buf_size, is_memset);

   diff = ktime_sub(ktime_get(), start);
   filltime = ktime_add(filltime, diff);
  }

  um = dmaengine_get_unmap_data(dev->dev, src->cnt + dst->cnt,
           GFP_KERNEL);
  if (!um) {
   failed_tests++;
   result("unmap data NULL", total_tests,
          src->off, dst->off, len, ret);
   continue;
  }

  um->len = buf_size;
  for (i = 0; i < src->cnt; i++) {
   void *buf = src->aligned[i];
   struct page *pg = virt_to_page(buf);
   unsigned long pg_off = offset_in_page(buf);

   um->addr[i] = dma_map_page(dev->dev, pg, pg_off,
         um->len, DMA_TO_DEVICE);
   srcs[i] = um->addr[i] + src->off;
   ret = dma_mapping_error(dev->dev, um->addr[i]);
   if (ret) {
    result("src mapping error", total_tests,
           src->off, dst->off, len, ret);
    goto error_unmap_continue;
   }
   um->to_cnt++;
  }

  dsts = &um->addr[src->cnt];
  for (i = 0; i < dst->cnt; i++) {
   void *buf = dst->aligned[i];
   struct page *pg = virt_to_page(buf);
   unsigned long pg_off = offset_in_page(buf);

   dsts[i] = dma_map_page(dev->dev, pg, pg_off, um->len,
            DMA_BIDIRECTIONAL);
   ret = dma_mapping_error(dev->dev, dsts[i]);
   if (ret) {
    result("dst mapping error", total_tests,
           src->off, dst->off, len, ret);
    goto error_unmap_continue;
   }
   um->bidi_cnt++;
  }

  if (thread->type == DMA_MEMCPY)
   tx = dev->device_prep_dma_memcpy(chan,
        dsts[0] + dst->off,
        srcs[0], len, flags);
  else if (thread->type == DMA_MEMSET)
   tx = dev->device_prep_dma_memset(chan,
      dsts[0] + dst->off,
      *(src->aligned[0] + src->off),
      len, flags);
  else if (thread->type == DMA_XOR)
   tx = dev->device_prep_dma_xor(chan,
            dsts[0] + dst->off,
            srcs, src->cnt,
            len, flags);
  else if (thread->type == DMA_PQ) {
   for (i = 0; i < dst->cnt; i++)
    dma_pq[i] = dsts[i] + dst->off;
   tx = dev->device_prep_dma_pq(chan, dma_pq, srcs,
           src->cnt, pq_coefs,
           len, flags);
  }

  if (!tx) {
   result("prep error", total_tests, src->off,
          dst->off, len, ret);
   msleep(100);
   goto error_unmap_continue;
  }

  done->done = 0;
  if (!params->polled) {
   tx->callback = dmatest_callback;
   tx->callback_param = done;
  }
  cookie = tx->tx_submit(tx);

  if (dma_submit_error(cookie)) {
   result("submit error", total_tests, src->off,
          dst->off, len, ret);
   msleep(100);
   goto error_unmap_continue;
  }

  if (params->polled) {
   status = dma_sync_wait(chan, cookie);
   dmaengine_terminate_sync(chan);
   if (status == DMA_COMPLETE)
    done->done = 1;
  } else {
   dma_async_issue_pending(chan);

   wait_event_freezable_timeout(thread->done_wait,
     done->done,
     msecs_to_jiffies(params->timeout));

   status = dma_async_is_tx_complete(chan, cookie, ((void*)0),
         ((void*)0));
  }

  if (!done->done) {
   result("test timed out", total_tests, src->off, dst->off,
          len, 0);
   goto error_unmap_continue;
  } else if (status != DMA_COMPLETE) {
   result(status == DMA_ERROR ?
          "completion error status" :
          "completion busy status", total_tests, src->off,
          dst->off, len, ret);
   goto error_unmap_continue;
  }

  dmaengine_unmap_put(um);

  if (params->noverify) {
   verbose_result("test passed", total_tests, src->off,
           dst->off, len, 0);
   continue;
  }

  start = ktime_get();
  pr_debug("%s: verifying source buffer...\n", current->comm);
  error_count = dmatest_verify(src->aligned, 0, src->off,
    0, PATTERN_SRC, 1, is_memset);
  error_count += dmatest_verify(src->aligned, src->off,
    src->off + len, src->off,
    PATTERN_SRC | PATTERN_COPY, 1, is_memset);
  error_count += dmatest_verify(src->aligned, src->off + len,
    buf_size, src->off + len,
    PATTERN_SRC, 1, is_memset);

  pr_debug("%s: verifying dest buffer...\n", current->comm);
  error_count += dmatest_verify(dst->aligned, 0, dst->off,
    0, PATTERN_DST, 0, is_memset);

  error_count += dmatest_verify(dst->aligned, dst->off,
    dst->off + len, src->off,
    PATTERN_SRC | PATTERN_COPY, 0, is_memset);

  error_count += dmatest_verify(dst->aligned, dst->off + len,
    buf_size, dst->off + len,
    PATTERN_DST, 0, is_memset);

  diff = ktime_sub(ktime_get(), start);
  comparetime = ktime_add(comparetime, diff);

  if (error_count) {
   result("data error", total_tests, src->off, dst->off,
          len, error_count);
   failed_tests++;
  } else {
   verbose_result("test passed", total_tests, src->off,
           dst->off, len, 0);
  }

  continue;

error_unmap_continue:
  dmaengine_unmap_put(um);
  failed_tests++;
 }
 ktime = ktime_sub(ktime_get(), ktime);
 ktime = ktime_sub(ktime, comparetime);
 ktime = ktime_sub(ktime, filltime);
 runtime = ktime_to_us(ktime);

 ret = 0;
 kfree(dma_pq);
err_srcs_array:
 kfree(srcs);
err_dst:
 dmatest_free_test_data(dst);
err_src:
 dmatest_free_test_data(src);
err_free_coefs:
 kfree(pq_coefs);
err_thread_type:
 iops = dmatest_persec(runtime, total_tests);
 pr_info("%s: summary %u tests, %u failures %llu.%02llu iops %llu KB/s (%d)\n",
  current->comm, total_tests, failed_tests,
  FIXPT_TO_INT(iops), FIXPT_GET_FRAC(iops),
  dmatest_KBs(runtime, total_len), ret);


 if (ret || failed_tests)
  dmaengine_terminate_sync(chan);

 thread->done = 1;
 wake_up(&thread_wait);

 return ret;
}
