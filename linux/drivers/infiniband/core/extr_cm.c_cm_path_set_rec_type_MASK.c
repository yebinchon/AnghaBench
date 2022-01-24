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
typedef  union ib_gid {int dummy; } ib_gid ;
typedef  int /*<<< orphan*/  u8 ;
struct sa_path_rec {int /*<<< orphan*/  rec_type; } ;
struct ib_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SA_PATH_REC_TYPE_IB ; 
 int /*<<< orphan*/  SA_PATH_REC_TYPE_OPA ; 
 scalar_t__ FUNC0 (union ib_gid*) ; 
 scalar_t__ FUNC1 (struct ib_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct ib_device *ib_device, u8 port_num,
				 struct sa_path_rec *path, union ib_gid *gid)
{
	if (FUNC0(gid) && FUNC1(ib_device, port_num))
		path->rec_type = SA_PATH_REC_TYPE_OPA;
	else
		path->rec_type = SA_PATH_REC_TYPE_IB;
}