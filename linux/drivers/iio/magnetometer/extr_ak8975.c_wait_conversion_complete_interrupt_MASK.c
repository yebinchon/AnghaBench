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
struct ak8975_data {int /*<<< orphan*/  flags; int /*<<< orphan*/  data_ready_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  AK8975_DATA_READY_TIMEOUT ; 
 int ETIME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct ak8975_data *data)
{
	int ret;

	ret = FUNC2(data->data_ready_queue,
				 FUNC1(0, &data->flags),
				 AK8975_DATA_READY_TIMEOUT);
	FUNC0(0, &data->flags);

	return ret > 0 ? 0 : -ETIME;
}