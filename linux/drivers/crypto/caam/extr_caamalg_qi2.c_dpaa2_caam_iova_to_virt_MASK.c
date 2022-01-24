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
struct dpaa2_caam_priv {scalar_t__ domain; } ;
typedef  int /*<<< orphan*/  phys_addr_t ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void *FUNC2(struct dpaa2_caam_priv *priv,
				     dma_addr_t iova_addr)
{
	phys_addr_t phys_addr;

	phys_addr = priv->domain ? FUNC0(priv->domain, iova_addr) :
				   iova_addr;

	return FUNC1(phys_addr);
}