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
typedef  int /*<<< orphan*/  u16 ;
struct resource {int /*<<< orphan*/  start; } ;
struct TYPE_2__ {int /*<<< orphan*/  end; int /*<<< orphan*/  start; } ;
struct iforce {int /*<<< orphan*/  mem_mutex; TYPE_1__ device_memory; } ;
typedef  int /*<<< orphan*/  __s16 ;

/* Variables and functions */
 int ENOSPC ; 
 int /*<<< orphan*/  FF_CMD_PERIOD ; 
 unsigned char FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned char FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned char FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_1__*,struct resource*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,long,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct iforce*,int /*<<< orphan*/ ,unsigned char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct iforce* iforce,
	struct resource* mod_chunk, int no_alloc,
	__s16 magnitude, __s16 offset, u16 period, u16 phase)
{
	unsigned char data[7];

	period = FUNC3(period);

	if (!no_alloc) {
		FUNC6(&iforce->mem_mutex);
		if (FUNC4(&(iforce->device_memory), mod_chunk, 0x0c,
			iforce->device_memory.start, iforce->device_memory.end, 2L,
			NULL, NULL)) {
			FUNC7(&iforce->mem_mutex);
			return -ENOSPC;
		}
		FUNC7(&iforce->mem_mutex);
	}

	data[0] = FUNC2(mod_chunk->start);
	data[1] = FUNC0(mod_chunk->start);

	data[2] = FUNC1(magnitude);
	data[3] = FUNC1(offset);
	data[4] = FUNC0(phase);

	data[5] = FUNC2(period);
	data[6] = FUNC0(period);

	FUNC5(iforce, FF_CMD_PERIOD, data);

	return 0;
}