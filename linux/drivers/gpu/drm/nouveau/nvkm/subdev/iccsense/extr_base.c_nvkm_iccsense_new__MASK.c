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
struct nvkm_iccsense {int /*<<< orphan*/  rails; int /*<<< orphan*/  sensors; } ;
struct nvkm_device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct nvkm_iccsense* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nvkm_device*,int,struct nvkm_iccsense*) ; 

int
FUNC3(struct nvkm_device *device, int index,
		   struct nvkm_iccsense **iccsense)
{
	if (!(*iccsense = FUNC1(sizeof(**iccsense), GFP_KERNEL)))
		return -ENOMEM;
	FUNC0(&(*iccsense)->sensors);
	FUNC0(&(*iccsense)->rails);
	FUNC2(device, index, *iccsense);
	return 0;
}