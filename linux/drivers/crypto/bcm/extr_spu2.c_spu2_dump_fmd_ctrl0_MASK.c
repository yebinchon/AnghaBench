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
typedef  enum spu2_hash_type { ____Placeholder_spu2_hash_type } spu2_hash_type ;
typedef  enum spu2_hash_mode { ____Placeholder_spu2_hash_mode } spu2_hash_mode ;
typedef  enum spu2_cipher_type { ____Placeholder_spu2_cipher_type } spu2_cipher_type ;
typedef  enum spu2_cipher_mode { ____Placeholder_spu2_cipher_mode } spu2_cipher_mode ;

/* Variables and functions */
 int SPU2_CFB_MASK ; 
 int SPU2_CFB_MASK_SHIFT ; 
 int SPU2_CHK_TAG ; 
 int SPU2_CIPHER_TYPE_NONE ; 
 int SPU2_CIPH_ENCRYPT_EN ; 
 int SPU2_CIPH_MODE ; 
 int SPU2_CIPH_MODE_SHIFT ; 
 int SPU2_CIPH_PAD ; 
 int SPU2_CIPH_PAD_EN ; 
 int SPU2_CIPH_PAD_SHIFT ; 
 int SPU2_CIPH_TYPE ; 
 int SPU2_CIPH_TYPE_SHIFT ; 
 int SPU2_HASH_FIRST ; 
 int SPU2_HASH_MODE ; 
 int SPU2_HASH_MODE_SHIFT ; 
 int SPU2_HASH_TYPE ; 
 int SPU2_HASH_TYPE_NONE ; 
 int SPU2_HASH_TYPE_SHIFT ; 
 int SPU2_PROTO_SEL ; 
 int SPU2_PROTO_SEL_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 char* FUNC1 (int) ; 
 char* FUNC2 (int) ; 
 char* FUNC3 (int) ; 
 char* FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(u64 ctrl0)
{
	enum spu2_cipher_type ciph_type;
	enum spu2_cipher_mode ciph_mode;
	enum spu2_hash_type hash_type;
	enum spu2_hash_mode hash_mode;
	char *ciph_name;
	char *ciph_mode_name;
	char *hash_name;
	char *hash_mode_name;
	u8 cfb;
	u8 proto;

	FUNC0(" FMD CTRL0 %#16llx\n", ctrl0);
	if (ctrl0 & SPU2_CIPH_ENCRYPT_EN)
		FUNC0("  encrypt\n");
	else
		FUNC0("  decrypt\n");

	ciph_type = (ctrl0 & SPU2_CIPH_TYPE) >> SPU2_CIPH_TYPE_SHIFT;
	ciph_name = FUNC2(ciph_type);
	FUNC0("  Cipher type: %s\n", ciph_name);

	if (ciph_type != SPU2_CIPHER_TYPE_NONE) {
		ciph_mode = (ctrl0 & SPU2_CIPH_MODE) >> SPU2_CIPH_MODE_SHIFT;
		ciph_mode_name = FUNC1(ciph_mode);
		FUNC0("  Cipher mode: %s\n", ciph_mode_name);
	}

	cfb = (ctrl0 & SPU2_CFB_MASK) >> SPU2_CFB_MASK_SHIFT;
	FUNC0("  CFB %#x\n", cfb);

	proto = (ctrl0 & SPU2_PROTO_SEL) >> SPU2_PROTO_SEL_SHIFT;
	FUNC0("  protocol %#x\n", proto);

	if (ctrl0 & SPU2_HASH_FIRST)
		FUNC0("  hash first\n");
	else
		FUNC0("  cipher first\n");

	if (ctrl0 & SPU2_CHK_TAG)
		FUNC0("  check tag\n");

	hash_type = (ctrl0 & SPU2_HASH_TYPE) >> SPU2_HASH_TYPE_SHIFT;
	hash_name = FUNC4(hash_type);
	FUNC0("  Hash type: %s\n", hash_name);

	if (hash_type != SPU2_HASH_TYPE_NONE) {
		hash_mode = (ctrl0 & SPU2_HASH_MODE) >> SPU2_HASH_MODE_SHIFT;
		hash_mode_name = FUNC3(hash_mode);
		FUNC0("  Hash mode: %s\n", hash_mode_name);
	}

	if (ctrl0 & SPU2_CIPH_PAD_EN) {
		FUNC0("  Cipher pad: %#2llx\n",
			   (ctrl0 & SPU2_CIPH_PAD) >> SPU2_CIPH_PAD_SHIFT);
	}
}