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
 int /*<<< orphan*/  FF_CMD_ENVELOPE ; 
 unsigned char FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned char FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_1__*,struct resource*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,long,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct iforce*,int /*<<< orphan*/ ,unsigned char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct iforce* iforce,
	struct resource* mod_chunk, int no_alloc,
	u16 attack_duration, __s16 initial_level,
	u16 fade_duration, __s16 final_level)
{
	unsigned char data[8];

	attack_duration = FUNC2(attack_duration);
	fade_duration = FUNC2(fade_duration);

	if (!no_alloc) {
		FUNC5(&iforce->mem_mutex);
		if (FUNC3(&(iforce->device_memory), mod_chunk, 0x0e,
			iforce->device_memory.start, iforce->device_memory.end, 2L,
			NULL, NULL)) {
			FUNC6(&iforce->mem_mutex);
			return -ENOSPC;
		}
		FUNC6(&iforce->mem_mutex);
	}

	data[0] = FUNC1(mod_chunk->start);
	data[1] = FUNC0(mod_chunk->start);

	data[2] = FUNC1(attack_duration);
	data[3] = FUNC0(attack_duration);
	data[4] = FUNC0(initial_level);

	data[5] = FUNC1(fade_duration);
	data[6] = FUNC0(fade_duration);
	data[7] = FUNC0(final_level);

	FUNC4(iforce, FF_CMD_ENVELOPE, data);

	return 0;
}