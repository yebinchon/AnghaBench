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
struct v3d_dev {int ver; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  V3D_GCA_SAFE_SHUTDOWN ; 
 int /*<<< orphan*/  V3D_GCA_SAFE_SHUTDOWN_ACK ; 
 int V3D_GCA_SAFE_SHUTDOWN_ACK_ACKED ; 
 int /*<<< orphan*/  V3D_GCA_SAFE_SHUTDOWN_EN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int,int) ; 

__attribute__((used)) static void
FUNC4(struct v3d_dev *v3d)
{
	if (v3d->ver >= 41)
		return;

	FUNC2(V3D_GCA_SAFE_SHUTDOWN, V3D_GCA_SAFE_SHUTDOWN_EN);

	if (FUNC3((FUNC1(V3D_GCA_SAFE_SHUTDOWN_ACK) &
		      V3D_GCA_SAFE_SHUTDOWN_ACK_ACKED) ==
		     V3D_GCA_SAFE_SHUTDOWN_ACK_ACKED, 100)) {
		FUNC0("Failed to wait for safe GCA shutdown\n");
	}
}