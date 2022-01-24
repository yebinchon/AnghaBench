#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {long long offset; scalar_t__ external; long long default_offset; struct file* file; } ;
struct mddev {scalar_t__ major_version; int /*<<< orphan*/  thread; int /*<<< orphan*/  sb_flags; int /*<<< orphan*/  external; TYPE_2__ bitmap_info; struct bitmap* bitmap; TYPE_1__* pers; scalar_t__ sync_thread; scalar_t__ recovery; } ;
struct file {int dummy; } ;
struct bitmap {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_3__ {int /*<<< orphan*/  quiesce; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (struct bitmap*) ; 
 int /*<<< orphan*/  MD_SB_CHANGE_DEVS ; 
 int FUNC1 (struct bitmap*) ; 
 int /*<<< orphan*/  FUNC2 (struct file*) ; 
 int FUNC3 (char const*,int,long long*) ; 
 struct bitmap* FUNC4 (struct mddev*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct mddev*) ; 
 int FUNC6 (struct mddev*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (struct mddev*) ; 
 int /*<<< orphan*/  FUNC9 (struct mddev*) ; 
 int /*<<< orphan*/  FUNC10 (struct mddev*) ; 
 int /*<<< orphan*/  FUNC11 (struct mddev*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (char const*,char*,int) ; 

__attribute__((used)) static ssize_t
FUNC14(struct mddev *mddev, const char *buf, size_t len)
{
	int rv;

	rv = FUNC8(mddev);
	if (rv)
		return rv;
	if (mddev->pers) {
		if (!mddev->pers->quiesce) {
			rv = -EBUSY;
			goto out;
		}
		if (mddev->recovery || mddev->sync_thread) {
			rv = -EBUSY;
			goto out;
		}
	}

	if (mddev->bitmap || mddev->bitmap_info.file ||
	    mddev->bitmap_info.offset) {
		/* bitmap already configured.  Only option is to clear it */
		if (FUNC13(buf, "none", 4) != 0) {
			rv = -EBUSY;
			goto out;
		}
		if (mddev->pers) {
			FUNC10(mddev);
			FUNC5(mddev);
			FUNC9(mddev);
		}
		mddev->bitmap_info.offset = 0;
		if (mddev->bitmap_info.file) {
			struct file *f = mddev->bitmap_info.file;
			mddev->bitmap_info.file = NULL;
			FUNC2(f);
		}
	} else {
		/* No bitmap, OK to set a location */
		long long offset;
		if (FUNC13(buf, "none", 4) == 0)
			/* nothing to be done */;
		else if (FUNC13(buf, "file:", 5) == 0) {
			/* Not supported yet */
			rv = -EINVAL;
			goto out;
		} else {
			if (buf[0] == '+')
				rv = FUNC3(buf+1, 10, &offset);
			else
				rv = FUNC3(buf, 10, &offset);
			if (rv)
				goto out;
			if (offset == 0) {
				rv = -EINVAL;
				goto out;
			}
			if (mddev->bitmap_info.external == 0 &&
			    mddev->major_version == 0 &&
			    offset != mddev->bitmap_info.default_offset) {
				rv = -EINVAL;
				goto out;
			}
			mddev->bitmap_info.offset = offset;
			if (mddev->pers) {
				struct bitmap *bitmap;
				bitmap = FUNC4(mddev, -1);
				FUNC10(mddev);
				if (FUNC0(bitmap))
					rv = FUNC1(bitmap);
				else {
					mddev->bitmap = bitmap;
					rv = FUNC6(mddev);
					if (rv)
						mddev->bitmap_info.offset = 0;
				}
				if (rv) {
					FUNC5(mddev);
					FUNC9(mddev);
					goto out;
				}
				FUNC9(mddev);
			}
		}
	}
	if (!mddev->external) {
		/* Ensure new bitmap info is stored in
		 * metadata promptly.
		 */
		FUNC12(MD_SB_CHANGE_DEVS, &mddev->sb_flags);
		FUNC7(mddev->thread);
	}
	rv = 0;
out:
	FUNC11(mddev);
	if (rv)
		return rv;
	return len;
}