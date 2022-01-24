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
typedef  scalar_t__ u32 ;

/* Variables and functions */
 scalar_t__ AES_KEYSIZE_128 ; 
 scalar_t__ AES_KEYSIZE_256 ; 
 scalar_t__ AUTH_ALG_AES ; 
 scalar_t__ AUTH_ALG_SHA ; 
 scalar_t__ AUTH_ALG_SHIFT ; 
 int /*<<< orphan*/  AUTH_FIRST_SHIFT ; 
 scalar_t__ AUTH_KEY_SIZE_SHIFT ; 
 scalar_t__ AUTH_KEY_SZ_AES128 ; 
 scalar_t__ AUTH_KEY_SZ_AES256 ; 
 int /*<<< orphan*/  AUTH_LAST_SHIFT ; 
 scalar_t__ AUTH_MODE_CCM ; 
 scalar_t__ AUTH_MODE_CMAC ; 
 scalar_t__ AUTH_MODE_HASH ; 
 scalar_t__ AUTH_MODE_HMAC ; 
 scalar_t__ AUTH_MODE_SHIFT ; 
 scalar_t__ AUTH_NONCE_NUM_WORDS_SHIFT ; 
 scalar_t__ AUTH_POS_BEFORE ; 
 scalar_t__ AUTH_POS_SHIFT ; 
 scalar_t__ AUTH_SIZE_ENUM_16_BYTES ; 
 scalar_t__ AUTH_SIZE_SHA1 ; 
 scalar_t__ AUTH_SIZE_SHA256 ; 
 scalar_t__ AUTH_SIZE_SHIFT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (unsigned long) ; 
 scalar_t__ FUNC2 (unsigned long) ; 
 scalar_t__ FUNC3 (unsigned long) ; 
 scalar_t__ FUNC4 (unsigned long) ; 
 scalar_t__ FUNC5 (unsigned long) ; 
 scalar_t__ FUNC6 (unsigned long) ; 
 scalar_t__ FUNC7 (unsigned long) ; 
 scalar_t__ FUNC8 (unsigned long) ; 
 scalar_t__ FUNC9 (unsigned long) ; 
 scalar_t__ FUNC10 (unsigned long) ; 
 scalar_t__ FUNC11 (unsigned long) ; 
 scalar_t__ QCE_MAX_NONCE_WORDS ; 

__attribute__((used)) static u32 FUNC12(unsigned long flags, u32 key_size)
{
	u32 cfg = 0;

	if (FUNC1(flags) && (FUNC3(flags) || FUNC4(flags)))
		cfg |= AUTH_ALG_AES << AUTH_ALG_SHIFT;
	else
		cfg |= AUTH_ALG_SHA << AUTH_ALG_SHIFT;

	if (FUNC3(flags) || FUNC4(flags)) {
		if (key_size == AES_KEYSIZE_128)
			cfg |= AUTH_KEY_SZ_AES128 << AUTH_KEY_SIZE_SHIFT;
		else if (key_size == AES_KEYSIZE_256)
			cfg |= AUTH_KEY_SZ_AES256 << AUTH_KEY_SIZE_SHIFT;
	}

	if (FUNC7(flags) || FUNC8(flags))
		cfg |= AUTH_SIZE_SHA1 << AUTH_SIZE_SHIFT;
	else if (FUNC9(flags) || FUNC10(flags))
		cfg |= AUTH_SIZE_SHA256 << AUTH_SIZE_SHIFT;
	else if (FUNC4(flags))
		cfg |= AUTH_SIZE_ENUM_16_BYTES << AUTH_SIZE_SHIFT;

	if (FUNC7(flags) || FUNC9(flags))
		cfg |= AUTH_MODE_HASH << AUTH_MODE_SHIFT;
	else if (FUNC8(flags) || FUNC10(flags) ||
		 FUNC2(flags) || FUNC5(flags))
		cfg |= AUTH_MODE_HMAC << AUTH_MODE_SHIFT;
	else if (FUNC1(flags) && FUNC3(flags))
		cfg |= AUTH_MODE_CCM << AUTH_MODE_SHIFT;
	else if (FUNC1(flags) && FUNC4(flags))
		cfg |= AUTH_MODE_CMAC << AUTH_MODE_SHIFT;

	if (FUNC6(flags) || FUNC11(flags))
		cfg |= AUTH_POS_BEFORE << AUTH_POS_SHIFT;

	if (FUNC3(flags))
		cfg |= QCE_MAX_NONCE_WORDS << AUTH_NONCE_NUM_WORDS_SHIFT;

	if (FUNC2(flags) || FUNC5(flags) || FUNC3(flags) ||
	    FUNC4(flags))
		cfg |= FUNC0(AUTH_LAST_SHIFT) | FUNC0(AUTH_FIRST_SHIFT);

	return cfg;
}