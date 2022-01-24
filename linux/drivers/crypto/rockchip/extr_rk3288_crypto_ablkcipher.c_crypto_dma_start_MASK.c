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
struct rk_crypto_info {int addr_in; int count; int addr_out; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rk_crypto_info*,int /*<<< orphan*/ ,int) ; 
 int RK_CRYPTO_BLOCK_START ; 
 int /*<<< orphan*/  RK_CRYPTO_BRDMAL ; 
 int /*<<< orphan*/  RK_CRYPTO_BRDMAS ; 
 int /*<<< orphan*/  RK_CRYPTO_BTDMAS ; 
 int /*<<< orphan*/  RK_CRYPTO_CTRL ; 
 int FUNC1 (int,int) ; 

__attribute__((used)) static void FUNC2(struct rk_crypto_info *dev)
{
	FUNC0(dev, RK_CRYPTO_BRDMAS, dev->addr_in);
	FUNC0(dev, RK_CRYPTO_BRDMAL, dev->count / 4);
	FUNC0(dev, RK_CRYPTO_BTDMAS, dev->addr_out);
	FUNC0(dev, RK_CRYPTO_CTRL, RK_CRYPTO_BLOCK_START |
		     FUNC1(RK_CRYPTO_BLOCK_START, 16));
}