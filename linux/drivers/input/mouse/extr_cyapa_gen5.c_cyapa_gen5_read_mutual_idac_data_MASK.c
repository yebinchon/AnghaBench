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
struct cyapa {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GEN5_RETRIEVE_MUTUAL_PWC_DATA ; 
 int /*<<< orphan*/  PIP_RETRIEVE_DATA_STRUCTURE ; 
 int FUNC0 (struct cyapa*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*,int*,int*) ; 

__attribute__((used)) static int FUNC1(struct cyapa *cyapa,
	int *gidac_mutual_max, int *gidac_mutual_min, int *gidac_mutual_ave,
	int *lidac_mutual_max, int *lidac_mutual_min, int *lidac_mutual_ave)
{
	int data_size;
	int error;

	*gidac_mutual_max = *gidac_mutual_min = *gidac_mutual_ave = 0;
	*lidac_mutual_max = *lidac_mutual_min = *lidac_mutual_ave = 0;

	data_size = 0;
	error = FUNC0(cyapa,
		PIP_RETRIEVE_DATA_STRUCTURE,
		GEN5_RETRIEVE_MUTUAL_PWC_DATA,
		&data_size,
		gidac_mutual_max, gidac_mutual_min, gidac_mutual_ave);
	if (error)
		return error;

	error = FUNC0(cyapa,
		PIP_RETRIEVE_DATA_STRUCTURE,
		GEN5_RETRIEVE_MUTUAL_PWC_DATA,
		&data_size,
		lidac_mutual_max, lidac_mutual_min, lidac_mutual_ave);
	return error;
}