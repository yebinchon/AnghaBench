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
struct crypt_config {int tfms_count; int key_parts; int /*<<< orphan*/  iv_size; } ;

/* Variables and functions */
 int CRYPTO_MAX_ALG_NAME ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct crypt_config*) ; 
 int /*<<< orphan*/  FUNC1 (struct crypt_config*) ; 
 int FUNC2 (struct crypt_config*,char*) ; 
 int FUNC3 (struct crypt_config*,char*) ; 
 scalar_t__ FUNC4 (struct crypt_config*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (char*,int,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 size_t FUNC9 (char*) ; 
 char* FUNC10 (char*,char) ; 

__attribute__((used)) static int FUNC11(struct dm_target *ti, char *cipher_in, char *key,
				char **ivmode, char **ivopts)
{
	struct crypt_config *cc = ti->private;
	char *tmp, *cipher_api, buf[CRYPTO_MAX_ALG_NAME];
	int ret = -EINVAL;

	cc->tfms_count = 1;

	/*
	 * New format (capi: prefix)
	 * capi:cipher_api_spec-iv:ivopts
	 */
	tmp = &cipher_in[FUNC9("capi:")];

	/* Separate IV options if present, it can contain another '-' in hash name */
	*ivopts = FUNC10(tmp, ':');
	if (*ivopts) {
		**ivopts = '\0';
		(*ivopts)++;
	}
	/* Parse IV mode */
	*ivmode = FUNC10(tmp, '-');
	if (*ivmode) {
		**ivmode = '\0';
		(*ivmode)++;
	}
	/* The rest is crypto API spec */
	cipher_api = tmp;

	/* Alloc AEAD, can be used only in new format. */
	if (FUNC4(cc)) {
		ret = FUNC3(cc, cipher_api);
		if (ret < 0) {
			ti->error = "Invalid AEAD cipher spec";
			return -ENOMEM;
		}
	}

	if (*ivmode && !FUNC8(*ivmode, "lmk"))
		cc->tfms_count = 64;

	if (*ivmode && !FUNC8(*ivmode, "essiv")) {
		if (!*ivopts) {
			ti->error = "Digest algorithm missing for ESSIV mode";
			return -EINVAL;
		}
		ret = FUNC7(buf, CRYPTO_MAX_ALG_NAME, "essiv(%s,%s)",
			       cipher_api, *ivopts);
		if (ret < 0 || ret >= CRYPTO_MAX_ALG_NAME) {
			ti->error = "Cannot allocate cipher string";
			return -ENOMEM;
		}
		cipher_api = buf;
	}

	cc->key_parts = cc->tfms_count;

	/* Allocate cipher */
	ret = FUNC2(cc, cipher_api);
	if (ret < 0) {
		ti->error = "Error allocating crypto tfm";
		return ret;
	}

	if (FUNC4(cc))
		cc->iv_size = FUNC5(FUNC1(cc));
	else
		cc->iv_size = FUNC6(FUNC0(cc));

	return 0;
}