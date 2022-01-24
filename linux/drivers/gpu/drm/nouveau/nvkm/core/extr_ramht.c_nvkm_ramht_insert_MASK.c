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
typedef  size_t u32 ;
struct nvkm_ramht {size_t size; TYPE_1__* data; } ;
struct nvkm_object {int dummy; } ;
struct TYPE_2__ {scalar_t__ chid; } ;

/* Variables and functions */
 int EEXIST ; 
 int ENOSPC ; 
 size_t FUNC0 (struct nvkm_ramht*,int,size_t) ; 
 scalar_t__ FUNC1 (struct nvkm_ramht*,int,size_t) ; 
 int FUNC2 (struct nvkm_ramht*,size_t,struct nvkm_object*,int,int,size_t,size_t) ; 

int
FUNC3(struct nvkm_ramht *ramht, struct nvkm_object *object,
		  int chid, int addr, u32 handle, u32 context)
{
	u32 co, ho;

	if (FUNC1(ramht, chid, handle))
		return -EEXIST;

	co = ho = FUNC0(ramht, chid, handle);
	do {
		if (ramht->data[co].chid < 0) {
			return FUNC2(ramht, co, object, chid,
						 addr, handle, context);
		}

		if (++co >= ramht->size)
			co = 0;
	} while (co != ho);

	return -ENOSPC;
}