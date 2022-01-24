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
struct crypt_config {int /*<<< orphan*/  flags; scalar_t__ key_size; int /*<<< orphan*/  key; int /*<<< orphan*/ * key_string; } ;

/* Variables and functions */
 int /*<<< orphan*/  DM_CRYPT_KEY_VALID ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct crypt_config*,char*) ; 
 int FUNC2 (struct crypt_config*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (char*,char*) ; 
 int FUNC8 (char*) ; 

__attribute__((used)) static int FUNC9(struct crypt_config *cc, char *key)
{
	int r = -EINVAL;
	int key_string_len = FUNC8(key);

	/* Hyphen (which gives a key_size of zero) means there is no key. */
	if (!cc->key_size && FUNC7(key, "-"))
		goto out;

	/* ':' means the key is in kernel keyring, short-circuit normal key processing */
	if (key[0] == ':') {
		r = FUNC1(cc, key + 1);
		goto out;
	}

	/* clear the flag since following operations may invalidate previously valid key */
	FUNC0(DM_CRYPT_KEY_VALID, &cc->flags);

	/* wipe references to any kernel keyring key */
	FUNC4(cc->key_string);
	cc->key_string = NULL;

	/* Decode key from its hex representation. */
	if (cc->key_size && FUNC3(cc->key, key, cc->key_size) < 0)
		goto out;

	r = FUNC2(cc);
	if (!r)
		FUNC6(DM_CRYPT_KEY_VALID, &cc->flags);

out:
	/* Hex key string not needed after here, so wipe it. */
	FUNC5(key, '0', key_string_len);

	return r;
}