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
struct ishtp_cl_device {int dummy; } ;
struct ishtp_cl_data {int /*<<< orphan*/  work_ishtp_reset; } ;
struct ishtp_cl {int dummy; } ;

/* Variables and functions */
 struct ishtp_cl_data* FUNC0 (struct ishtp_cl*) ; 
 struct ishtp_cl* FUNC1 (struct ishtp_cl_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct ishtp_cl_device *cl_device)
{
	struct ishtp_cl_data *client_data;
	struct ishtp_cl	*loader_ishtp_cl = FUNC1(cl_device);

	client_data = FUNC0(loader_ishtp_cl);

	FUNC2(&client_data->work_ishtp_reset);

	return 0;
}