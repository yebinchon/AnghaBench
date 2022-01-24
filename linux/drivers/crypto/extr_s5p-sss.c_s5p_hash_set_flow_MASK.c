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
typedef  int /*<<< orphan*/  u32 ;
struct s5p_aes_dev {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FCFIFOCTRL ; 
 int /*<<< orphan*/  SSS_HASHIN_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct s5p_aes_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct s5p_aes_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct s5p_aes_dev *dev, u32 hashflow)
{
	unsigned long flags;
	u32 flow;

	FUNC2(&dev->lock, flags);

	flow = FUNC0(dev, FCFIFOCTRL);
	flow &= ~SSS_HASHIN_MASK;
	flow |= hashflow;
	FUNC1(dev, FCFIFOCTRL, flow);

	FUNC3(&dev->lock, flags);
}