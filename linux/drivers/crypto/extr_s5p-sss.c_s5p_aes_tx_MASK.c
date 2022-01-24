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
struct s5p_aes_dev {int /*<<< orphan*/  sg_dst; } ;

/* Variables and functions */
 int FUNC0 (struct s5p_aes_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct s5p_aes_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct s5p_aes_dev *dev)
{
	int ret = 0;

	FUNC1(dev);

	if (!FUNC2(dev->sg_dst)) {
		ret = FUNC0(dev, FUNC3(dev->sg_dst));
		if (!ret)
			ret = 1;
	}

	return ret;
}