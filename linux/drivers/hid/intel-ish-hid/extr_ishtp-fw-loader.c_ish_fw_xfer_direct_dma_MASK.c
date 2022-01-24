#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u64 ;
typedef  int u32 ;
struct TYPE_4__ {int max_dma_buf_size; } ;
struct shim_fw_info {TYPE_1__ ldr_capability; } ;
struct TYPE_5__ {int /*<<< orphan*/  command; } ;
struct TYPE_6__ {int is_last; int offset; int size; int /*<<< orphan*/  xfer_mode; TYPE_2__ hdr; } ;
struct loader_xfer_dma_fragment {scalar_t__ ddr_phys_addr; TYPE_3__ fragment; } ;
struct loader_msg_hdr {int dummy; } ;
struct ishtp_cl_data {int flag_retry; int /*<<< orphan*/  cl_device; } ;
struct firmware {int size; int /*<<< orphan*/ * data; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ldr_xfer_dma_frag_ack ;
typedef  int /*<<< orphan*/  ldr_xfer_dma_frag ;
typedef  scalar_t__ dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int ENOMEM ; 
 int GFP_DMA32 ; 
 int GFP_KERNEL ; 
 int L1_CACHE_BYTES ; 
 int /*<<< orphan*/  LOADER_CMD_XFER_FRAGMENT ; 
 int /*<<< orphan*/  LOADER_XFER_MODE_DIRECT_DMA ; 
 int /*<<< orphan*/  FUNC0 (struct ishtp_cl_data*) ; 
 int /*<<< orphan*/  FUNC1 (void*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ dma_buf_size_limit ; 
 scalar_t__ FUNC4 (struct device*,void*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,scalar_t__,int,int /*<<< orphan*/ ) ; 
 struct device* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (void*) ; 
 void* FUNC10 (int,int) ; 
 int FUNC11 (struct ishtp_cl_data*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (void*,int /*<<< orphan*/ *,int) ; 
 int FUNC13 (int,size_t,size_t) ; 

__attribute__((used)) static int FUNC14(struct ishtp_cl_data *client_data,
				  const struct firmware *fw,
				  const struct shim_fw_info fw_info)
{
	int rv;
	void *dma_buf;
	dma_addr_t dma_buf_phy;
	u32 fragment_offset, fragment_size, payload_max_size;
	struct loader_msg_hdr ldr_xfer_dma_frag_ack;
	struct loader_xfer_dma_fragment ldr_xfer_dma_frag;
	struct device *devc = FUNC8(client_data->cl_device);
	u32 shim_fw_buf_size =
		fw_info.ldr_capability.max_dma_buf_size;

	/*
	 * payload_max_size should be set to minimum of
	 *  (1) Size of firmware to be loaded,
	 *  (2) Max DMA buffer size supported by Shim firmware,
	 *  (3) DMA buffer size limit set by boot_param dma_buf_size_limit.
	 */
	payload_max_size = FUNC13(fw->size,
				(size_t)shim_fw_buf_size,
				(size_t)dma_buf_size_limit);

	/*
	 * Buffer size should be multiple of cacheline size
	 * if it's not, select the previous cacheline boundary.
	 */
	payload_max_size &= ~(L1_CACHE_BYTES - 1);

	dma_buf = FUNC10(payload_max_size, GFP_KERNEL | GFP_DMA32);
	if (!dma_buf) {
		client_data->flag_retry = true;
		return -ENOMEM;
	}

	dma_buf_phy = FUNC4(devc, dma_buf, payload_max_size,
				     DMA_TO_DEVICE);
	if (FUNC5(devc, dma_buf_phy)) {
		FUNC3(FUNC0(client_data), "DMA map failed\n");
		client_data->flag_retry = true;
		rv = -ENOMEM;
		goto end_err_dma_buf_release;
	}

	ldr_xfer_dma_frag.fragment.hdr.command = LOADER_CMD_XFER_FRAGMENT;
	ldr_xfer_dma_frag.fragment.xfer_mode = LOADER_XFER_MODE_DIRECT_DMA;
	ldr_xfer_dma_frag.ddr_phys_addr = (u64)dma_buf_phy;

	/* Send the firmware image in chucks of payload_max_size */
	fragment_offset = 0;
	while (fragment_offset < fw->size) {
		if (fragment_offset + payload_max_size < fw->size) {
			fragment_size = payload_max_size;
			ldr_xfer_dma_frag.fragment.is_last = 0;
		} else {
			fragment_size = fw->size - fragment_offset;
			ldr_xfer_dma_frag.fragment.is_last = 1;
		}

		ldr_xfer_dma_frag.fragment.offset = fragment_offset;
		ldr_xfer_dma_frag.fragment.size = fragment_size;
		FUNC12(dma_buf, &fw->data[fragment_offset], fragment_size);

		FUNC6(devc, dma_buf_phy,
					   payload_max_size,
					   DMA_TO_DEVICE);

		/*
		 * Flush cache here because the dma_sync_single_for_device()
		 * does not do for x86.
		 */
		FUNC1(dma_buf, payload_max_size);

		FUNC2(FUNC0(client_data),
			"xfer_mode=dma offset=0x%08x size=0x%x is_last=%d ddr_phys_addr=0x%016llx\n",
			ldr_xfer_dma_frag.fragment.offset,
			ldr_xfer_dma_frag.fragment.size,
			ldr_xfer_dma_frag.fragment.is_last,
			ldr_xfer_dma_frag.ddr_phys_addr);

		rv = FUNC11(client_data,
				    (u8 *)&ldr_xfer_dma_frag,
				    sizeof(ldr_xfer_dma_frag),
				    (u8 *)&ldr_xfer_dma_frag_ack,
				    sizeof(ldr_xfer_dma_frag_ack));
		if (rv < 0) {
			client_data->flag_retry = true;
			goto end_err_resp_buf_release;
		}

		fragment_offset += fragment_size;
	}

	FUNC7(devc, dma_buf_phy, payload_max_size, DMA_TO_DEVICE);
	FUNC9(dma_buf);
	return 0;

end_err_resp_buf_release:
	/* Free ISH buffer if not done already, in error case */
	FUNC7(devc, dma_buf_phy, payload_max_size, DMA_TO_DEVICE);
end_err_dma_buf_release:
	FUNC9(dma_buf);
	return rv;
}