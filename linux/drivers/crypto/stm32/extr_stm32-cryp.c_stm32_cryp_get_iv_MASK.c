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
typedef  int /*<<< orphan*/  u32 ;
struct stm32_cryp {struct ablkcipher_request* req; } ;
struct ablkcipher_request {int /*<<< orphan*/ * info; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRYP_IV0LR ; 
 int /*<<< orphan*/  CRYP_IV0RR ; 
 int /*<<< orphan*/  CRYP_IV1LR ; 
 int /*<<< orphan*/  CRYP_IV1RR ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct stm32_cryp*) ; 
 int /*<<< orphan*/  FUNC2 (struct stm32_cryp*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct stm32_cryp *cryp)
{
	struct ablkcipher_request *req = cryp->req;
	u32 *tmp = req->info;

	if (!tmp)
		return;

	*tmp++ = FUNC0(FUNC2(cryp, CRYP_IV0LR));
	*tmp++ = FUNC0(FUNC2(cryp, CRYP_IV0RR));

	if (FUNC1(cryp)) {
		*tmp++ = FUNC0(FUNC2(cryp, CRYP_IV1LR));
		*tmp++ = FUNC0(FUNC2(cryp, CRYP_IV1RR));
	}
}