#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ishtp_cl_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  wait_queue; } ;
struct ishtp_cl_data {int /*<<< orphan*/  work_fw_load; scalar_t__ retry_count; int /*<<< orphan*/  work_ishtp_reset; TYPE_1__ response; struct ishtp_cl_device* cl_device; struct ishtp_cl* loader_ishtp_cl; } ;
struct ishtp_cl {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct ishtp_cl_data* FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct ishtp_cl* FUNC3 (struct ishtp_cl_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct ishtp_cl*) ; 
 int /*<<< orphan*/  FUNC5 (struct ishtp_cl_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct ishtp_cl_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct ishtp_cl*,struct ishtp_cl_data*) ; 
 int /*<<< orphan*/  FUNC8 (struct ishtp_cl_device*,struct ishtp_cl*) ; 
 int /*<<< orphan*/  load_fw_from_host_handler ; 
 int FUNC9 (struct ishtp_cl*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  reset_handler ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct ishtp_cl_device *cl_device)
{
	struct ishtp_cl *loader_ishtp_cl;
	struct ishtp_cl_data *client_data;
	int rv;

	client_data = FUNC1(FUNC5(cl_device),
				   sizeof(*client_data),
				   GFP_KERNEL);
	if (!client_data)
		return -ENOMEM;

	loader_ishtp_cl = FUNC3(cl_device);
	if (!loader_ishtp_cl)
		return -ENOMEM;

	FUNC8(cl_device, loader_ishtp_cl);
	FUNC7(loader_ishtp_cl, client_data);
	client_data->loader_ishtp_cl = loader_ishtp_cl;
	client_data->cl_device = cl_device;

	FUNC2(&client_data->response.wait_queue);

	FUNC0(&client_data->work_ishtp_reset,
		  reset_handler);
	FUNC0(&client_data->work_fw_load,
		  load_fw_from_host_handler);

	rv = FUNC9(loader_ishtp_cl, 0);
	if (rv < 0) {
		FUNC4(loader_ishtp_cl);
		return rv;
	}
	FUNC6(cl_device);

	client_data->retry_count = 0;

	/* ISH firmware loading from host */
	FUNC10(&client_data->work_fw_load);

	return 0;
}