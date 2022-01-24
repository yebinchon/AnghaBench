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
struct TYPE_2__ {int /*<<< orphan*/ * attrs; } ;
struct iio_dev {TYPE_1__ chan_attr_group; int /*<<< orphan*/  channel_attr_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct iio_dev *indio_dev)
{

	FUNC0(&indio_dev->channel_attr_list);
	FUNC1(indio_dev->chan_attr_group.attrs);
	indio_dev->chan_attr_group.attrs = NULL;
}