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
struct etnaviv_gpu {int dummy; } ;
struct etnaviv_dump_registers {int /*<<< orphan*/  value; int /*<<< orphan*/  reg; } ;
struct core_dump_iterator {struct etnaviv_dump_registers* data; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ETDUMP_BUF_REG ; 
 int /*<<< orphan*/  FUNC1 (struct core_dump_iterator*,int /*<<< orphan*/ ,struct etnaviv_dump_registers*) ; 
 int /*<<< orphan*/ * etnaviv_dump_registers ; 
 int /*<<< orphan*/  FUNC2 (struct etnaviv_gpu*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct core_dump_iterator *iter,
	struct etnaviv_gpu *gpu)
{
	struct etnaviv_dump_registers *reg = iter->data;
	unsigned int i;

	for (i = 0; i < FUNC0(etnaviv_dump_registers); i++, reg++) {
		reg->reg = etnaviv_dump_registers[i];
		reg->value = FUNC2(gpu, etnaviv_dump_registers[i]);
	}

	FUNC1(iter, ETDUMP_BUF_REG, reg);
}