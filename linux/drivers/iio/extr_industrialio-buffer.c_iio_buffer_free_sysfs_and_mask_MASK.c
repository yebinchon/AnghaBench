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
struct iio_dev {TYPE_3__* buffer; } ;
struct TYPE_5__ {int /*<<< orphan*/  attrs; } ;
struct TYPE_4__ {int /*<<< orphan*/  attrs; } ;
struct TYPE_6__ {int /*<<< orphan*/  scan_el_dev_attr_list; TYPE_2__ scan_el_group; TYPE_1__ buffer_group; int /*<<< orphan*/  scan_mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(struct iio_dev *indio_dev)
{
	if (!indio_dev->buffer)
		return;

	FUNC0(indio_dev->buffer->scan_mask);
	FUNC2(indio_dev->buffer->buffer_group.attrs);
	FUNC2(indio_dev->buffer->scan_el_group.attrs);
	FUNC1(&indio_dev->buffer->scan_el_dev_attr_list);
}