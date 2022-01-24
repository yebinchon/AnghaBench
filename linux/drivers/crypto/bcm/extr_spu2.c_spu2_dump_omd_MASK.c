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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static void FUNC2(u8 *omd, u16 hash_key_len, u16 ciph_key_len,
			  u16 hash_iv_len, u16 ciph_iv_len)
{
	u8 *ptr = omd;

	FUNC1(" OMD:\n");

	if (hash_key_len) {
		FUNC1("  Hash Key Length %u bytes\n", hash_key_len);
		FUNC0("  KEY: ", ptr, hash_key_len);
		ptr += hash_key_len;
	}

	if (ciph_key_len) {
		FUNC1("  Cipher Key Length %u bytes\n", ciph_key_len);
		FUNC0("  KEY: ", ptr, ciph_key_len);
		ptr += ciph_key_len;
	}

	if (hash_iv_len) {
		FUNC1("  Hash IV Length %u bytes\n", hash_iv_len);
		FUNC0("  hash IV: ", ptr, hash_iv_len);
		ptr += ciph_key_len;
	}

	if (ciph_iv_len) {
		FUNC1("  Cipher IV Length %u bytes\n", ciph_iv_len);
		FUNC0("  cipher IV: ", ptr, ciph_iv_len);
	}
}