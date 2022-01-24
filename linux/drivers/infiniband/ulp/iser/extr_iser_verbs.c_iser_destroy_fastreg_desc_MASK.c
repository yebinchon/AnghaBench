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
struct iser_reg_resources {int /*<<< orphan*/ * sig_mr; int /*<<< orphan*/ * mr; } ;
struct iser_fr_desc {struct iser_reg_resources rsc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct iser_fr_desc*) ; 

__attribute__((used)) static void FUNC2(struct iser_fr_desc *desc)
{
	struct iser_reg_resources *res = &desc->rsc;

	FUNC0(res->mr);
	if (res->sig_mr) {
		FUNC0(res->sig_mr);
		res->sig_mr = NULL;
	}
	FUNC1(desc);
}