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
struct atmel_sha_dev {int /*<<< orphan*/  req; } ;

/* Variables and functions */
 int FUNC0 (struct atmel_sha_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct atmel_sha_dev *dd)
{
	/*
	 * req->result might not be sizeof(u32) aligned, so copy the
	 * digest into ctx->digest[] before memcpy() the data into
	 * req->result.
	 */
	FUNC1(dd->req);
	FUNC2(dd->req);
	return FUNC0(dd, 0);
}