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
typedef  int /*<<< orphan*/  u32 ;
struct sbp2_target {int dummy; } ;
struct fw_csr_iterator {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int SBP2_CSR_LOGICAL_UNIT_NUMBER ; 
 int /*<<< orphan*/  FUNC0 (struct fw_csr_iterator*,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC1 (struct fw_csr_iterator*,int*,int*) ; 
 scalar_t__ FUNC2 (struct sbp2_target*,int) ; 

__attribute__((used)) static int FUNC3(struct sbp2_target *tgt,
				      const u32 *directory)
{
	struct fw_csr_iterator ci;
	int key, value;

	FUNC0(&ci, directory);
	while (FUNC1(&ci, &key, &value))
		if (key == SBP2_CSR_LOGICAL_UNIT_NUMBER &&
		    FUNC2(tgt, value) < 0)
			return -ENOMEM;
	return 0;
}