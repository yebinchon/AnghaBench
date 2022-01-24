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
struct vop {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FS_INTR ; 
 int FUNC0 (struct vop*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  status ; 

__attribute__((used)) static bool FUNC1(struct vop *vop)
{
	return FUNC0(vop, status, FS_INTR);
}