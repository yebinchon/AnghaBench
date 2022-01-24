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
struct xgene_dma_desc_hw {int /*<<< orphan*/  m2; int /*<<< orphan*/  m3; int /*<<< orphan*/  m0; int /*<<< orphan*/  m1; } ;
typedef  int /*<<< orphan*/  __le64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 

__attribute__((used)) static __le64 *FUNC1(struct xgene_dma_desc_hw *desc, int idx)
{
	switch (idx) {
	case 0:
		return &desc->m1;
	case 1:
		return &desc->m0;
	case 2:
		return &desc->m3;
	case 3:
		return &desc->m2;
	default:
		FUNC0("Invalid dma descriptor index\n");
	}

	return NULL;
}