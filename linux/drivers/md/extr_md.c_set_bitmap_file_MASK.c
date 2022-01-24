#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {struct file* file; scalar_t__ offset; } ;
struct mddev {int /*<<< orphan*/  lock; TYPE_3__ bitmap_info; struct bitmap* bitmap; TYPE_2__* pers; scalar_t__ sync_thread; scalar_t__ recovery; int /*<<< orphan*/  thread; } ;
struct inode {int /*<<< orphan*/  i_writecount; int /*<<< orphan*/  i_mode; } ;
struct file {int f_mode; TYPE_1__* f_mapping; } ;
struct bitmap {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  quiesce; } ;
struct TYPE_4__ {struct inode* host; } ;

/* Variables and functions */
 int EBADF ; 
 int EBUSY ; 
 int EEXIST ; 
 int ENOENT ; 
 int FMODE_WRITE ; 
 int /*<<< orphan*/  FUNC0 (struct bitmap*) ; 
 int FUNC1 (struct bitmap*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 struct file* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct file*) ; 
 struct bitmap* FUNC6 (struct mddev*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct mddev*) ; 
 int FUNC8 (struct mddev*) ; 
 int /*<<< orphan*/  FUNC9 (struct mddev*) ; 
 int /*<<< orphan*/  FUNC10 (struct mddev*) ; 
 int /*<<< orphan*/  FUNC11 (struct mddev*) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC15(struct mddev *mddev, int fd)
{
	int err = 0;

	if (mddev->pers) {
		if (!mddev->pers->quiesce || !mddev->thread)
			return -EBUSY;
		if (mddev->recovery || mddev->sync_thread)
			return -EBUSY;
		/* we should be able to change the bitmap.. */
	}

	if (fd >= 0) {
		struct inode *inode;
		struct file *f;

		if (mddev->bitmap || mddev->bitmap_info.file)
			return -EEXIST; /* cannot add when bitmap is present */
		f = FUNC4(fd);

		if (f == NULL) {
			FUNC12("%s: error: failed to get bitmap file\n",
				FUNC11(mddev));
			return -EBADF;
		}

		inode = f->f_mapping->host;
		if (!FUNC2(inode->i_mode)) {
			FUNC12("%s: error: bitmap file must be a regular file\n",
				FUNC11(mddev));
			err = -EBADF;
		} else if (!(f->f_mode & FMODE_WRITE)) {
			FUNC12("%s: error: bitmap file must open for write\n",
				FUNC11(mddev));
			err = -EBADF;
		} else if (FUNC3(&inode->i_writecount) != 1) {
			FUNC12("%s: error: bitmap file is already in use\n",
				FUNC11(mddev));
			err = -EBUSY;
		}
		if (err) {
			FUNC5(f);
			return err;
		}
		mddev->bitmap_info.file = f;
		mddev->bitmap_info.offset = 0; /* file overrides offset */
	} else if (mddev->bitmap == NULL)
		return -ENOENT; /* cannot remove what isn't there */
	err = 0;
	if (mddev->pers) {
		if (fd >= 0) {
			struct bitmap *bitmap;

			bitmap = FUNC6(mddev, -1);
			FUNC10(mddev);
			if (!FUNC0(bitmap)) {
				mddev->bitmap = bitmap;
				err = FUNC8(mddev);
			} else
				err = FUNC1(bitmap);
			if (err) {
				FUNC7(mddev);
				fd = -1;
			}
			FUNC9(mddev);
		} else if (fd < 0) {
			FUNC10(mddev);
			FUNC7(mddev);
			FUNC9(mddev);
		}
	}
	if (fd < 0) {
		struct file *f = mddev->bitmap_info.file;
		if (f) {
			FUNC13(&mddev->lock);
			mddev->bitmap_info.file = NULL;
			FUNC14(&mddev->lock);
			FUNC5(f);
		}
	}

	return err;
}