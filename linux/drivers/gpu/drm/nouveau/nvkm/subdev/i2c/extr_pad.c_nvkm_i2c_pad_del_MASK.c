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
struct nvkm_i2c_pad {int /*<<< orphan*/  head; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nvkm_i2c_pad*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct nvkm_i2c_pad*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void
FUNC3(struct nvkm_i2c_pad **ppad)
{
	struct nvkm_i2c_pad *pad = *ppad;
	if (pad) {
		FUNC0(pad, "dtor");
		FUNC2(&pad->head);
		FUNC1(pad);
		pad = NULL;
	}
}