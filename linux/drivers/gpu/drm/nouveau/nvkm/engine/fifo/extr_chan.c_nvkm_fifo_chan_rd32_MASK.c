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
typedef  scalar_t__ u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct nvkm_object {int dummy; } ;
struct nvkm_fifo_chan {scalar_t__ user; scalar_t__ size; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct nvkm_fifo_chan* FUNC2 (struct nvkm_object*) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static int
FUNC4(struct nvkm_object *object, u64 addr, u32 *data)
{
	struct nvkm_fifo_chan *chan = FUNC2(object);
	if (FUNC3(!chan->user)) {
		chan->user = FUNC1(chan->addr, chan->size);
		if (!chan->user)
			return -ENOMEM;
	}
	if (FUNC3(addr + 4 > chan->size))
		return -EINVAL;
	*data = FUNC0(chan->user + addr);
	return 0;
}