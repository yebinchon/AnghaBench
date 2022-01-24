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
struct dm_target {char* error; struct crypt_config* private; } ;
struct crypt_config {int tfms_count; int key_parts; } ;

/* Variables and functions */
 int CRYPTO_MAX_ALG_NAME ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct crypt_config*,char*) ; 
 scalar_t__ FUNC1 (struct crypt_config*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (char*,int,char*,char*,char*,...) ; 
 int FUNC6 (char*,char*,int*,char*) ; 
 scalar_t__ FUNC7 (char*,char) ; 
 scalar_t__ FUNC8 (char*,char*) ; 
 char* FUNC9 (char**,char*) ; 

__attribute__((used)) static int FUNC10(struct dm_target *ti, char *cipher_in, char *key,
				char **ivmode, char **ivopts)
{
	struct crypt_config *cc = ti->private;
	char *tmp, *cipher, *chainmode, *keycount;
	char *cipher_api = NULL;
	int ret = -EINVAL;
	char dummy;

	if (FUNC7(cipher_in, '(') || FUNC1(cc)) {
		ti->error = "Bad cipher specification";
		return -EINVAL;
	}

	/*
	 * Legacy dm-crypt cipher specification
	 * cipher[:keycount]-mode-iv:ivopts
	 */
	tmp = cipher_in;
	keycount = FUNC9(&tmp, "-");
	cipher = FUNC9(&keycount, ":");

	if (!keycount)
		cc->tfms_count = 1;
	else if (FUNC6(keycount, "%u%c", &cc->tfms_count, &dummy) != 1 ||
		 !FUNC2(cc->tfms_count)) {
		ti->error = "Bad cipher key count specification";
		return -EINVAL;
	}
	cc->key_parts = cc->tfms_count;

	chainmode = FUNC9(&tmp, "-");
	*ivmode = FUNC9(&tmp, ":");
	*ivopts = tmp;

	/*
	 * For compatibility with the original dm-crypt mapping format, if
	 * only the cipher name is supplied, use cbc-plain.
	 */
	if (!chainmode || (!FUNC8(chainmode, "plain") && !*ivmode)) {
		chainmode = "cbc";
		*ivmode = "plain";
	}

	if (FUNC8(chainmode, "ecb") && !*ivmode) {
		ti->error = "IV mechanism required";
		return -EINVAL;
	}

	cipher_api = FUNC4(CRYPTO_MAX_ALG_NAME, GFP_KERNEL);
	if (!cipher_api)
		goto bad_mem;

	if (*ivmode && !FUNC8(*ivmode, "essiv")) {
		if (!*ivopts) {
			ti->error = "Digest algorithm missing for ESSIV mode";
			FUNC3(cipher_api);
			return -EINVAL;
		}
		ret = FUNC5(cipher_api, CRYPTO_MAX_ALG_NAME,
			       "essiv(%s(%s),%s)", chainmode, cipher, *ivopts);
	} else {
		ret = FUNC5(cipher_api, CRYPTO_MAX_ALG_NAME,
			       "%s(%s)", chainmode, cipher);
	}
	if (ret < 0 || ret >= CRYPTO_MAX_ALG_NAME) {
		FUNC3(cipher_api);
		goto bad_mem;
	}

	/* Allocate cipher */
	ret = FUNC0(cc, cipher_api);
	if (ret < 0) {
		ti->error = "Error allocating crypto tfm";
		FUNC3(cipher_api);
		return ret;
	}
	FUNC3(cipher_api);

	return 0;
bad_mem:
	ti->error = "Cannot allocate cipher strings";
	return -ENOMEM;
}