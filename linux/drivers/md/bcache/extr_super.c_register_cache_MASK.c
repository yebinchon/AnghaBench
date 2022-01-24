#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct page {int dummy; } ;
struct cache_sb {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  bi_inline_vecs; } ;
struct cache {int /*<<< orphan*/  cache_dev_name; int /*<<< orphan*/  kobj; int /*<<< orphan*/  sb; int /*<<< orphan*/  discard; TYPE_2__ sb_bio; struct block_device* bdev; } ;
struct block_device {int /*<<< orphan*/  bd_part; struct cache* bd_holder; } ;
struct TYPE_7__ {struct page* bv_page; } ;
struct TYPE_5__ {int /*<<< orphan*/  kobj; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int EPERM ; 
 int FMODE_EXCL ; 
 int FMODE_READ ; 
 int FMODE_WRITE ; 
 int /*<<< orphan*/  bch_register_lock ; 
 int /*<<< orphan*/  FUNC1 (struct block_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct block_device*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct block_device*,int) ; 
 int FUNC7 (struct cache*) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,struct cache_sb*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (char*,int /*<<< orphan*/ ,char const*) ; 
 char* FUNC17 (struct cache*) ; 

__attribute__((used)) static int FUNC18(struct cache_sb *sb, struct page *sb_page,
				struct block_device *bdev, struct cache *ca)
{
	const char *err = NULL; /* must be set for any error case */
	int ret = 0;

	FUNC2(bdev, ca->cache_dev_name);
	FUNC11(&ca->sb, sb, sizeof(struct cache_sb));
	ca->bdev = bdev;
	ca->bdev->bd_holder = ca;

	FUNC4(&ca->sb_bio, ca->sb_bio.bi_inline_vecs, 1);
	FUNC3(&ca->sb_bio)->bv_page = sb_page;
	FUNC8(sb_page);

	if (FUNC5(FUNC1(bdev)))
		ca->discard = FUNC0(&ca->sb);

	ret = FUNC7(ca);
	if (ret != 0) {
		/*
		 * If we failed here, it means ca->kobj is not initialized yet,
		 * kobject_put() won't be called and there is no chance to
		 * call blkdev_put() to bdev in bch_cache_release(). So we
		 * explicitly call blkdev_put() here.
		 */
		FUNC6(bdev, FMODE_READ|FMODE_WRITE|FMODE_EXCL);
		if (ret == -ENOMEM)
			err = "cache_alloc(): -ENOMEM";
		else if (ret == -EPERM)
			err = "cache_alloc(): cache device is too small";
		else
			err = "cache_alloc(): unknown error";
		goto err;
	}

	if (FUNC9(&ca->kobj,
			&FUNC14(bdev->bd_part)->kobj,
			"bcache")) {
		err = "error calling kobject_add";
		ret = -ENOMEM;
		goto out;
	}

	FUNC12(&bch_register_lock);
	err = FUNC17(ca);
	FUNC13(&bch_register_lock);

	if (err) {
		ret = -ENODEV;
		goto out;
	}

	FUNC15("registered cache device %s", ca->cache_dev_name);

out:
	FUNC10(&ca->kobj);

err:
	if (err)
		FUNC16("error %s: %s", ca->cache_dev_name, err);

	return ret;
}