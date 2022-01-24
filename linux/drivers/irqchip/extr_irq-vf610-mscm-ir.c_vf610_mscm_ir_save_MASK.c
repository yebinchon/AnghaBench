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
struct vf610_mscm_ir_chip_data {scalar_t__ mscm_ir_base; int /*<<< orphan*/ * saved_irsprc; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int MSCM_IRSPRC_NUM ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 

__attribute__((used)) static inline void FUNC2(struct vf610_mscm_ir_chip_data *data)
{
	int i;

	for (i = 0; i < MSCM_IRSPRC_NUM; i++)
		data->saved_irsprc[i] = FUNC1(data->mscm_ir_base + FUNC0(i));
}