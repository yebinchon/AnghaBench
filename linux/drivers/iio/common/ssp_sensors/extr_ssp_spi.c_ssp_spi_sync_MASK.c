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
struct ssp_msg {int /*<<< orphan*/  length; } ;
struct ssp_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EPERM ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  done ; 
 int FUNC2 (struct ssp_data*,struct ssp_msg*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC3(struct ssp_data *data, struct ssp_msg *msg,
			int timeout)
{
	FUNC0(done);

	if (FUNC1(!msg->length))
		return -EPERM;

	return FUNC2(data, msg, &done, timeout);
}