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
struct cxd2880_tnrdmd {int /*<<< orphan*/  io; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CXD2880_IO_TGT_DMD ; 
 int EINVAL ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  x_sleep4_seq ; 

__attribute__((used)) static int FUNC2(struct cxd2880_tnrdmd *tnr_dmd)
{
	if (!tnr_dmd)
		return -EINVAL;

	return FUNC1(tnr_dmd->io,
					   CXD2880_IO_TGT_DMD,
					   x_sleep4_seq,
					   FUNC0(x_sleep4_seq));
}