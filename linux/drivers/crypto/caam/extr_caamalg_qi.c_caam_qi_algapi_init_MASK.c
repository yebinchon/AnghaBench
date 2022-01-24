#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_9__ ;
typedef  struct TYPE_17__   TYPE_8__ ;
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct device {int dummy; } ;
struct TYPE_14__ {int /*<<< orphan*/  cra_driver_name; } ;
struct TYPE_17__ {TYPE_5__ base; } ;
struct TYPE_13__ {scalar_t__ class1_alg_type; } ;
struct caam_skcipher_alg {int registered; TYPE_8__ skcipher; TYPE_4__ caam; } ;
struct caam_drv_private {int era; TYPE_3__* ctrl; int /*<<< orphan*/  qi_present; } ;
struct TYPE_16__ {int /*<<< orphan*/  cra_driver_name; } ;
struct TYPE_18__ {unsigned int maxauthsize; TYPE_7__ base; } ;
struct TYPE_15__ {scalar_t__ class1_alg_type; scalar_t__ class2_alg_type; } ;
struct caam_aead_alg {int registered; TYPE_9__ aead; TYPE_6__ caam; } ;
struct TYPE_11__ {int /*<<< orphan*/  desa; int /*<<< orphan*/  mdha; int /*<<< orphan*/  aesa; } ;
struct TYPE_10__ {int /*<<< orphan*/  cha_num_ls; int /*<<< orphan*/  cha_id_ls; } ;
struct TYPE_12__ {TYPE_2__ vreg; TYPE_1__ perfmon; } ;

/* Variables and functions */
 int FUNC0 (void*) ; 
 scalar_t__ CHA_ID_LS_AES_MASK ; 
 scalar_t__ CHA_ID_LS_DES_MASK ; 
 scalar_t__ CHA_ID_LS_DES_SHIFT ; 
 scalar_t__ CHA_ID_LS_MD_MASK ; 
 scalar_t__ CHA_ID_LS_MD_SHIFT ; 
 scalar_t__ CHA_VER_NUM_MASK ; 
 scalar_t__ CHA_VER_VID_AES_LP ; 
 scalar_t__ CHA_VER_VID_MASK ; 
 scalar_t__ CHA_VER_VID_MD_LP256 ; 
 scalar_t__ CHA_VER_VID_SHIFT ; 
 scalar_t__ OP_ALG_AAI_GCM ; 
 scalar_t__ OP_ALG_AAI_MASK ; 
 scalar_t__ OP_ALG_ALGSEL_3DES ; 
 scalar_t__ OP_ALG_ALGSEL_AES ; 
 scalar_t__ OP_ALG_ALGSEL_DES ; 
 scalar_t__ OP_ALG_ALGSEL_MASK ; 
 unsigned int SHA256_DIGEST_SIZE ; 
 unsigned int SHA512_DIGEST_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct caam_aead_alg*) ; 
 scalar_t__ caam_dpaa2 ; 
 int /*<<< orphan*/  FUNC2 (struct caam_skcipher_alg*) ; 
 int FUNC3 (TYPE_9__*) ; 
 int FUNC4 (TYPE_8__*) ; 
 struct caam_drv_private* FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,char*,int /*<<< orphan*/ ) ; 
 void* driver_aeads ; 
 void* driver_algs ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 

int FUNC10(struct device *ctrldev)
{
	struct caam_drv_private *priv = FUNC5(ctrldev);
	int i = 0, err = 0;
	u32 aes_vid, aes_inst, des_inst, md_vid, md_inst;
	unsigned int md_limit = SHA512_DIGEST_SIZE;
	bool registered = false;

	/* Make sure this runs only on (DPAA 1.x) QI */
	if (!priv->qi_present || caam_dpaa2)
		return 0;

	/*
	 * Register crypto algorithms the device supports.
	 * First, detect presence and attributes of DES, AES, and MD blocks.
	 */
	if (priv->era < 10) {
		u32 cha_vid, cha_inst;

		cha_vid = FUNC9(&priv->ctrl->perfmon.cha_id_ls);
		aes_vid = cha_vid & CHA_ID_LS_AES_MASK;
		md_vid = (cha_vid & CHA_ID_LS_MD_MASK) >> CHA_ID_LS_MD_SHIFT;

		cha_inst = FUNC9(&priv->ctrl->perfmon.cha_num_ls);
		des_inst = (cha_inst & CHA_ID_LS_DES_MASK) >>
			   CHA_ID_LS_DES_SHIFT;
		aes_inst = cha_inst & CHA_ID_LS_AES_MASK;
		md_inst = (cha_inst & CHA_ID_LS_MD_MASK) >> CHA_ID_LS_MD_SHIFT;
	} else {
		u32 aesa, mdha;

		aesa = FUNC9(&priv->ctrl->vreg.aesa);
		mdha = FUNC9(&priv->ctrl->vreg.mdha);

		aes_vid = (aesa & CHA_VER_VID_MASK) >> CHA_VER_VID_SHIFT;
		md_vid = (mdha & CHA_VER_VID_MASK) >> CHA_VER_VID_SHIFT;

		des_inst = FUNC9(&priv->ctrl->vreg.desa) & CHA_VER_NUM_MASK;
		aes_inst = aesa & CHA_VER_NUM_MASK;
		md_inst = mdha & CHA_VER_NUM_MASK;
	}

	/* If MD is present, limit digest size based on LP256 */
	if (md_inst && md_vid  == CHA_VER_VID_MD_LP256)
		md_limit = SHA256_DIGEST_SIZE;

	for (i = 0; i < FUNC0(driver_algs); i++) {
		struct caam_skcipher_alg *t_alg = driver_algs + i;
		u32 alg_sel = t_alg->caam.class1_alg_type & OP_ALG_ALGSEL_MASK;

		/* Skip DES algorithms if not supported by device */
		if (!des_inst &&
		    ((alg_sel == OP_ALG_ALGSEL_3DES) ||
		     (alg_sel == OP_ALG_ALGSEL_DES)))
			continue;

		/* Skip AES algorithms if not supported by device */
		if (!aes_inst && (alg_sel == OP_ALG_ALGSEL_AES))
			continue;

		FUNC2(t_alg);

		err = FUNC4(&t_alg->skcipher);
		if (err) {
			FUNC7(ctrldev, "%s alg registration failed\n",
				 t_alg->skcipher.base.cra_driver_name);
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
		u32 alg_aai = t_alg->caam.class1_alg_type & OP_ALG_AAI_MASK;

		/* Skip DES algorithms if not supported by device */
		if (!des_inst &&
		    ((c1_alg_sel == OP_ALG_ALGSEL_3DES) ||
		     (c1_alg_sel == OP_ALG_ALGSEL_DES)))
			continue;

		/* Skip AES algorithms if not supported by device */
		if (!aes_inst && (c1_alg_sel == OP_ALG_ALGSEL_AES))
			continue;

		/*
		 * Check support for AES algorithms not available
		 * on LP devices.
		 */
		if (aes_vid  == CHA_VER_VID_AES_LP && alg_aai == OP_ALG_AAI_GCM)
			continue;

		/*
		 * Skip algorithms requiring message digests
		 * if MD or MD size is not supported by device.
		 */
		if (c2_alg_sel &&
		    (!md_inst || (t_alg->aead.maxauthsize > md_limit)))
			continue;

		FUNC1(t_alg);

		err = FUNC3(&t_alg->aead);
		if (err) {
			FUNC8("%s alg registration failed\n",
				t_alg->aead.base.cra_driver_name);
			continue;
		}

		t_alg->registered = true;
		registered = true;
	}

	if (registered)
		FUNC6(ctrldev, "algorithms registered in /proc/crypto\n");

	return err;
}