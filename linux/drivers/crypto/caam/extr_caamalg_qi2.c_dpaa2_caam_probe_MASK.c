#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_9__ ;
typedef  struct TYPE_19__   TYPE_8__ ;
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;
typedef  struct TYPE_11__   TYPE_10__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct device {int dummy; } ;
struct fsl_mc_device {struct device dev; } ;
struct TYPE_16__ {int /*<<< orphan*/  md_acc_num; int /*<<< orphan*/  ptha_acc_num; int /*<<< orphan*/  ccha_acc_num; int /*<<< orphan*/  aes_acc_num; int /*<<< orphan*/  des_acc_num; } ;
struct dpaa2_caam_priv {int /*<<< orphan*/  mc_io; int /*<<< orphan*/ * ppriv; TYPE_5__ sec_attr; int /*<<< orphan*/  domain; } ;
struct TYPE_13__ {int /*<<< orphan*/  cra_driver_name; } ;
struct TYPE_19__ {TYPE_2__ base; } ;
struct TYPE_12__ {scalar_t__ class1_alg_type; struct device* dev; } ;
struct caam_skcipher_alg {int registered; TYPE_8__ skcipher; TYPE_1__ caam; } ;
struct caam_hash_template {int /*<<< orphan*/  driver_name; } ;
struct TYPE_17__ {int /*<<< orphan*/  cra_driver_name; } ;
struct TYPE_18__ {TYPE_6__ base; } ;
struct TYPE_20__ {TYPE_7__ halg; } ;
struct caam_hash_alg {int /*<<< orphan*/  entry; TYPE_9__ ahash_alg; } ;
struct TYPE_15__ {int /*<<< orphan*/  cra_driver_name; } ;
struct TYPE_11__ {TYPE_4__ base; } ;
struct TYPE_14__ {scalar_t__ class1_alg_type; scalar_t__ class2_alg_type; struct device* dev; } ;
struct caam_aead_alg {int registered; TYPE_10__ aead; TYPE_3__ caam; } ;

/* Variables and functions */
 int FUNC0 (void*) ; 
 int /*<<< orphan*/  CAAM_QI_MEMCACHE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int ENOMEM ; 
 int ENXIO ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct caam_hash_alg*) ; 
 scalar_t__ OP_ALG_ALGSEL_3DES ; 
 scalar_t__ OP_ALG_ALGSEL_AES ; 
 scalar_t__ OP_ALG_ALGSEL_CHACHA20 ; 
 scalar_t__ OP_ALG_ALGSEL_DES ; 
 scalar_t__ OP_ALG_ALGSEL_MASK ; 
 scalar_t__ OP_ALG_ALGSEL_POLY1305 ; 
 scalar_t__ OP_ALG_ALGSEL_SUBMASK ; 
 int FUNC4 (struct caam_hash_alg*) ; 
 int /*<<< orphan*/  SLAB_CACHE_DMA ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct caam_aead_alg*) ; 
 struct caam_hash_alg* FUNC7 (struct device*,struct caam_hash_template*,int) ; 
 int caam_imx ; 
 int caam_little_end ; 
 int /*<<< orphan*/  FUNC8 (struct caam_skcipher_alg*) ; 
 int FUNC9 (TYPE_10__*) ; 
 int FUNC10 (TYPE_9__*) ; 
 int FUNC11 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC12 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC13 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC14 (struct device*,struct dpaa2_caam_priv*) ; 
 int /*<<< orphan*/  FUNC15 (struct device*,char*,int /*<<< orphan*/ ,int) ; 
 struct dpaa2_caam_priv* FUNC16 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC17 (struct device*,int /*<<< orphan*/ ) ; 
 int FUNC18 (struct dpaa2_caam_priv*) ; 
 int /*<<< orphan*/  FUNC19 (struct dpaa2_caam_priv*) ; 
 int /*<<< orphan*/  FUNC20 (struct dpaa2_caam_priv*) ; 
 int FUNC21 (struct dpaa2_caam_priv*) ; 
 int FUNC22 (struct dpaa2_caam_priv*) ; 
 int /*<<< orphan*/  FUNC23 (struct dpaa2_caam_priv*) ; 
 int FUNC24 (struct fsl_mc_device*) ; 
 void* driver_aeads ; 
 void* driver_algs ; 
 void* driver_hash ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 int FUNC26 (struct fsl_mc_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hash_list ; 
 int /*<<< orphan*/  FUNC28 (struct device*) ; 
 int /*<<< orphan*/  FUNC29 (struct caam_hash_alg*) ; 
 int /*<<< orphan*/  FUNC30 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  qi_cache ; 

__attribute__((used)) static int FUNC34(struct fsl_mc_device *dpseci_dev)
{
	struct device *dev;
	struct dpaa2_caam_priv *priv;
	int i, err = 0;
	bool registered = false;

	/*
	 * There is no way to get CAAM endianness - there is no direct register
	 * space access and MC f/w does not provide this attribute.
	 * All DPAA2-based SoCs have little endian CAAM, thus hard-code this
	 * property.
	 */
	caam_little_end = true;

	caam_imx = false;

	dev = &dpseci_dev->dev;

	priv = FUNC16(dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	FUNC14(dev, priv);

	priv->domain = FUNC28(dev);

	qi_cache = FUNC30("dpaa2_caamqicache", CAAM_QI_MEMCACHE_SIZE,
				     0, SLAB_CACHE_DMA, NULL);
	if (!qi_cache) {
		FUNC12(dev, "Can't allocate SEC cache\n");
		return -ENOMEM;
	}

	err = FUNC17(dev, FUNC1(49));
	if (err) {
		FUNC12(dev, "dma_set_mask_and_coherent() failed\n");
		goto err_dma_mask;
	}

	/* Obtain a MC portal */
	err = FUNC26(dpseci_dev, 0, &priv->mc_io);
	if (err) {
		if (err == -ENXIO)
			err = -EPROBE_DEFER;
		else
			FUNC12(dev, "MC portal allocation failed\n");

		goto err_dma_mask;
	}

	priv->ppriv = FUNC5(*priv->ppriv);
	if (!priv->ppriv) {
		FUNC12(dev, "alloc_percpu() failed\n");
		err = -ENOMEM;
		goto err_alloc_ppriv;
	}

	/* DPSECI initialization */
	err = FUNC24(dpseci_dev);
	if (err) {
		FUNC12(dev, "dpaa2_dpseci_setup() failed\n");
		goto err_dpseci_setup;
	}

	/* DPIO */
	err = FUNC21(priv);
	if (err) {
		if (err != -EPROBE_DEFER)
			FUNC12(dev, "dpaa2_dpseci_dpio_setup() failed\n");
		goto err_dpio_setup;
	}

	/* DPSECI binding to DPIO */
	err = FUNC18(priv);
	if (err) {
		FUNC12(dev, "dpaa2_dpseci_bind() failed\n");
		goto err_bind;
	}

	/* DPSECI enable */
	err = FUNC22(priv);
	if (err) {
		FUNC12(dev, "dpaa2_dpseci_enable() failed\n");
		goto err_bind;
	}

	FUNC19(priv);

	/* register crypto algorithms the device supports */
	for (i = 0; i < FUNC0(driver_algs); i++) {
		struct caam_skcipher_alg *t_alg = driver_algs + i;
		u32 alg_sel = t_alg->caam.class1_alg_type & OP_ALG_ALGSEL_MASK;

		/* Skip DES algorithms if not supported by device */
		if (!priv->sec_attr.des_acc_num &&
		    (alg_sel == OP_ALG_ALGSEL_3DES ||
		     alg_sel == OP_ALG_ALGSEL_DES))
			continue;

		/* Skip AES algorithms if not supported by device */
		if (!priv->sec_attr.aes_acc_num &&
		    alg_sel == OP_ALG_ALGSEL_AES)
			continue;

		/* Skip CHACHA20 algorithms if not supported by device */
		if (alg_sel == OP_ALG_ALGSEL_CHACHA20 &&
		    !priv->sec_attr.ccha_acc_num)
			continue;

		t_alg->caam.dev = dev;
		FUNC8(t_alg);

		err = FUNC11(&t_alg->skcipher);
		if (err) {
			FUNC15(dev, "%s alg registration failed: %d\n",
				 t_alg->skcipher.base.cra_driver_name, err);
			continue;
		}

		t_alg->registered = true;
		registered = true;
	}

	for (i = 0; i < FUNC0(driver_aeads); i++) {
		struct caam_aead_alg *t_alg = driver_aeads + i;
		u32 c1_alg_sel = t_alg->caam.class1_alg_type &
				 OP_ALG_ALGSEL_MASK;
		u32 c2_alg_sel = t_alg->caam.class2_alg_type &
				 OP_ALG_ALGSEL_MASK;

		/* Skip DES algorithms if not supported by device */
		if (!priv->sec_attr.des_acc_num &&
		    (c1_alg_sel == OP_ALG_ALGSEL_3DES ||
		     c1_alg_sel == OP_ALG_ALGSEL_DES))
			continue;

		/* Skip AES algorithms if not supported by device */
		if (!priv->sec_attr.aes_acc_num &&
		    c1_alg_sel == OP_ALG_ALGSEL_AES)
			continue;

		/* Skip CHACHA20 algorithms if not supported by device */
		if (c1_alg_sel == OP_ALG_ALGSEL_CHACHA20 &&
		    !priv->sec_attr.ccha_acc_num)
			continue;

		/* Skip POLY1305 algorithms if not supported by device */
		if (c2_alg_sel == OP_ALG_ALGSEL_POLY1305 &&
		    !priv->sec_attr.ptha_acc_num)
			continue;

		/*
		 * Skip algorithms requiring message digests
		 * if MD not supported by device.
		 */
		if ((c2_alg_sel & ~OP_ALG_ALGSEL_SUBMASK) == 0x40 &&
		    !priv->sec_attr.md_acc_num)
			continue;

		t_alg->caam.dev = dev;
		FUNC6(t_alg);

		err = FUNC9(&t_alg->aead);
		if (err) {
			FUNC15(dev, "%s alg registration failed: %d\n",
				 t_alg->aead.base.cra_driver_name, err);
			continue;
		}

		t_alg->registered = true;
		registered = true;
	}
	if (registered)
		FUNC13(dev, "algorithms registered in /proc/crypto\n");

	/* register hash algorithms the device supports */
	FUNC2(&hash_list);

	/*
	 * Skip registration of any hashing algorithms if MD block
	 * is not present.
	 */
	if (!priv->sec_attr.md_acc_num)
		return 0;

	for (i = 0; i < FUNC0(driver_hash); i++) {
		struct caam_hash_alg *t_alg;
		struct caam_hash_template *alg = driver_hash + i;

		/* register hmac version */
		t_alg = FUNC7(dev, alg, true);
		if (FUNC3(t_alg)) {
			err = FUNC4(t_alg);
			FUNC15(dev, "%s hash alg allocation failed: %d\n",
				 alg->driver_name, err);
			continue;
		}

		err = FUNC10(&t_alg->ahash_alg);
		if (err) {
			FUNC15(dev, "%s alg registration failed: %d\n",
				 t_alg->ahash_alg.halg.base.cra_driver_name,
				 err);
			FUNC29(t_alg);
		} else {
			FUNC32(&t_alg->entry, &hash_list);
		}

		/* register unkeyed version */
		t_alg = FUNC7(dev, alg, false);
		if (FUNC3(t_alg)) {
			err = FUNC4(t_alg);
			FUNC15(dev, "%s alg allocation failed: %d\n",
				 alg->driver_name, err);
			continue;
		}

		err = FUNC10(&t_alg->ahash_alg);
		if (err) {
			FUNC15(dev, "%s alg registration failed: %d\n",
				 t_alg->ahash_alg.halg.base.cra_driver_name,
				 err);
			FUNC29(t_alg);
		} else {
			FUNC32(&t_alg->entry, &hash_list);
		}
	}
	if (!FUNC33(&hash_list))
		FUNC13(dev, "hash algorithms registered in /proc/crypto\n");

	return err;

err_bind:
	FUNC20(priv);
err_dpio_setup:
	FUNC23(priv);
err_dpseci_setup:
	FUNC25(priv->ppriv);
err_alloc_ppriv:
	FUNC27(priv->mc_io);
err_dma_mask:
	FUNC31(qi_cache);

	return err;
}