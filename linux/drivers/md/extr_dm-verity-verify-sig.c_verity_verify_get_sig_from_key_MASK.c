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
struct user_key_payload {int /*<<< orphan*/  data; int /*<<< orphan*/  datalen; } ;
struct key {int /*<<< orphan*/  sem; } ;
struct dm_verity_sig_opts {int /*<<< orphan*/  sig_size; int /*<<< orphan*/  sig; } ;

/* Variables and functions */
 int EKEYREVOKED ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct key*) ; 
 int FUNC1 (struct key*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct key*) ; 
 int /*<<< orphan*/  key_type_user ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct key* FUNC6 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct user_key_payload* FUNC8 (struct key*) ; 

__attribute__((used)) static int FUNC9(const char *key_desc,
					struct dm_verity_sig_opts *sig_opts)
{
	struct key *key;
	const struct user_key_payload *ukp;
	int ret = 0;

	key = FUNC6(&key_type_user,
			key_desc, NULL);
	if (FUNC0(key))
		return FUNC1(key);

	FUNC2(&key->sem);

	ukp = FUNC8(key);
	if (!ukp) {
		ret = -EKEYREVOKED;
		goto end;
	}

	sig_opts->sig = FUNC4(ukp->datalen, GFP_KERNEL);
	if (!sig_opts->sig) {
		ret = -ENOMEM;
		goto end;
	}
	sig_opts->sig_size = ukp->datalen;

	FUNC5(sig_opts->sig, ukp->data, sig_opts->sig_size);

end:
	FUNC7(&key->sem);
	FUNC3(key);

	return ret;
}