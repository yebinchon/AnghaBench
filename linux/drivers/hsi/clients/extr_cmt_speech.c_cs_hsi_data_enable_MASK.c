#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct cs_hsi_iface {scalar_t__ buf_size; unsigned int slot_size; unsigned int* rx_offsets; unsigned int* tx_offsets; int /*<<< orphan*/  iface_state; TYPE_2__* cl; TYPE_1__* mmap_cfg; } ;
struct cs_buffer_config {int /*<<< orphan*/  tx_bufs; int /*<<< orphan*/  rx_bufs; } ;
struct TYPE_4__ {int /*<<< orphan*/  device; } ;
struct TYPE_3__ {unsigned int rx_bufs; unsigned int* rx_offsets; unsigned int tx_bufs; unsigned int* tx_offsets; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CS_STATE_CONFIGURED ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  L1_CACHE_BYTES ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,unsigned int,unsigned int,...) ; 
 int /*<<< orphan*/  FUNC3 (struct cs_hsi_iface*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct cs_hsi_iface *hi,
					struct cs_buffer_config *buf_cfg)
{
	unsigned int data_start, i;

	FUNC0(hi->buf_size == 0);

	FUNC3(hi, buf_cfg->rx_bufs, buf_cfg->tx_bufs);

	hi->slot_size = FUNC1(hi->buf_size);
	FUNC2(&hi->cl->device,
			"setting slot size to %u, buf size %u, align %u\n",
			hi->slot_size, hi->buf_size, L1_CACHE_BYTES);

	data_start = FUNC1(sizeof(*hi->mmap_cfg));
	FUNC2(&hi->cl->device,
			"setting data start at %u, cfg block %u, align %u\n",
			data_start, sizeof(*hi->mmap_cfg), L1_CACHE_BYTES);

	for (i = 0; i < hi->mmap_cfg->rx_bufs; i++) {
		hi->rx_offsets[i] = data_start + i * hi->slot_size;
		hi->mmap_cfg->rx_offsets[i] = hi->rx_offsets[i];
		FUNC2(&hi->cl->device, "DL buf #%u at %u\n",
					i, hi->rx_offsets[i]);
	}
	for (i = 0; i < hi->mmap_cfg->tx_bufs; i++) {
		hi->tx_offsets[i] = data_start +
			(i + hi->mmap_cfg->rx_bufs) * hi->slot_size;
		hi->mmap_cfg->tx_offsets[i] = hi->tx_offsets[i];
		FUNC2(&hi->cl->device, "UL buf #%u at %u\n",
					i, hi->rx_offsets[i]);
	}

	hi->iface_state = CS_STATE_CONFIGURED;
}