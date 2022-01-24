#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  hash; int /*<<< orphan*/  crypto; } ;
struct TYPE_5__ {scalar_t__ type; TYPE_1__ alg; } ;

/* Variables and functions */
 scalar_t__ ALG_TYPE_CIPHER ; 
 unsigned int FUNC0 (TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_2__** rk_cipher_algs ; 

__attribute__((used)) static void FUNC3(void)
{
	unsigned int i;

	for (i = 0; i < FUNC0(rk_cipher_algs); i++) {
		if (rk_cipher_algs[i]->type == ALG_TYPE_CIPHER)
			FUNC2(&rk_cipher_algs[i]->alg.crypto);
		else
			FUNC1(&rk_cipher_algs[i]->alg.hash);
	}
}