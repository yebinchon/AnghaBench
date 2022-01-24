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
struct uuid_entry {int /*<<< orphan*/  sectors; } ;
struct cache_set {int uuids; } ;
struct bcache_device {int /*<<< orphan*/  kobj; int /*<<< orphan*/  disk; int /*<<< orphan*/  cl; } ;
struct TYPE_2__ {int /*<<< orphan*/  kobj; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bcache_device*,struct cache_set*,struct uuid_entry*) ; 
 scalar_t__ FUNC2 (struct bcache_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bcache_device*,struct cache_set*,char*) ; 
 int /*<<< orphan*/  bch_flash_dev_ktype ; 
 int /*<<< orphan*/  FUNC4 (struct bcache_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct bcache_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct cache_set*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  flash_dev_flush ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 struct bcache_device* FUNC12 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  system_wq ; 

__attribute__((used)) static int FUNC14(struct cache_set *c, struct uuid_entry *u)
{
	struct bcache_device *d = FUNC12(sizeof(struct bcache_device),
					  GFP_KERNEL);
	if (!d)
		return -ENOMEM;

	FUNC7(&d->cl, NULL);
	FUNC13(&d->cl, flash_dev_flush, system_wq);

	FUNC10(&d->kobj, &bch_flash_dev_ktype);

	if (FUNC2(d, FUNC6(c), u->sectors))
		goto err;

	FUNC1(d, c, u - c->uuids);
	FUNC5(d);
	FUNC4(d);
	FUNC0(d->disk);

	if (FUNC9(&d->kobj, &FUNC8(d->disk)->kobj, "bcache"))
		goto err;

	FUNC3(d, c, "volume");

	return 0;
err:
	FUNC11(&d->kobj);
	return -ENOMEM;
}