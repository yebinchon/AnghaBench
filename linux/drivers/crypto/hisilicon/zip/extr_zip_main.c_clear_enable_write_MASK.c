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
struct hisi_qm {scalar_t__ io_base; } ;
struct ctrl_debug_file {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ HZIP_SOFT_CTRL_CNT_CLR_CE ; 
 int SOFT_CTRL_CNT_CLR_CE_BIT ; 
 struct hisi_qm* FUNC0 (struct ctrl_debug_file*) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct ctrl_debug_file *file, u32 val)
{
	struct hisi_qm *qm = FUNC0(file);
	u32 tmp;

	if (val != 1 && val != 0)
		return -EINVAL;

	tmp = (FUNC1(qm->io_base + HZIP_SOFT_CTRL_CNT_CLR_CE) &
	       ~SOFT_CTRL_CNT_CLR_CE_BIT) | val;
	FUNC2(tmp, qm->io_base + HZIP_SOFT_CTRL_CNT_CLR_CE);

	return  0;
}