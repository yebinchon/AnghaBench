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
struct kfd_process_device {int /*<<< orphan*/  per_device_list; } ;
struct kfd_process {int /*<<< orphan*/  per_device_data; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct kfd_process_device* FUNC1 (struct kfd_process_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  per_device_list ; 

struct kfd_process_device *FUNC2(
						struct kfd_process *p,
						struct kfd_process_device *pdd)
{
	if (FUNC0(&pdd->per_device_list, &p->per_device_data))
		return NULL;
	return FUNC1(pdd, per_device_list);
}