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
typedef  scalar_t__ u32 ;
struct xgene_edac {int /*<<< orphan*/  lock; scalar_t__ pcp_csr; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct xgene_edac *edac, u32 reg,
				   u32 bits_mask)
{
	u32 val;

	FUNC1(&edac->lock);
	val = FUNC0(edac->pcp_csr + reg);
	val &= ~bits_mask;
	FUNC3(val, edac->pcp_csr + reg);
	FUNC2(&edac->lock);
}