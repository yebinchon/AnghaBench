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
struct dps310_data {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct dps310_data*) ; 
 size_t FUNC1 (int) ; 
 int* scale_factors ; 

__attribute__((used)) static int FUNC2(struct dps310_data *data)
{
	int rc = FUNC0(data);

	if (rc < 0)
		return rc;

	return scale_factors[FUNC1(rc)];
}