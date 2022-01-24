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
typedef  int /*<<< orphan*/  u32 ;
struct stm32_cryp {TYPE_1__* ctx; } ;
struct TYPE_2__ {int keylen; int /*<<< orphan*/ * key; } ;

/* Variables and functions */
 int CRYP_K1LR ; 
 int CRYP_K1RR ; 
 int CRYP_K3RR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct stm32_cryp*) ; 
 int /*<<< orphan*/  FUNC2 (struct stm32_cryp*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct stm32_cryp *c)
{
	unsigned int i;
	int r_id;

	if (FUNC1(c)) {
		FUNC2(c, CRYP_K1LR, FUNC0(c->ctx->key[0]));
		FUNC2(c, CRYP_K1RR, FUNC0(c->ctx->key[1]));
	} else {
		r_id = CRYP_K3RR;
		for (i = c->ctx->keylen / sizeof(u32); i > 0; i--, r_id -= 4)
			FUNC2(c, r_id,
					 FUNC0(c->ctx->key[i - 1]));
	}
}