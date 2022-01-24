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
struct gp2ap020a00f_data {int /*<<< orphan*/  flags; int /*<<< orphan*/  data_ready_queue; } ;

/* Variables and functions */
 int ETIME ; 
 int /*<<< orphan*/  GP2AP020A00F_DATA_READY_TIMEOUT ; 
 int /*<<< orphan*/  GP2AP020A00F_FLAG_DATA_READY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct gp2ap020a00f_data *data)
{
	int ret;

	ret = FUNC2(data->data_ready_queue,
				 FUNC1(GP2AP020A00F_FLAG_DATA_READY,
					  &data->flags),
				 GP2AP020A00F_DATA_READY_TIMEOUT);
	FUNC0(GP2AP020A00F_FLAG_DATA_READY, &data->flags);

	return ret > 0 ? 0 : -ETIME;
}