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
struct list_head {int dummy; } ;
struct coresight_device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 struct list_head* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct list_head*) ; 
 int FUNC2 (struct coresight_device*,struct coresight_device*,struct list_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct list_head*) ; 
 struct list_head* FUNC4 (int,int /*<<< orphan*/ ) ; 

struct list_head *FUNC5(struct coresight_device *source,
				       struct coresight_device *sink)
{
	struct list_head *path;
	int rc;

	if (!sink)
		return FUNC0(-EINVAL);

	path = FUNC4(sizeof(struct list_head), GFP_KERNEL);
	if (!path)
		return FUNC0(-ENOMEM);

	FUNC1(path);

	rc = FUNC2(source, sink, path);
	if (rc) {
		FUNC3(path);
		return FUNC0(rc);
	}

	return path;
}