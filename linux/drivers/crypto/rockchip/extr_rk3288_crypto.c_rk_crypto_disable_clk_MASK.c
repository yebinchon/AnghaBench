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
struct rk_crypto_info {int /*<<< orphan*/  sclk; int /*<<< orphan*/  aclk; int /*<<< orphan*/  hclk; int /*<<< orphan*/  dmaclk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct rk_crypto_info *dev)
{
	FUNC0(dev->dmaclk);
	FUNC0(dev->hclk);
	FUNC0(dev->aclk);
	FUNC0(dev->sclk);
}