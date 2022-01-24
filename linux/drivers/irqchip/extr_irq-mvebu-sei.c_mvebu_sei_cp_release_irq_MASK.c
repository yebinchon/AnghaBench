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
struct mvebu_sei {int /*<<< orphan*/  cp_msi_lock; int /*<<< orphan*/  cp_msi_bitmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct mvebu_sei *sei, unsigned long hwirq)
{
	FUNC1(&sei->cp_msi_lock);
	FUNC0(hwirq, sei->cp_msi_bitmap);
	FUNC2(&sei->cp_msi_lock);
}