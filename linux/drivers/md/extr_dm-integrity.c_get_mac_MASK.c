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
struct crypto_shash {int dummy; } ;
struct alg_spec {int /*<<< orphan*/  key_size; scalar_t__ key; scalar_t__ alg_string; } ;

/* Variables and functions */
 int CRYPTO_TFM_NEED_KEY ; 
 int ENOKEY ; 
 scalar_t__ FUNC0 (struct crypto_shash*) ; 
 int FUNC1 (struct crypto_shash*) ; 
 struct crypto_shash* FUNC2 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct crypto_shash*) ; 
 int FUNC4 (struct crypto_shash*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct crypto_shash **hash, struct alg_spec *a, char **error,
		   char *error_alg, char *error_key)
{
	int r;

	if (a->alg_string) {
		*hash = FUNC2(a->alg_string, 0, 0);
		if (FUNC0(*hash)) {
			*error = error_alg;
			r = FUNC1(*hash);
			*hash = NULL;
			return r;
		}

		if (a->key) {
			r = FUNC4(*hash, a->key, a->key_size);
			if (r) {
				*error = error_key;
				return r;
			}
		} else if (FUNC3(*hash) & CRYPTO_TFM_NEED_KEY) {
			*error = error_key;
			return -ENOKEY;
		}
	}

	return 0;
}