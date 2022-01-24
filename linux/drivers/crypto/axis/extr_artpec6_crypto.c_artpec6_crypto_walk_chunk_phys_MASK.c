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
struct artpec6_crypto_walk {scalar_t__ offset; int /*<<< orphan*/  sg; } ;
typedef  scalar_t__ dma_addr_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static dma_addr_t
FUNC1(const struct artpec6_crypto_walk *awalk)
{
	return FUNC0(awalk->sg) + awalk->offset;
}