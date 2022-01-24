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
struct kgd_mem {int dummy; } ;
struct kfd_process_device {int /*<<< orphan*/  vm; struct kfd_dev* dev; } ;
struct kfd_dev {int /*<<< orphan*/  kgd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct kgd_mem*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct kgd_mem*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct kgd_mem *mem,
			struct kfd_process_device *pdd)
{
	struct kfd_dev *dev = pdd->dev;

	FUNC1(dev->kgd, mem, pdd->vm);
	FUNC0(dev->kgd, mem);
}