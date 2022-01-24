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
struct md_rdev {TYPE_2__* bdev; int /*<<< orphan*/  kobj; } ;
typedef  int sector_t ;
typedef  int /*<<< orphan*/  dev_t ;
struct TYPE_4__ {int /*<<< orphan*/  bd_inode; } ;
struct TYPE_3__ {int (* load_super ) (struct md_rdev*,int /*<<< orphan*/ *,int) ;} ;

/* Variables and functions */
 int BDEVNAME_SIZE ; 
 int BLOCK_SIZE_BITS ; 
 int EINVAL ; 
 int ENOMEM ; 
 struct md_rdev* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC1 (struct md_rdev*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct md_rdev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct md_rdev* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct md_rdev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct md_rdev*) ; 
 int FUNC9 (struct md_rdev*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  rdev_ktype ; 
 int FUNC11 (struct md_rdev*,int /*<<< orphan*/ *,int) ; 
 TYPE_1__* super_types ; 
 int /*<<< orphan*/  FUNC12 (struct md_rdev*) ; 

__attribute__((used)) static struct md_rdev *FUNC13(dev_t newdev, int super_format, int super_minor)
{
	char b[BDEVNAME_SIZE];
	int err;
	struct md_rdev *rdev;
	sector_t size;

	rdev = FUNC6(sizeof(*rdev), GFP_KERNEL);
	if (!rdev)
		return FUNC0(-ENOMEM);

	err = FUNC9(rdev);
	if (err)
		goto abort_free;
	err = FUNC1(rdev);
	if (err)
		goto abort_free;

	err = FUNC7(rdev, newdev, super_format == -2);
	if (err)
		goto abort_free;

	FUNC5(&rdev->kobj, &rdev_ktype);

	size = FUNC3(rdev->bdev->bd_inode) >> BLOCK_SIZE_BITS;
	if (!size) {
		FUNC10("md: %s has zero or unknown size, marking faulty!\n",
			FUNC2(rdev->bdev,b));
		err = -EINVAL;
		goto abort_free;
	}

	if (super_format >= 0) {
		err = super_types[super_format].
			load_super(rdev, NULL, super_minor);
		if (err == -EINVAL) {
			FUNC10("md: %s does not have a valid v%d.%d superblock, not importing!\n",
				FUNC2(rdev->bdev,b),
				super_format, super_minor);
			goto abort_free;
		}
		if (err < 0) {
			FUNC10("md: could not read %s's sb, not importing!\n",
				FUNC2(rdev->bdev,b));
			goto abort_free;
		}
	}

	return rdev;

abort_free:
	if (rdev->bdev)
		FUNC12(rdev);
	FUNC8(rdev);
	FUNC4(rdev);
	return FUNC0(err);
}