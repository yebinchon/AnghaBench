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
struct inode {int dummy; } ;
struct file {TYPE_2__* private_data; } ;
struct TYPE_4__ {int opened; unsigned long mmap_base; int /*<<< orphan*/  lock; int /*<<< orphan*/  mmap_size; TYPE_1__* cl; int /*<<< orphan*/  hi; scalar_t__ dataind_pending; } ;
struct TYPE_3__ {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int /*<<< orphan*/  CS_MMAP_SIZE ; 
 int EBUSY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 TYPE_2__ cs_char_data ; 
 int FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct inode *unused, struct file *file)
{
	int ret = 0;
	unsigned long p;

	FUNC4(&cs_char_data.lock);
	if (cs_char_data.opened) {
		ret = -EBUSY;
		FUNC5(&cs_char_data.lock);
		goto out1;
	}
	cs_char_data.opened = 1;
	cs_char_data.dataind_pending = 0;
	FUNC5(&cs_char_data.lock);

	p = FUNC3(GFP_KERNEL);
	if (!p) {
		ret = -ENOMEM;
		goto out2;
	}

	ret = FUNC0(&cs_char_data.hi, cs_char_data.cl, p, CS_MMAP_SIZE);
	if (ret) {
		FUNC1(&cs_char_data.cl->device, "Unable to initialize HSI\n");
		goto out3;
	}

	/* these are only used in release so lock not needed */
	cs_char_data.mmap_base = p;
	cs_char_data.mmap_size = CS_MMAP_SIZE;

	file->private_data = &cs_char_data;

	return 0;

out3:
	FUNC2(p);
out2:
	FUNC4(&cs_char_data.lock);
	cs_char_data.opened = 0;
	FUNC5(&cs_char_data.lock);
out1:
	return ret;
}