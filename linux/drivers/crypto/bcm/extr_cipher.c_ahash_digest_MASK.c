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
struct ahash_request {int /*<<< orphan*/  nbytes; } ;

/* Variables and functions */
 int FUNC0 (struct ahash_request*) ; 
 int FUNC1 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct ahash_request *req)
{
	int err = 0;

	FUNC2("ahash_digest() nbytes:%u\n", req->nbytes);

	/* whole thing at once */
	err = FUNC1(req);
	if (!err)
		err = FUNC0(req);

	return err;
}