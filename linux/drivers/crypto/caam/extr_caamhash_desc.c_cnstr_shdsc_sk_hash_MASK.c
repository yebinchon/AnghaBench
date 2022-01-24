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
struct alginfo {int algtype; int /*<<< orphan*/  keylen; int /*<<< orphan*/  key_dma; int /*<<< orphan*/  key_virt; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAAM_CMD_SZ ; 
 int CLASS_1 ; 
 int FIFOLDST_VLF ; 
 int FIFOLD_CLASS_CLASS1 ; 
 int FIFOLD_TYPE_LAST1 ; 
 int FIFOLD_TYPE_MSG ; 
 int FIFOST_TYPE_KEY_KEK ; 
 int HDR_SAVECTX ; 
 int HDR_SHARE_SERIAL ; 
 int JUMP_COND_SHRD ; 
 int JUMP_TEST_ALL ; 
 int KEY_DEST_CLASS_REG ; 
 int KEY_ENC ; 
 int LDST_CLASS_1_CCB ; 
 int LDST_SRCDST_BYTE_CONTEXT ; 
 int OP_ALG_AS_INIT ; 
 int OP_ALG_AS_INITFINAL ; 
 int OP_ALG_ENCRYPT ; 
 int /*<<< orphan*/  REG0 ; 
 int /*<<< orphan*/  SEQINLEN ; 
 int /*<<< orphan*/  VARSEQINLEN ; 
 int /*<<< orphan*/  FUNC0 (int* const,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int* FUNC1 (int* const,int) ; 
 int /*<<< orphan*/  FUNC2 (int* const,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int* const,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int* const,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int* const,int) ; 
 int /*<<< orphan*/  FUNC6 (int* const,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int* const,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int* const,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int* const,int) ; 
 scalar_t__ FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int* const,int*) ; 

void FUNC12(u32 * const desc, struct alginfo *adata, u32 state,
			 int digestsize, int ctx_len)
{
	u32 *skip_key_load;

	FUNC9(desc, HDR_SHARE_SERIAL | HDR_SAVECTX);

	/* Skip loading of key, context if already shared */
	skip_key_load = FUNC1(desc, JUMP_TEST_ALL | JUMP_COND_SHRD);

	if (state == OP_ALG_AS_INIT || state == OP_ALG_AS_INITFINAL) {
		FUNC3(desc, adata->key_virt, adata->keylen,
				  adata->keylen, CLASS_1 | KEY_DEST_CLASS_REG);
	} else { /* UPDATE, FINALIZE */
		if (FUNC10(adata->algtype))
			/* Load K1 */
			FUNC2(desc, adata->key_dma, adata->keylen,
				   CLASS_1 | KEY_DEST_CLASS_REG | KEY_ENC);
		else /* CMAC */
			FUNC3(desc, adata->key_virt, adata->keylen,
					  adata->keylen, CLASS_1 |
					  KEY_DEST_CLASS_REG);
		/* Restore context */
		FUNC7(desc, ctx_len, LDST_CLASS_1_CCB |
				LDST_SRCDST_BYTE_CONTEXT);
	}

	FUNC11(desc, skip_key_load);

	/* Class 1 operation */
	FUNC5(desc, adata->algtype | state | OP_ALG_ENCRYPT);

	/*
	 * Load from buf and/or src and write to req->result or state->context
	 * Calculate remaining bytes to read
	 */
	FUNC4(desc, VARSEQINLEN, SEQINLEN, REG0, CAAM_CMD_SZ);

	/* Read remaining bytes */
	FUNC6(desc, 0, FIFOLD_CLASS_CLASS1 | FIFOLD_TYPE_LAST1 |
			     FIFOLD_TYPE_MSG | FIFOLDST_VLF);

	/*
	 * Save context:
	 * - xcbc: partial hash, keys K2 and K3
	 * - cmac: partial hash, constant L = E(K,0)
	 */
	FUNC8(desc, digestsize, LDST_CLASS_1_CCB |
			 LDST_SRCDST_BYTE_CONTEXT);
	if (FUNC10(adata->algtype) && state == OP_ALG_AS_INIT)
		/* Save K1 */
		FUNC0(desc, adata->key_dma, adata->keylen,
				  LDST_CLASS_1_CCB | FIFOST_TYPE_KEY_KEK);
}