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
struct mddev {int ro; scalar_t__ hold_active; int /*<<< orphan*/  sysfs_state; int /*<<< orphan*/  gendisk; int /*<<< orphan*/  sb_wait; int /*<<< orphan*/  sb_flags; scalar_t__ pers; int /*<<< orphan*/  lock; int /*<<< orphan*/  thread; } ;
typedef  size_t ssize_t ;
typedef  enum array_state { ____Placeholder_array_state } array_state ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  MD_SB_CHANGE_PENDING ; 
 scalar_t__ UNTIL_IOCTL ; 
#define  active 138 
#define  active_idle 137 
 int /*<<< orphan*/  array_states ; 
#define  bad_word 136 
#define  broken 135 
#define  clean 134 
#define  clear 133 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct mddev*) ; 
 int FUNC2 (struct mddev*,int,int /*<<< orphan*/ *) ; 
#define  inactive 132 
 int FUNC3 (char const*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct mddev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct mddev*) ; 
 int /*<<< orphan*/  FUNC7 (struct mddev*) ; 
#define  read_auto 131 
#define  readonly 130 
 int FUNC8 (struct mddev*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct mddev*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
#define  suspended 129 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
#define  write_pending 128 

__attribute__((used)) static ssize_t
FUNC15(struct mddev *mddev, const char *buf, size_t len)
{
	int err = 0;
	enum array_state st = FUNC3(buf, array_states);

	if (mddev->pers && (st == active || st == clean) && mddev->ro != 1) {
		/* don't take reconfig_mutex when toggling between
		 * clean and active
		 */
		FUNC11(&mddev->lock);
		if (st == active) {
			FUNC8(mddev);
			FUNC0(MD_SB_CHANGE_PENDING, &mddev->sb_flags);
			FUNC5(mddev->thread);
			FUNC14(&mddev->sb_wait);
		} else /* st == clean */ {
			FUNC8(mddev);
			if (!FUNC10(mddev))
				err = -EBUSY;
		}
		if (!err)
			FUNC13(mddev->sysfs_state);
		FUNC12(&mddev->lock);
		return err ?: len;
	}
	err = FUNC6(mddev);
	if (err)
		return err;
	err = -EINVAL;
	switch(st) {
	case bad_word:
		break;
	case clear:
		/* stopping an active array */
		err = FUNC2(mddev, 0, NULL);
		break;
	case inactive:
		/* stopping an active array */
		if (mddev->pers)
			err = FUNC2(mddev, 2, NULL);
		else
			err = 0; /* already inactive */
		break;
	case suspended:
		break; /* not supported yet */
	case readonly:
		if (mddev->pers)
			err = FUNC4(mddev, NULL);
		else {
			mddev->ro = 1;
			FUNC9(mddev->gendisk, 1);
			err = FUNC1(mddev);
		}
		break;
	case read_auto:
		if (mddev->pers) {
			if (mddev->ro == 0)
				err = FUNC4(mddev, NULL);
			else if (mddev->ro == 1)
				err = FUNC8(mddev);
			if (err == 0) {
				mddev->ro = 2;
				FUNC9(mddev->gendisk, 0);
			}
		} else {
			mddev->ro = 2;
			err = FUNC1(mddev);
		}
		break;
	case clean:
		if (mddev->pers) {
			err = FUNC8(mddev);
			if (err)
				break;
			FUNC11(&mddev->lock);
			if (!FUNC10(mddev))
				err = -EBUSY;
			FUNC12(&mddev->lock);
		} else
			err = -EINVAL;
		break;
	case active:
		if (mddev->pers) {
			err = FUNC8(mddev);
			if (err)
				break;
			FUNC0(MD_SB_CHANGE_PENDING, &mddev->sb_flags);
			FUNC14(&mddev->sb_wait);
			err = 0;
		} else {
			mddev->ro = 0;
			FUNC9(mddev->gendisk, 0);
			err = FUNC1(mddev);
		}
		break;
	case write_pending:
	case active_idle:
	case broken:
		/* these cannot be set */
		break;
	}

	if (!err) {
		if (mddev->hold_active == UNTIL_IOCTL)
			mddev->hold_active = 0;
		FUNC13(mddev->sysfs_state);
	}
	FUNC7(mddev);
	return err ?: len;
}