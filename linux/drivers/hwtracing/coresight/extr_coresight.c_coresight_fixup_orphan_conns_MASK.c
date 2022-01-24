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
struct coresight_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct coresight_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  coresight_bustype ; 
 int /*<<< orphan*/  coresight_orphan_match ; 

__attribute__((used)) static void FUNC1(struct coresight_device *csdev)
{
	/*
	 * No need to check for a return value as orphan connection(s)
	 * are hooked-up with each newly added component.
	 */
	FUNC0(&coresight_bustype, NULL,
			 csdev, coresight_orphan_match);
}