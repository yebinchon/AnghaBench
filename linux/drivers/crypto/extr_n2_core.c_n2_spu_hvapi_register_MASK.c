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

/* Variables and functions */
 int /*<<< orphan*/  HV_GRP_NCS ; 
 int n2_spu_hvapi_major ; 
 scalar_t__ n2_spu_hvapi_minor ; 
 int /*<<< orphan*/  FUNC0 (char*,int,scalar_t__) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,scalar_t__*) ; 

__attribute__((used)) static int FUNC2(void)
{
	int err;

	n2_spu_hvapi_major = 2;
	n2_spu_hvapi_minor = 0;

	err = FUNC1(HV_GRP_NCS,
				   n2_spu_hvapi_major,
				   &n2_spu_hvapi_minor);

	if (!err)
		FUNC0("Registered NCS HVAPI version %lu.%lu\n",
			n2_spu_hvapi_major,
			n2_spu_hvapi_minor);

	return err;
}