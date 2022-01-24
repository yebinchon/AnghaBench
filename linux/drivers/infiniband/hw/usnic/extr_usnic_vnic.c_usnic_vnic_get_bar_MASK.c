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
struct vnic_dev_bar {int dummy; } ;
struct usnic_vnic {struct vnic_dev_bar* bar; } ;

/* Variables and functions */
 int FUNC0 (struct vnic_dev_bar*) ; 

struct vnic_dev_bar *FUNC1(struct usnic_vnic *vnic,
				int bar_num)
{
	return (bar_num < FUNC0(vnic->bar)) ? &vnic->bar[bar_num] : NULL;
}