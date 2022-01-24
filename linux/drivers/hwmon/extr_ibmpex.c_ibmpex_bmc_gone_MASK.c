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
struct ibmpex_bmc_data {int dummy; } ;

/* Variables and functions */
 struct ibmpex_bmc_data* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ibmpex_bmc_data*) ; 

__attribute__((used)) static void FUNC2(int iface)
{
	struct ibmpex_bmc_data *data = FUNC0(iface);

	if (!data)
		return;

	FUNC1(data);
}