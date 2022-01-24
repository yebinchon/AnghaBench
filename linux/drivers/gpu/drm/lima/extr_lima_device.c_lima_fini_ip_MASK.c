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
struct lima_ip_desc {int /*<<< orphan*/  (* fini ) (struct lima_ip*) ;} ;
struct lima_ip {scalar_t__ present; } ;
struct lima_device {struct lima_ip* ip; } ;

/* Variables and functions */
 struct lima_ip_desc* lima_ip_desc ; 
 int /*<<< orphan*/  FUNC0 (struct lima_ip*) ; 

__attribute__((used)) static void FUNC1(struct lima_device *ldev, int index)
{
	struct lima_ip_desc *desc = lima_ip_desc + index;
	struct lima_ip *ip = ldev->ip + index;

	if (ip->present)
		desc->fini(ip);
}