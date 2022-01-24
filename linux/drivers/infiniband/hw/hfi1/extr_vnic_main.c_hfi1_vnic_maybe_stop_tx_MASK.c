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
typedef  int /*<<< orphan*/  u8 ;
struct hfi1_vnic_vport_info {int /*<<< orphan*/  netdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hfi1_vnic_vport_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct hfi1_vnic_vport_info *vinfo,
				    u8 q_idx)
{
	FUNC2(vinfo->netdev, q_idx);
	if (!FUNC0(vinfo, q_idx))
		return;

	FUNC1(vinfo->netdev, q_idx);
}