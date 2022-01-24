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
typedef  int u8 ;
typedef  int u64 ;

/* Variables and functions */
 int SPU2_CIPH_KEY_LEN ; 
 int SPU2_CIPH_KEY_LEN_SHIFT ; 
 int SPU2_GENIV ; 
 int SPU2_HASH_IV ; 
 int SPU2_HASH_KEY_LEN ; 
 int SPU2_HASH_KEY_LEN_SHIFT ; 
 int SPU2_HASH_TAG_LEN ; 
 int SPU2_HASH_TAG_LEN_SHIFT ; 
 int SPU2_HAS_AAD1 ; 
 int SPU2_HAS_AAD2 ; 
 int SPU2_HAS_ESN ; 
 int SPU2_HAS_FR_DATA ; 
 int SPU2_HAS_NAAD ; 
 int SPU2_IV_LEN ; 
 int SPU2_IV_LEN_SHIFT ; 
 int SPU2_IV_OFFSET ; 
 int SPU2_IV_OFFSET_SHIFT ; 
 int SPU2_RETURN_AAD1 ; 
 int SPU2_RETURN_AAD2 ; 
 int SPU2_RETURN_FD ; 
 int SPU2_RETURN_MD ; 
 int SPU2_RETURN_MD_SHIFT ; 
 int SPU2_RETURN_NAAD ; 
 int SPU2_RETURN_PAY ; 
 int SPU2_RET_FMD_OMD ; 
 int SPU2_RET_FMD_OMD_IV ; 
 int SPU2_RET_IV ; 
 int SPU2_RET_IV_LEN ; 
 int SPU2_RET_IV_LEN_SHIFT ; 
 int SPU2_TAG_LOC ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

__attribute__((used)) static void FUNC1(u64 ctrl1)
{
	u8 hash_key_len;
	u8 ciph_key_len;
	u8 ret_iv_len;
	u8 iv_offset;
	u8 iv_len;
	u8 hash_tag_len;
	u8 ret_md;

	FUNC0(" FMD CTRL1 %#16llx\n", ctrl1);
	if (ctrl1 & SPU2_TAG_LOC)
		FUNC0("  Tag after payload\n");

	FUNC0("  Msg includes ");
	if (ctrl1 & SPU2_HAS_FR_DATA)
		FUNC0("FD ");
	if (ctrl1 & SPU2_HAS_AAD1)
		FUNC0("AAD1 ");
	if (ctrl1 & SPU2_HAS_NAAD)
		FUNC0("NAAD ");
	if (ctrl1 & SPU2_HAS_AAD2)
		FUNC0("AAD2 ");
	if (ctrl1 & SPU2_HAS_ESN)
		FUNC0("ESN ");
	FUNC0("\n");

	hash_key_len = (ctrl1 & SPU2_HASH_KEY_LEN) >> SPU2_HASH_KEY_LEN_SHIFT;
	FUNC0("  Hash key len %u\n", hash_key_len);

	ciph_key_len = (ctrl1 & SPU2_CIPH_KEY_LEN) >> SPU2_CIPH_KEY_LEN_SHIFT;
	FUNC0("  Cipher key len %u\n", ciph_key_len);

	if (ctrl1 & SPU2_GENIV)
		FUNC0("  Generate IV\n");

	if (ctrl1 & SPU2_HASH_IV)
		FUNC0("  IV included in hash\n");

	if (ctrl1 & SPU2_RET_IV)
		FUNC0("  Return IV in output before payload\n");

	ret_iv_len = (ctrl1 & SPU2_RET_IV_LEN) >> SPU2_RET_IV_LEN_SHIFT;
	FUNC0("  Length of returned IV %u bytes\n",
		   ret_iv_len ? ret_iv_len : 16);

	iv_offset = (ctrl1 & SPU2_IV_OFFSET) >> SPU2_IV_OFFSET_SHIFT;
	FUNC0("  IV offset %u\n", iv_offset);

	iv_len = (ctrl1 & SPU2_IV_LEN) >> SPU2_IV_LEN_SHIFT;
	FUNC0("  Input IV len %u bytes\n", iv_len);

	hash_tag_len = (ctrl1 & SPU2_HASH_TAG_LEN) >> SPU2_HASH_TAG_LEN_SHIFT;
	FUNC0("  Hash tag length %u bytes\n", hash_tag_len);

	FUNC0("  Return ");
	ret_md = (ctrl1 & SPU2_RETURN_MD) >> SPU2_RETURN_MD_SHIFT;
	if (ret_md)
		FUNC0("FMD ");
	if (ret_md == SPU2_RET_FMD_OMD)
		FUNC0("OMD ");
	else if (ret_md == SPU2_RET_FMD_OMD_IV)
		FUNC0("OMD IV ");
	if (ctrl1 & SPU2_RETURN_FD)
		FUNC0("FD ");
	if (ctrl1 & SPU2_RETURN_AAD1)
		FUNC0("AAD1 ");
	if (ctrl1 & SPU2_RETURN_NAAD)
		FUNC0("NAAD ");
	if (ctrl1 & SPU2_RETURN_AAD2)
		FUNC0("AAD2 ");
	if (ctrl1 & SPU2_RETURN_PAY)
		FUNC0("Payload");
	FUNC0("\n");
}