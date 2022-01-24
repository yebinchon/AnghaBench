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
typedef  int u32 ;
struct stm32_cryp {int /*<<< orphan*/  flags; TYPE_3__* req; TYPE_2__* areq; int /*<<< orphan*/  dev; TYPE_1__* ctx; } ;
struct TYPE_6__ {scalar_t__ info; } ;
struct TYPE_5__ {int /*<<< orphan*/  assoclen; } ;
struct TYPE_4__ {int keylen; } ;

/* Variables and functions */
#define  AES_KEYSIZE_128 136 
#define  AES_KEYSIZE_192 135 
#define  AES_KEYSIZE_256 134 
 int /*<<< orphan*/  CRYP_CR ; 
 int /*<<< orphan*/  CRYP_IMSCR ; 
#define  CR_AES_CBC 133 
#define  CR_AES_CCM 132 
#define  CR_AES_CTR 131 
 int CR_AES_ECB ; 
#define  CR_AES_GCM 130 
 int CR_AES_KP ; 
 int CR_AES_UNKNOWN ; 
 int CR_CRYPEN ; 
 int CR_DATA8 ; 
 int CR_DEC_NOT_ENC ; 
#define  CR_DES_CBC 129 
 int CR_FFLUSH ; 
 int CR_KEY128 ; 
 int CR_KEY192 ; 
 int CR_KEY256 ; 
 int CR_PH_HEADER ; 
 int CR_PH_INIT ; 
 int CR_PH_PAYLOAD ; 
#define  CR_TDES_CBC 128 
 int EINVAL ; 
 int /*<<< orphan*/  FLG_CCM_PADDED_WA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (struct stm32_cryp*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct stm32_cryp*,int) ; 
 int FUNC4 (struct stm32_cryp*,int) ; 
 int FUNC5 (struct stm32_cryp*) ; 
 int /*<<< orphan*/  FUNC6 (struct stm32_cryp*) ; 
 int /*<<< orphan*/  FUNC7 (struct stm32_cryp*,int*) ; 
 int /*<<< orphan*/  FUNC8 (struct stm32_cryp*) ; 
 int FUNC9 (struct stm32_cryp*) ; 
 int /*<<< orphan*/  FUNC10 (struct stm32_cryp*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC11(struct stm32_cryp *cryp)
{
	int ret;
	u32 cfg, hw_mode;

	FUNC2(cryp->dev);

	/* Disable interrupt */
	FUNC10(cryp, CRYP_IMSCR, 0);

	/* Set key */
	FUNC8(cryp);

	/* Set configuration */
	cfg = CR_DATA8 | CR_FFLUSH;

	switch (cryp->ctx->keylen) {
	case AES_KEYSIZE_128:
		cfg |= CR_KEY128;
		break;

	case AES_KEYSIZE_192:
		cfg |= CR_KEY192;
		break;

	default:
	case AES_KEYSIZE_256:
		cfg |= CR_KEY256;
		break;
	}

	hw_mode = FUNC5(cryp);
	if (hw_mode == CR_AES_UNKNOWN)
		return -EINVAL;

	/* AES ECB/CBC decrypt: run key preparation first */
	if (FUNC1(cryp) &&
	    ((hw_mode == CR_AES_ECB) || (hw_mode == CR_AES_CBC))) {
		FUNC10(cryp, CRYP_CR, cfg | CR_AES_KP | CR_CRYPEN);

		/* Wait for end of processing */
		ret = FUNC9(cryp);
		if (ret) {
			FUNC0(cryp->dev, "Timeout (key preparation)\n");
			return ret;
		}
	}

	cfg |= hw_mode;

	if (FUNC1(cryp))
		cfg |= CR_DEC_NOT_ENC;

	/* Apply config and flush (valid when CRYPEN = 0) */
	FUNC10(cryp, CRYP_CR, cfg);

	switch (hw_mode) {
	case CR_AES_GCM:
	case CR_AES_CCM:
		/* Phase 1 : init */
		if (hw_mode == CR_AES_CCM)
			ret = FUNC3(cryp, cfg);
		else
			ret = FUNC4(cryp, cfg);

		if (ret)
			return ret;

		/* Phase 2 : header (authenticated data) */
		if (cryp->areq->assoclen) {
			cfg |= CR_PH_HEADER;
		} else if (FUNC6(cryp)) {
			cfg |= CR_PH_PAYLOAD;
			FUNC10(cryp, CRYP_CR, cfg);
		} else {
			cfg |= CR_PH_INIT;
		}

		break;

	case CR_DES_CBC:
	case CR_TDES_CBC:
	case CR_AES_CBC:
	case CR_AES_CTR:
		FUNC7(cryp, (u32 *)cryp->req->info);
		break;

	default:
		break;
	}

	/* Enable now */
	cfg |= CR_CRYPEN;

	FUNC10(cryp, CRYP_CR, cfg);

	cryp->flags &= ~FLG_CCM_PADDED_WA;

	return 0;
}