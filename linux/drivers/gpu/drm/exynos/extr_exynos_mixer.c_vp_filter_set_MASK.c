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
typedef  int u8 ;
typedef  int u32 ;
struct mixer_context {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct mixer_context*,int,int) ; 

__attribute__((used)) static inline void FUNC2(struct mixer_context *ctx,
		int reg_id, const u8 *data, unsigned int size)
{
	/* assure 4-byte align */
	FUNC0(size & 3);
	for (; size; size -= 4, reg_id += 4, data += 4) {
		u32 val = (data[0] << 24) |  (data[1] << 16) |
			(data[2] << 8) | data[3];
		FUNC1(ctx, reg_id, val);
	}
}