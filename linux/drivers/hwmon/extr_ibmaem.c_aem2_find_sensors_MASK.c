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
struct aem_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  aem2_ro_sensors ; 
 int /*<<< orphan*/  aem2_rw_sensors ; 
 int FUNC0 (struct aem_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct aem_data *data)
{
	return FUNC0(data, aem2_ro_sensors, aem2_rw_sensors);
}