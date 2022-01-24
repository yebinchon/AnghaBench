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
struct ishtp_cl_data {int /*<<< orphan*/  work; int /*<<< orphan*/  ishtp_resume_wait; int /*<<< orphan*/  init_wait; struct ishtp_cl_device* cl_device; struct ishtp_cl* hid_ishtp_cl; } ;
struct ishtp_cl {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct ishtp_cl_data* FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ishtp_cl*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hid_ishtp_cl_reset_handler ; 
 int /*<<< orphan*/  hid_print_trace ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct ishtp_cl* FUNC4 (struct ishtp_cl_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct ishtp_cl*) ; 
 int /*<<< orphan*/  FUNC6 (struct ishtp_cl_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct ishtp_cl_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct ishtp_cl*,struct ishtp_cl_data*) ; 
 int /*<<< orphan*/  FUNC9 (struct ishtp_cl_device*,struct ishtp_cl*) ; 
 int /*<<< orphan*/  FUNC10 (struct ishtp_cl_device*) ; 

__attribute__((used)) static int FUNC11(struct ishtp_cl_device *cl_device)
{
	struct ishtp_cl *hid_ishtp_cl;
	struct ishtp_cl_data *client_data;
	int rv;

	if (!cl_device)
		return	-ENODEV;

	client_data = FUNC1(FUNC6(cl_device),
				   sizeof(*client_data),
				   GFP_KERNEL);
	if (!client_data)
		return -ENOMEM;

	hid_ishtp_cl = FUNC4(cl_device);
	if (!hid_ishtp_cl)
		return -ENOMEM;

	FUNC9(cl_device, hid_ishtp_cl);
	FUNC8(hid_ishtp_cl, client_data);
	client_data->hid_ishtp_cl = hid_ishtp_cl;
	client_data->cl_device = cl_device;

	FUNC3(&client_data->init_wait);
	FUNC3(&client_data->ishtp_resume_wait);

	FUNC0(&client_data->work, hid_ishtp_cl_reset_handler);

	hid_print_trace = FUNC10(cl_device);

	rv = FUNC2(hid_ishtp_cl, 0);
	if (rv) {
		FUNC5(hid_ishtp_cl);
		return rv;
	}
	FUNC7(cl_device);

	return 0;
}