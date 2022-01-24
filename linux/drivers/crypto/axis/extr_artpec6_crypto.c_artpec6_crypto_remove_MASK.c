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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct artpec6_crypto {int /*<<< orphan*/  dma_cache; int /*<<< orphan*/  timer; int /*<<< orphan*/  task; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  aead_algos ; 
 int /*<<< orphan*/  FUNC1 (struct artpec6_crypto*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  crypto_algos ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,struct artpec6_crypto*) ; 
 int /*<<< orphan*/  hash_algos ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 struct artpec6_crypto* FUNC9 (struct platform_device*) ; 
 int FUNC10 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(struct platform_device *pdev)
{
	struct artpec6_crypto *ac = FUNC9(pdev);
	int irq = FUNC10(pdev, 0);

	FUNC4(hash_algos, FUNC0(hash_algos));
	FUNC5(crypto_algos, FUNC0(crypto_algos));
	FUNC3(aead_algos, FUNC0(aead_algos));

	FUNC11(&ac->task);
	FUNC7(&pdev->dev, irq, ac);
	FUNC12(&ac->task);
	FUNC6(&ac->timer);

	FUNC1(ac);

	FUNC8(ac->dma_cache);
#ifdef CONFIG_DEBUG_FS
	artpec6_crypto_free_debugfs();
#endif
	return 0;
}