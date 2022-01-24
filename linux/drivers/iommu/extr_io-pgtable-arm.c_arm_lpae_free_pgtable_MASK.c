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
struct io_pgtable {int dummy; } ;
struct arm_lpae_io_pgtable {int /*<<< orphan*/  pgd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct arm_lpae_io_pgtable*) ; 
 int /*<<< orphan*/  FUNC1 (struct arm_lpae_io_pgtable*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct arm_lpae_io_pgtable* FUNC2 (struct io_pgtable*) ; 
 int /*<<< orphan*/  FUNC3 (struct arm_lpae_io_pgtable*) ; 

__attribute__((used)) static void FUNC4(struct io_pgtable *iop)
{
	struct arm_lpae_io_pgtable *data = FUNC2(iop);

	FUNC1(data, FUNC0(data), data->pgd);
	FUNC3(data);
}