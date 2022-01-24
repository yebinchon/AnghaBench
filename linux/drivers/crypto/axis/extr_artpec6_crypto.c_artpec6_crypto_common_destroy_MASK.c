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
struct artpec6_crypto_req_common {int /*<<< orphan*/ * dma; } ;
struct artpec6_crypto {int /*<<< orphan*/  dma_cache; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  artpec6_crypto_dev ; 
 int /*<<< orphan*/  FUNC1 (struct artpec6_crypto_req_common*) ; 
 struct artpec6_crypto* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(struct artpec6_crypto_req_common *common)
{
	struct artpec6_crypto *ac = FUNC2(artpec6_crypto_dev);

	FUNC1(common);
	FUNC0(common->dma);
	FUNC3(ac->dma_cache, common->dma);
	common->dma = NULL;
	return 0;
}