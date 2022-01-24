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
struct sun4i_req_ctx {int flags; } ;
struct ahash_request {int dummy; } ;

/* Variables and functions */
 int SS_HASH_FINAL ; 
 int SS_HASH_UPDATE ; 
 struct sun4i_req_ctx* FUNC0 (struct ahash_request*) ; 
 int FUNC1 (struct ahash_request*) ; 
 int FUNC2 (struct ahash_request*) ; 

int FUNC3(struct ahash_request *areq)
{
	int err;
	struct sun4i_req_ctx *op = FUNC0(areq);

	err = FUNC2(areq);
	if (err)
		return err;

	op->flags = SS_HASH_UPDATE | SS_HASH_FINAL;
	return FUNC1(areq);
}