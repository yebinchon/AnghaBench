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
struct TYPE_2__ {int /*<<< orphan*/  data; } ;
struct ishtp_cl_rb {size_t buf_idx; TYPE_1__ buffer; } ;
struct ishtp_cl_device {int dummy; } ;
struct ishtp_cl {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ishtp_cl_rb*) ; 
 struct ishtp_cl_rb* FUNC1 (struct ishtp_cl*) ; 
 struct ishtp_cl* FUNC2 (struct ishtp_cl_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct ishtp_cl*,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static void FUNC4(struct ishtp_cl_device *device)
{
	struct ishtp_cl	*hid_ishtp_cl = FUNC2(device);
	struct ishtp_cl_rb *rb_in_proc;
	size_t r_length;

	if (!hid_ishtp_cl)
		return;

	while ((rb_in_proc = FUNC1(hid_ishtp_cl)) != NULL) {
		if (!rb_in_proc->buffer.data)
			return;

		r_length = rb_in_proc->buf_idx;

		/* decide what to do with received data */
		FUNC3(hid_ishtp_cl, rb_in_proc->buffer.data, r_length);

		FUNC0(rb_in_proc);
	}
}