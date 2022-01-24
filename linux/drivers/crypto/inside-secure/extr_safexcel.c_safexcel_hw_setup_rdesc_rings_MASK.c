#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_8__ {int pes; int rings; int rd_offset; int rd_size; } ;
struct TYPE_7__ {int hwdataw; int hwrfsize; } ;
struct safexcel_crypto_priv {int flags; TYPE_4__ config; TYPE_3__ hwconfig; TYPE_2__* ring; } ;
struct TYPE_5__ {int /*<<< orphan*/  base_dma; } ;
struct TYPE_6__ {TYPE_1__ rdr; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int EIP197_FETCH_DEPTH ; 
 scalar_t__ FUNC1 (struct safexcel_crypto_priv*) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (struct safexcel_crypto_priv*,int) ; 
 scalar_t__ EIP197_HIA_xDR_CFG ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ EIP197_HIA_xDR_DESC_SIZE ; 
 scalar_t__ EIP197_HIA_xDR_DMA_CFG ; 
 scalar_t__ EIP197_HIA_xDR_RING_BASE_ADDR_HI ; 
 scalar_t__ EIP197_HIA_xDR_RING_BASE_ADDR_LO ; 
 scalar_t__ EIP197_HIA_xDR_STAT ; 
 int EIP197_HIA_xDR_WR_CTRL_BUF ; 
 int EIP197_HIA_xDR_WR_RES_BUF ; 
 int EIP197_RD64_FETCH_SIZE ; 
 int FUNC6 (int) ; 
 int EIP197_xDR_DESC_MODE_64BIT ; 
 int FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RD_CACHE_3BITS ; 
 int SAFEXCEL_HW_EIP197 ; 
 int /*<<< orphan*/  WR_CACHE_3BITS ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  uint ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC13(struct safexcel_crypto_priv *priv)
{
	u32 rd_size_rnd, val;
	int i, rd_fetch_cnt;

	/* determine number of RD's we can fetch into the FIFO as one block */
	rd_size_rnd = (EIP197_RD64_FETCH_SIZE +
		       (FUNC0(priv->hwconfig.hwdataw) - 1)) >>
		      priv->hwconfig.hwdataw;
	if (priv->flags & SAFEXCEL_HW_EIP197) {
		/* EIP197: try to fetch enough in 1 go to keep all pipes busy */
		rd_fetch_cnt = (1 << priv->hwconfig.hwrfsize) / rd_size_rnd;
		rd_fetch_cnt = FUNC9(uint, rd_fetch_cnt,
				     (priv->config.pes * EIP197_FETCH_DEPTH));
	} else {
		/* for the EIP97, just fetch all that fits minus 1 */
		rd_fetch_cnt = ((1 << priv->hwconfig.hwrfsize) /
				rd_size_rnd) - 1;
	}

	for (i = 0; i < priv->config.rings; i++) {
		/* ring base address */
		FUNC12(FUNC8(priv->ring[i].rdr.base_dma),
		       FUNC3(priv, i) + EIP197_HIA_xDR_RING_BASE_ADDR_LO);
		FUNC12(FUNC11(priv->ring[i].rdr.base_dma),
		       FUNC3(priv, i) + EIP197_HIA_xDR_RING_BASE_ADDR_HI);

		FUNC12(EIP197_xDR_DESC_MODE_64BIT | (priv->config.rd_offset << 16) |
		       priv->config.rd_size,
		       FUNC3(priv, i) + EIP197_HIA_xDR_DESC_SIZE);

		FUNC12(((rd_fetch_cnt *
			 (rd_size_rnd << priv->hwconfig.hwdataw)) << 16) |
		       (rd_fetch_cnt * priv->config.rd_offset),
		       FUNC3(priv, i) + EIP197_HIA_xDR_CFG);

		/* Configure DMA tx control */
		val = FUNC5(WR_CACHE_3BITS);
		val |= FUNC4(RD_CACHE_3BITS);
		val |= EIP197_HIA_xDR_WR_RES_BUF | EIP197_HIA_xDR_WR_CTRL_BUF;
		FUNC12(val,
		       FUNC3(priv, i) + EIP197_HIA_xDR_DMA_CFG);

		/* clear any pending interrupt */
		FUNC12(FUNC7(7, 0),
		       FUNC3(priv, i) + EIP197_HIA_xDR_STAT);

		/* enable ring interrupt */
		val = FUNC10(FUNC1(priv) + FUNC2(i));
		val |= FUNC6(i);
		FUNC12(val, FUNC1(priv) + FUNC2(i));
	}

	return 0;
}