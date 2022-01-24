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
struct ipu_vdi {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  VDI_C ; 
 int /*<<< orphan*/  VDI_FSIZE ; 
 int /*<<< orphan*/  FUNC0 (struct ipu_vdi*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC3(struct ipu_vdi *vdi)
{
	unsigned long flags;

	FUNC1(&vdi->lock, flags);
	FUNC0(vdi, 0, VDI_FSIZE);
	FUNC0(vdi, 0, VDI_C);
	FUNC2(&vdi->lock, flags);
}