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
struct nvkm_ram {int dummy; } ;
struct gt215_ram {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gt215_ram*) ; 
 struct gt215_ram* FUNC1 (struct nvkm_ram*) ; 

__attribute__((used)) static int
FUNC2(struct nvkm_ram *base)
{
	struct gt215_ram *ram = FUNC1(base);
	FUNC0(ram);
	return 0;
}