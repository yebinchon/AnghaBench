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
struct rc_dev {struct picolcd_data* priv; } ;
struct picolcd_data {int /*<<< orphan*/  lock; int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int /*<<< orphan*/  PICOLCD_CIR_SHUN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC2(struct rc_dev *dev)
{
	struct picolcd_data *data = dev->priv;
	unsigned long flags;

	FUNC0(&data->lock, flags);
	data->status &= ~PICOLCD_CIR_SHUN;
	FUNC1(&data->lock, flags);
	return 0;
}