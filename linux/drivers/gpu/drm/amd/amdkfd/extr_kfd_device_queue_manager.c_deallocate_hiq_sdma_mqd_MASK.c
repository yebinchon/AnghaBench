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
struct kfd_mem_obj {int /*<<< orphan*/  gtt_mem; } ;
struct kfd_dev {int /*<<< orphan*/  kgd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct kfd_dev *dev,
				    struct kfd_mem_obj *mqd)
{
	FUNC0(!mqd, "No hiq sdma mqd trunk to free");

	FUNC1(dev->kgd, mqd->gtt_mem);
}