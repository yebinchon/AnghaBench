#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mddev {int external; int persistent; int major_version; int minor_version; char* metadata_type; int /*<<< orphan*/  disks; } ;
typedef  int ssize_t ;
struct TYPE_3__ {int /*<<< orphan*/ * name; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int EBUSY ; 
 int EINVAL ; 
 int ENOENT ; 
 scalar_t__ FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct mddev*) ; 
 int /*<<< orphan*/  FUNC4 (struct mddev*) ; 
 int FUNC5 (char const*,char**,int) ; 
 scalar_t__ FUNC6 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*,size_t) ; 
 TYPE_1__* super_types ; 

__attribute__((used)) static ssize_t
FUNC8(struct mddev *mddev, const char *buf, size_t len)
{
	int major, minor;
	char *e;
	int err;
	/* Changing the details of 'external' metadata is
	 * always permitted.  Otherwise there must be
	 * no devices attached to the array.
	 */

	err = FUNC3(mddev);
	if (err)
		return err;
	err = -EBUSY;
	if (mddev->external && FUNC6(buf, "external:", 9) == 0)
		;
	else if (!FUNC2(&mddev->disks))
		goto out_unlock;

	err = 0;
	if (FUNC1(buf, "none")) {
		mddev->persistent = 0;
		mddev->external = 0;
		mddev->major_version = 0;
		mddev->minor_version = 90;
		goto out_unlock;
	}
	if (FUNC6(buf, "external:", 9) == 0) {
		size_t namelen = len-9;
		if (namelen >= sizeof(mddev->metadata_type))
			namelen = sizeof(mddev->metadata_type)-1;
		FUNC7(mddev->metadata_type, buf+9, namelen);
		mddev->metadata_type[namelen] = 0;
		if (namelen && mddev->metadata_type[namelen-1] == '\n')
			mddev->metadata_type[--namelen] = 0;
		mddev->persistent = 0;
		mddev->external = 1;
		mddev->major_version = 0;
		mddev->minor_version = 90;
		goto out_unlock;
	}
	major = FUNC5(buf, &e, 10);
	err = -EINVAL;
	if (e==buf || *e != '.')
		goto out_unlock;
	buf = e+1;
	minor = FUNC5(buf, &e, 10);
	if (e==buf || (*e && *e != '\n') )
		goto out_unlock;
	err = -ENOENT;
	if (major >= FUNC0(super_types) || super_types[major].name == NULL)
		goto out_unlock;
	mddev->major_version = major;
	mddev->minor_version = minor;
	mddev->persistent = 1;
	mddev->external = 0;
	err = 0;
out_unlock:
	FUNC4(mddev);
	return err ?: len;
}