#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct crypt_config {int key_size; int /*<<< orphan*/  key; int /*<<< orphan*/ * key_string; TYPE_1__* iv_gen_ops; int /*<<< orphan*/  flags; } ;
struct TYPE_2__ {int (* wipe ) (struct crypt_config*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  DM_CRYPT_KEY_VALID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct crypt_config*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct crypt_config*) ; 

__attribute__((used)) static int FUNC6(struct crypt_config *cc)
{
	int r;

	FUNC0(DM_CRYPT_KEY_VALID, &cc->flags);
	FUNC2(&cc->key, cc->key_size);

	/* Wipe IV private keys */
	if (cc->iv_gen_ops && cc->iv_gen_ops->wipe) {
		r = cc->iv_gen_ops->wipe(cc);
		if (r)
			return r;
	}

	FUNC3(cc->key_string);
	cc->key_string = NULL;
	r = FUNC1(cc);
	FUNC4(&cc->key, 0, cc->key_size * sizeof(u8));

	return r;
}