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
struct ishtp_cl_device {int /*<<< orphan*/  ishtp_dev; } ;
struct ishtp_cl {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct ishtp_cl*,int /*<<< orphan*/ ) ; 
 struct ishtp_cl* FUNC1 (int,int /*<<< orphan*/ ) ; 

struct ishtp_cl *FUNC2(struct ishtp_cl_device *cl_device)
{
	struct ishtp_cl *cl;

	cl = FUNC1(sizeof(struct ishtp_cl), GFP_KERNEL);
	if (!cl)
		return NULL;

	FUNC0(cl, cl_device->ishtp_dev);
	return cl;
}