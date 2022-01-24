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
struct usnic_vnic_res_spec {int dummy; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,struct usnic_vnic_res_spec*) ; 

__attribute__((used)) static void FUNC2(struct usnic_vnic_res_spec *res_spec)
{
	char buf[512];
	FUNC1(buf, sizeof(buf), res_spec);
	FUNC0("%s\n", buf);
}