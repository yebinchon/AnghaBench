#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned int u8 ;
struct page {int dummy; } ;
struct dmatest_data {int cnt; unsigned int off; int /*<<< orphan*/ ** aligned; } ;
struct dmatest_done {int done; } ;
struct dmatest_thread {int pending; scalar_t__ type; int done; int /*<<< orphan*/  done_wait; struct dmatest_data dst; struct dmatest_data src; struct dma_chan* chan; struct dmatest_info* info; struct dmatest_done test_done; } ;
struct dmatest_params {scalar_t__ alignment; int xor_sources; int pq_sources; unsigned int buf_size; unsigned int iterations; int transfer_size; scalar_t__ noverify; int /*<<< orphan*/  timeout; scalar_t__ polled; scalar_t__ norandom; } ;
struct dmatest_info {struct dmatest_params params; } ;
struct dmaengine_unmap_data {unsigned int len; unsigned int* addr; int /*<<< orphan*/  bidi_cnt; int /*<<< orphan*/  to_cnt; } ;
struct dma_device {unsigned int copy_align; unsigned int fill_align; unsigned int xor_align; unsigned int pq_align; struct dma_async_tx_descriptor* (* device_prep_dma_pq ) (struct dma_chan*,unsigned int*,unsigned int*,int,unsigned int*,unsigned int,int) ;struct dma_async_tx_descriptor* (* device_prep_dma_xor ) (struct dma_chan*,unsigned int,unsigned int*,int,unsigned int,int) ;struct dma_async_tx_descriptor* (* device_prep_dma_memset ) (struct dma_chan*,unsigned int,int /*<<< orphan*/ ,unsigned int,int) ;struct dma_async_tx_descriptor* (* device_prep_dma_memcpy ) (struct dma_chan*,unsigned int,unsigned int,unsigned int,int) ;int /*<<< orphan*/  dev; int /*<<< orphan*/  max_xor; } ;
struct dma_chan {struct dma_device* device; } ;
struct dma_async_tx_descriptor {int /*<<< orphan*/  (* tx_submit ) (struct dma_async_tx_descriptor*) ;struct dmatest_done* callback_param; int /*<<< orphan*/  callback; } ;
typedef  int /*<<< orphan*/  s64 ;
typedef  int /*<<< orphan*/  ktime_t ;
typedef  enum dma_status { ____Placeholder_dma_status } dma_status ;
typedef  enum dma_ctrl_flags { ____Placeholder_dma_ctrl_flags } dma_ctrl_flags ;
typedef  int /*<<< orphan*/  dma_cookie_t ;
typedef  unsigned int dma_addr_t ;
struct TYPE_3__ {int /*<<< orphan*/  comm; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 int DMA_COMPLETE ; 
 int DMA_CTRL_ACK ; 
 int DMA_ERROR ; 
 scalar_t__ DMA_MEMCPY ; 
 scalar_t__ DMA_MEMSET ; 
 scalar_t__ DMA_PQ ; 
 int DMA_PREP_INTERRUPT ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 scalar_t__ DMA_XOR ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (unsigned long long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long long) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int PATTERN_COPY ; 
 int PATTERN_DST ; 
 int PATTERN_SRC ; 
 TYPE_1__* current ; 
 int FUNC2 (struct dma_chan*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct dma_chan*) ; 
 void* FUNC4 (int /*<<< orphan*/ ,struct page*,unsigned long,unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct dma_device*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (struct dma_chan*,int /*<<< orphan*/ ) ; 
 struct dmaengine_unmap_data* FUNC9 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC11 (struct dmaengine_unmap_data*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,unsigned long long) ; 
 scalar_t__ FUNC13 (struct dmatest_data*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  dmatest_callback ; 
 int /*<<< orphan*/  FUNC14 (struct dmatest_data*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ **,unsigned int,unsigned int,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ **,unsigned int,unsigned int,unsigned int,int) ; 
 unsigned long long FUNC17 (int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC18 () ; 
 unsigned int FUNC19 (int /*<<< orphan*/ **,unsigned int,unsigned int,unsigned int,int,int,int) ; 
 unsigned int* FUNC20 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (unsigned int*) ; 
 unsigned int* FUNC22 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 () ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 () ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ) ; 
 void* FUNC28 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (int) ; 
 unsigned long FUNC31 (void*) ; 
 int /*<<< orphan*/  FUNC32 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC33 (char*,unsigned int,...) ; 
 int /*<<< orphan*/  FUNC34 (char*,int /*<<< orphan*/ ,unsigned int,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC35 (char*,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC36 () ; 
 int /*<<< orphan*/  FUNC37 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC38 () ; 
 struct dma_async_tx_descriptor* FUNC39 (struct dma_chan*,unsigned int,unsigned int,unsigned int,int) ; 
 struct dma_async_tx_descriptor* FUNC40 (struct dma_chan*,unsigned int,int /*<<< orphan*/ ,unsigned int,int) ; 
 struct dma_async_tx_descriptor* FUNC41 (struct dma_chan*,unsigned int,unsigned int*,int,unsigned int,int) ; 
 struct dma_async_tx_descriptor* FUNC42 (struct dma_chan*,unsigned int*,unsigned int*,int,unsigned int*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC43 (struct dma_async_tx_descriptor*) ; 
 int /*<<< orphan*/  thread_wait ; 
 int /*<<< orphan*/  FUNC44 (char*,unsigned int,unsigned int,unsigned int,unsigned int,int /*<<< orphan*/ ) ; 
 struct page* FUNC45 (void*) ; 
 int /*<<< orphan*/  FUNC46 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC47 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC48(void *data)
{
	struct dmatest_thread	*thread = data;
	struct dmatest_done	*done = &thread->test_done;
	struct dmatest_info	*info;
	struct dmatest_params	*params;
	struct dma_chan		*chan;
	struct dma_device	*dev;
	unsigned int		error_count;
	unsigned int		failed_tests = 0;
	unsigned int		total_tests = 0;
	dma_cookie_t		cookie;
	enum dma_status		status;
	enum dma_ctrl_flags 	flags;
	u8			*pq_coefs = NULL;
	int			ret;
	unsigned int 		buf_size;
	struct dmatest_data	*src;
	struct dmatest_data	*dst;
	int			i;
	ktime_t			ktime, start, diff;
	ktime_t			filltime = 0;
	ktime_t			comparetime = 0;
	s64			runtime = 0;
	unsigned long long	total_len = 0;
	unsigned long long	iops = 0;
	u8			align = 0;
	bool			is_memset = false;
	dma_addr_t		*srcs;
	dma_addr_t		*dma_pq;

	FUNC36();

	ret = -ENOMEM;

	FUNC38();
	thread->pending = false;
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
		is_memset = true;
	} else if (thread->type == DMA_XOR) {
		/* force odd to ensure dst = src */
		src->cnt = FUNC28(params->xor_sources | 1, dev->max_xor);
		dst->cnt = 1;
		align = params->alignment < 0 ? dev->xor_align :
						params->alignment;
	} else if (thread->type == DMA_PQ) {
		/* force odd to ensure dst = src */
		src->cnt = FUNC28(params->pq_sources | 1, FUNC6(dev, 0));
		dst->cnt = 2;
		align = params->alignment < 0 ? dev->pq_align :
						params->alignment;

		pq_coefs = FUNC22(params->pq_sources + 1, GFP_KERNEL);
		if (!pq_coefs)
			goto err_thread_type;

		for (i = 0; i < src->cnt; i++)
			pq_coefs[i] = 1;
	} else
		goto err_thread_type;

	/* Check if buffer count fits into map count variable (u8) */
	if ((src->cnt + dst->cnt) >= 255) {
		FUNC33("too many buffers (%d of 255 supported)\n",
		       src->cnt + dst->cnt);
		goto err_free_coefs;
	}

	buf_size = params->buf_size;
	if (1 << align > buf_size) {
		FUNC33("%u-byte buffer too small for %d-byte alignment\n",
		       buf_size, 1 << align);
		goto err_free_coefs;
	}

	if (FUNC13(src, buf_size, align) < 0)
		goto err_free_coefs;

	if (FUNC13(dst, buf_size, align) < 0)
		goto err_src;

	FUNC37(current, 10);

	srcs = FUNC20(src->cnt, sizeof(dma_addr_t), GFP_KERNEL);
	if (!srcs)
		goto err_dst;

	dma_pq = FUNC20(dst->cnt, sizeof(dma_addr_t), GFP_KERNEL);
	if (!dma_pq)
		goto err_srcs_array;

	/*
	 * src and dst buffers are freed by ourselves below
	 */
	if (params->polled)
		flags = DMA_CTRL_ACK;
	else
		flags = DMA_CTRL_ACK | DMA_PREP_INTERRUPT;

	ktime = FUNC25();
	while (!FUNC23()
	       && !(params->iterations && total_tests >= params->iterations)) {
		struct dma_async_tx_descriptor *tx = NULL;
		struct dmaengine_unmap_data *um;
		dma_addr_t *dsts;
		unsigned int len;

		total_tests++;

		if (params->transfer_size) {
			if (params->transfer_size >= buf_size) {
				FUNC33("%u-byte transfer size must be lower than %u-buffer size\n",
				       params->transfer_size, buf_size);
				break;
			}
			len = params->transfer_size;
		} else if (params->norandom) {
			len = buf_size;
		} else {
			len = FUNC18() % buf_size + 1;
		}

		/* Do not alter transfer size explicitly defined by user */
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
			src->off = FUNC18() % (buf_size - len + 1);
			dst->off = FUNC18() % (buf_size - len + 1);

			src->off = (src->off >> align) << align;
			dst->off = (dst->off >> align) << align;
		}

		if (!params->noverify) {
			start = FUNC25();
			FUNC16(src->aligned, src->off, len,
					  buf_size, is_memset);
			FUNC15(dst->aligned, dst->off, len,
					  buf_size, is_memset);

			diff = FUNC26(FUNC25(), start);
			filltime = FUNC24(filltime, diff);
		}

		um = FUNC9(dev->dev, src->cnt + dst->cnt,
					      GFP_KERNEL);
		if (!um) {
			failed_tests++;
			FUNC35("unmap data NULL", total_tests,
			       src->off, dst->off, len, ret);
			continue;
		}

		um->len = buf_size;
		for (i = 0; i < src->cnt; i++) {
			void *buf = src->aligned[i];
			struct page *pg = FUNC45(buf);
			unsigned long pg_off = FUNC31(buf);

			um->addr[i] = FUNC4(dev->dev, pg, pg_off,
						   um->len, DMA_TO_DEVICE);
			srcs[i] = um->addr[i] + src->off;
			ret = FUNC5(dev->dev, um->addr[i]);
			if (ret) {
				FUNC35("src mapping error", total_tests,
				       src->off, dst->off, len, ret);
				goto error_unmap_continue;
			}
			um->to_cnt++;
		}
		/* map with DMA_BIDIRECTIONAL to force writeback/invalidate */
		dsts = &um->addr[src->cnt];
		for (i = 0; i < dst->cnt; i++) {
			void *buf = dst->aligned[i];
			struct page *pg = FUNC45(buf);
			unsigned long pg_off = FUNC31(buf);

			dsts[i] = FUNC4(dev->dev, pg, pg_off, um->len,
					       DMA_BIDIRECTIONAL);
			ret = FUNC5(dev->dev, dsts[i]);
			if (ret) {
				FUNC35("dst mapping error", total_tests,
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
			FUNC35("prep error", total_tests, src->off,
			       dst->off, len, ret);
			FUNC30(100);
			goto error_unmap_continue;
		}

		done->done = false;
		if (!params->polled) {
			tx->callback = dmatest_callback;
			tx->callback_param = done;
		}
		cookie = tx->tx_submit(tx);

		if (FUNC7(cookie)) {
			FUNC35("submit error", total_tests, src->off,
			       dst->off, len, ret);
			FUNC30(100);
			goto error_unmap_continue;
		}

		if (params->polled) {
			status = FUNC8(chan, cookie);
			FUNC10(chan);
			if (status == DMA_COMPLETE)
				done->done = true;
		} else {
			FUNC3(chan);

			FUNC46(thread->done_wait,
					done->done,
					FUNC29(params->timeout));

			status = FUNC2(chan, cookie, NULL,
							  NULL);
		}

		if (!done->done) {
			FUNC35("test timed out", total_tests, src->off, dst->off,
			       len, 0);
			goto error_unmap_continue;
		} else if (status != DMA_COMPLETE) {
			FUNC35(status == DMA_ERROR ?
			       "completion error status" :
			       "completion busy status", total_tests, src->off,
			       dst->off, len, ret);
			goto error_unmap_continue;
		}

		FUNC11(um);

		if (params->noverify) {
			FUNC44("test passed", total_tests, src->off,
				       dst->off, len, 0);
			continue;
		}

		start = FUNC25();
		FUNC32("%s: verifying source buffer...\n", current->comm);
		error_count = FUNC19(src->aligned, 0, src->off,
				0, PATTERN_SRC, true, is_memset);
		error_count += FUNC19(src->aligned, src->off,
				src->off + len, src->off,
				PATTERN_SRC | PATTERN_COPY, true, is_memset);
		error_count += FUNC19(src->aligned, src->off + len,
				buf_size, src->off + len,
				PATTERN_SRC, true, is_memset);

		FUNC32("%s: verifying dest buffer...\n", current->comm);
		error_count += FUNC19(dst->aligned, 0, dst->off,
				0, PATTERN_DST, false, is_memset);

		error_count += FUNC19(dst->aligned, dst->off,
				dst->off + len, src->off,
				PATTERN_SRC | PATTERN_COPY, false, is_memset);

		error_count += FUNC19(dst->aligned, dst->off + len,
				buf_size, dst->off + len,
				PATTERN_DST, false, is_memset);

		diff = FUNC26(FUNC25(), start);
		comparetime = FUNC24(comparetime, diff);

		if (error_count) {
			FUNC35("data error", total_tests, src->off, dst->off,
			       len, error_count);
			failed_tests++;
		} else {
			FUNC44("test passed", total_tests, src->off,
				       dst->off, len, 0);
		}

		continue;

error_unmap_continue:
		FUNC11(um);
		failed_tests++;
	}
	ktime = FUNC26(FUNC25(), ktime);
	ktime = FUNC26(ktime, comparetime);
	ktime = FUNC26(ktime, filltime);
	runtime = FUNC27(ktime);

	ret = 0;
	FUNC21(dma_pq);
err_srcs_array:
	FUNC21(srcs);
err_dst:
	FUNC14(dst);
err_src:
	FUNC14(src);
err_free_coefs:
	FUNC21(pq_coefs);
err_thread_type:
	iops = FUNC17(runtime, total_tests);
	FUNC34("%s: summary %u tests, %u failures %llu.%02llu iops %llu KB/s (%d)\n",
		current->comm, total_tests, failed_tests,
		FUNC1(iops), FUNC0(iops),
		FUNC12(runtime, total_len), ret);

	/* terminate all transfers on specified channels */
	if (ret || failed_tests)
		FUNC10(chan);

	thread->done = true;
	FUNC47(&thread_wait);

	return ret;
}