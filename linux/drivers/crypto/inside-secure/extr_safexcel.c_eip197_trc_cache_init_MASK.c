#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u32 ;
struct safexcel_crypto_priv {int /*<<< orphan*/  dev; scalar_t__ base; } ;

/* Variables and functions */
 int EIP197_CS_BANKSEL_MASK ; 
 int EIP197_CS_BANKSEL_OFS ; 
 scalar_t__ EIP197_CS_RAM_CTRL ; 
 int EIP197_CS_TRC_REC_WC ; 
 scalar_t__ EIP197_TRC_ECCCTRL ; 
 int EIP197_TRC_ENABLE_0 ; 
 int EIP197_TRC_ENABLE_MASK ; 
 scalar_t__ EIP197_TRC_FREECHAIN ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 
 scalar_t__ EIP197_TRC_PARAMS ; 
 scalar_t__ EIP197_TRC_PARAMS2 ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int EIP197_TRC_PARAMS_DATA_ACCESS ; 
 int FUNC5 (int) ; 
 int FUNC6 (int) ; 
 int EIP197_TRC_PARAMS_SW_RESET ; 
 int FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct safexcel_crypto_priv*,int,int) ; 
 int FUNC10 (struct safexcel_crypto_priv*,int,int) ; 
 int /*<<< orphan*/  FUNC11 (struct safexcel_crypto_priv*) ; 
 int FUNC12 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  uint ; 
 int /*<<< orphan*/  FUNC14 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC15(struct safexcel_crypto_priv *priv)
{
	u32 val, dsize, asize;
	int cs_rc_max, cs_ht_wc, cs_trc_rec_wc, cs_trc_lg_rec_wc;
	int cs_rc_abs_max, cs_ht_sz;
	int maxbanks;

	/* Setup (dummy) virtualization for cache */
	FUNC11(priv);

	/*
	 * Enable the record cache memory access and
	 * probe the bank select width
	 */
	val = FUNC13(priv->base + EIP197_CS_RAM_CTRL);
	val &= ~EIP197_TRC_ENABLE_MASK;
	val |= EIP197_TRC_ENABLE_0 | EIP197_CS_BANKSEL_MASK;
	FUNC14(val, priv->base + EIP197_CS_RAM_CTRL);
	val = FUNC13(priv->base + EIP197_CS_RAM_CTRL);
	maxbanks = ((val&EIP197_CS_BANKSEL_MASK)>>EIP197_CS_BANKSEL_OFS) + 1;

	/* Clear all ECC errors */
	FUNC14(0, priv->base + EIP197_TRC_ECCCTRL);

	/*
	 * Make sure the cache memory is accessible by taking record cache into
	 * reset. Need data memory access here, not admin access.
	 */
	val = FUNC13(priv->base + EIP197_TRC_PARAMS);
	val |= EIP197_TRC_PARAMS_SW_RESET | EIP197_TRC_PARAMS_DATA_ACCESS;
	FUNC14(val, priv->base + EIP197_TRC_PARAMS);

	/* Probed data RAM size in bytes */
	dsize = FUNC10(priv, maxbanks, 0xffffffff);

	/*
	 * Now probe the administration RAM size pretty much the same way
	 * Except that only the lower 30 bits are writable and we don't need
	 * bank selects
	 */
	val = FUNC13(priv->base + EIP197_TRC_PARAMS);
	/* admin access now */
	val &= ~(EIP197_TRC_PARAMS_DATA_ACCESS | EIP197_CS_BANKSEL_MASK);
	FUNC14(val, priv->base + EIP197_TRC_PARAMS);

	/* Probed admin RAM size in admin words */
	asize = FUNC10(priv, 0, 0xbfffffff) >> 4;

	/* Clear any ECC errors detected while probing! */
	FUNC14(0, priv->base + EIP197_TRC_ECCCTRL);

	/*
	 * Determine optimal configuration from RAM sizes
	 * Note that we assume that the physical RAM configuration is sane
	 * Therefore, we don't do any parameter error checking here ...
	 */

	/* For now, just use a single record format covering everything */
	cs_trc_rec_wc = EIP197_CS_TRC_REC_WC;
	cs_trc_lg_rec_wc = EIP197_CS_TRC_REC_WC;

	/*
	 * Step #1: How many records will physically fit?
	 * Hard upper limit is 1023!
	 */
	cs_rc_abs_max = FUNC12(uint, ((dsize >> 2) / cs_trc_lg_rec_wc), 1023);
	/* Step #2: Need at least 2 words in the admin RAM per record */
	cs_rc_max = FUNC12(uint, cs_rc_abs_max, (asize >> 1));
	/* Step #3: Determine log2 of hash table size */
	cs_ht_sz = FUNC7(asize - cs_rc_max) - 2;
	/* Step #4: determine current size of hash table in dwords */
	cs_ht_wc = 16<<cs_ht_sz; /* dwords, not admin words */
	/* Step #5: add back excess words and see if we can fit more records */
	cs_rc_max = FUNC12(uint, cs_rc_abs_max, asize - (cs_ht_wc >> 4));

	/* Clear the cache RAMs */
	FUNC9(priv, cs_rc_max, cs_ht_wc);

	/* Disable the record cache memory access */
	val = FUNC13(priv->base + EIP197_CS_RAM_CTRL);
	val &= ~EIP197_TRC_ENABLE_MASK;
	FUNC14(val, priv->base + EIP197_CS_RAM_CTRL);

	/* Write head and tail pointers of the record free chain */
	val = FUNC0(0) |
	      FUNC1(cs_rc_max - 1);
	FUNC14(val, priv->base + EIP197_TRC_FREECHAIN);

	/* Configure the record cache #1 */
	val = FUNC3(cs_trc_rec_wc) |
	      FUNC2(cs_rc_max);
	FUNC14(val, priv->base + EIP197_TRC_PARAMS2);

	/* Configure the record cache #2 */
	val = FUNC6(cs_trc_lg_rec_wc) |
	      FUNC4(1) |
	      FUNC5(cs_ht_sz);
	FUNC14(val, priv->base + EIP197_TRC_PARAMS);

	FUNC8(priv->dev, "TRC init: %dd,%da (%dr,%dh)\n",
		 dsize, asize, cs_rc_max, cs_ht_wc + cs_ht_wc);
}