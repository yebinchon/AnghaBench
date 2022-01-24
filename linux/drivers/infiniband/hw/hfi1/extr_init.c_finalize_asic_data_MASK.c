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
struct hfi1_devdata {int dummy; } ;
struct hfi1_asic_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hfi1_devdata*,struct hfi1_asic_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct hfi1_asic_data*) ; 

__attribute__((used)) static void FUNC2(struct hfi1_devdata *dd,
			       struct hfi1_asic_data *ad)
{
	FUNC0(dd, ad);
	FUNC1(ad);
}