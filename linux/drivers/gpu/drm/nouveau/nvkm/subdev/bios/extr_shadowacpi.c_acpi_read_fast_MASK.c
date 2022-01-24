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
typedef  int u32 ;
struct nvkm_bios {int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC1 (struct nvkm_bios*,int) ; 

__attribute__((used)) static u32
FUNC2(void *data, u32 offset, u32 length, struct nvkm_bios *bios)
{
	u32 limit = (offset + length + 0xfff) & ~0xfff;
	u32 start = offset & ~0x00000fff;
	u32 fetch = limit - start;

	if (FUNC1(bios, limit) >= 0) {
		int ret = FUNC0(bios->data, start, fetch);
		if (ret == fetch)
			return fetch;
	}

	return 0;
}