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
struct iv_lmk_private {int /*<<< orphan*/ * seed; int /*<<< orphan*/ * hash_tfm; } ;
struct TYPE_2__ {struct iv_lmk_private lmk; } ;
struct crypt_config {TYPE_1__ iv_gen_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct crypt_config *cc)
{
	struct iv_lmk_private *lmk = &cc->iv_gen_private.lmk;

	if (lmk->hash_tfm && !FUNC0(lmk->hash_tfm))
		FUNC1(lmk->hash_tfm);
	lmk->hash_tfm = NULL;

	FUNC2(lmk->seed);
	lmk->seed = NULL;
}