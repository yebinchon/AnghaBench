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
struct md_cluster_info {int dummy; } ;
struct cluster_msg {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct md_cluster_info*,struct cluster_msg*) ; 
 int /*<<< orphan*/  FUNC1 (struct md_cluster_info*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct md_cluster_info*) ; 

__attribute__((used)) static int FUNC3(struct md_cluster_info *cinfo, struct cluster_msg *cmsg,
		   bool mddev_locked)
{
	int ret;

	FUNC1(cinfo, mddev_locked);
	ret = FUNC0(cinfo, cmsg);
	FUNC2(cinfo);
	return ret;
}