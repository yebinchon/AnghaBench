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
struct coresight_device {int dummy; } ;
struct TYPE_2__ {int (* trace_id ) (struct coresight_device*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct coresight_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  coresight_bustype ; 
 int /*<<< orphan*/  coresight_id_match ; 
 TYPE_1__* FUNC1 (struct coresight_device*) ; 
 int FUNC2 (struct coresight_device*) ; 

__attribute__((used)) static int FUNC3(struct coresight_device *csdev)
{
	int trace_id = FUNC1(csdev)->trace_id(csdev);

	/* this shouldn't happen */
	if (trace_id < 0)
		return 0;

	return !FUNC0(&coresight_bustype, NULL,
				 csdev, coresight_id_match);
}