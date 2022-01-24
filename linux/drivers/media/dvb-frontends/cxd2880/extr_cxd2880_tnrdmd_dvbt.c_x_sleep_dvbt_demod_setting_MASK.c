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
struct cxd2880_tnrdmd {scalar_t__ diver_mode; int /*<<< orphan*/  io; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CXD2880_IO_TGT_DMD ; 
 scalar_t__ CXD2880_TNRDMD_DIVERMODE_SUB ; 
 int EINVAL ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sleep_dmd_setting_seq1 ; 
 int /*<<< orphan*/  sleep_dmd_setting_seq2 ; 

__attribute__((used)) static int FUNC2(struct cxd2880_tnrdmd
						   *tnr_dmd)
{
	int ret;

	if (!tnr_dmd)
		return -EINVAL;

	ret = FUNC1(tnr_dmd->io,
					  CXD2880_IO_TGT_DMD,
					  sleep_dmd_setting_seq1,
					  FUNC0(sleep_dmd_setting_seq1));
	if (ret)
		return ret;

	if (tnr_dmd->diver_mode == CXD2880_TNRDMD_DIVERMODE_SUB)
		ret = FUNC1(tnr_dmd->io,
						  CXD2880_IO_TGT_DMD,
						  sleep_dmd_setting_seq2,
						  FUNC0(sleep_dmd_setting_seq2));

	return ret;
}