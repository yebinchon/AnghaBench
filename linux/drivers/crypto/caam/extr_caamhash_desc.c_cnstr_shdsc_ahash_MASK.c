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
struct alginfo {int algtype; scalar_t__ keylen; int /*<<< orphan*/  keylen_pad; int /*<<< orphan*/  key_virt; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAAM_CMD_SZ ; 
 int CLASS_2 ; 
 int FIFOLD_CLASS_CLASS2 ; 
 int FIFOLD_TYPE_LAST2 ; 
 int FIFOLD_TYPE_MSG ; 
 int /*<<< orphan*/  HDR_SHARE_SERIAL ; 
 int JUMP_COND_SHRD ; 
 int JUMP_JSL ; 
 int JUMP_TEST_ALL ; 
 int KEY_DEST_MDHA_SPLIT ; 
 int KEY_ENC ; 
 int KEY_VLF ; 
 int LDST_CLASS_2_CCB ; 
 int LDST_SRCDST_BYTE_CONTEXT ; 
 int OP_ALG_AAI_HMAC_PRECOMP ; 
 int OP_ALG_AS_UPDATE ; 
 int OP_ALG_ENCRYPT ; 
 int /*<<< orphan*/  REG0 ; 
 int /*<<< orphan*/  SEQINLEN ; 
 int /*<<< orphan*/  VARSEQINLEN ; 
 int* FUNC0 (int* const,int) ; 
 int /*<<< orphan*/  FUNC1 (int* const,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (int* const,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int* const,int) ; 
 int /*<<< orphan*/  FUNC4 (int* const,struct alginfo*) ; 
 int /*<<< orphan*/  FUNC5 (int* const,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int* const,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int* const,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int* const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int* const,int*) ; 

void FUNC10(u32 * const desc, struct alginfo *adata, u32 state,
		       int digestsize, int ctx_len, bool import_ctx, int era)
{
	u32 op = adata->algtype;

	FUNC8(desc, HDR_SHARE_SERIAL);

	/* Append key if it has been set; ahash update excluded */
	if (state != OP_ALG_AS_UPDATE && adata->keylen) {
		u32 *skip_key_load;

		/* Skip key loading if already shared */
		skip_key_load = FUNC0(desc, JUMP_JSL | JUMP_TEST_ALL |
					    JUMP_COND_SHRD);

		if (era < 6)
			FUNC1(desc, adata->key_virt,
					  adata->keylen_pad,
					  adata->keylen, CLASS_2 |
					  KEY_DEST_MDHA_SPLIT | KEY_ENC);
		else
			FUNC4(desc, adata);

		FUNC9(desc, skip_key_load);

		op |= OP_ALG_AAI_HMAC_PRECOMP;
	}

	/* If needed, import context from software */
	if (import_ctx)
		FUNC6(desc, ctx_len, LDST_CLASS_2_CCB |
				LDST_SRCDST_BYTE_CONTEXT);

	/* Class 2 operation */
	FUNC3(desc, op | state | OP_ALG_ENCRYPT);

	/*
	 * Load from buf and/or src and write to req->result or state->context
	 * Calculate remaining bytes to read
	 */
	FUNC2(desc, VARSEQINLEN, SEQINLEN, REG0, CAAM_CMD_SZ);
	/* Read remaining bytes */
	FUNC5(desc, 0, FIFOLD_CLASS_CLASS2 | FIFOLD_TYPE_LAST2 |
			     FIFOLD_TYPE_MSG | KEY_VLF);
	/* Store class2 context bytes */
	FUNC7(desc, digestsize, LDST_CLASS_2_CCB |
			 LDST_SRCDST_BYTE_CONTEXT);
}