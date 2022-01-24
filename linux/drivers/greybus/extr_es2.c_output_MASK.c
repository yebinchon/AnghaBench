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
typedef  int /*<<< orphan*/  u16 ;
struct gb_host_device {int dummy; } ;
struct es2_ap_dev {int dummy; } ;

/* Variables and functions */
 struct es2_ap_dev* FUNC0 (struct gb_host_device*) ; 
 int FUNC1 (struct es2_ap_dev*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct es2_ap_dev*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct gb_host_device *hd, void *req, u16 size, u8 cmd,
		  bool async)
{
	struct es2_ap_dev *es2 = FUNC0(hd);

	if (async)
		return FUNC1(es2, req, size, cmd);

	return FUNC2(es2, req, size, cmd);
}