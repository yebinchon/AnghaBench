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
struct safexcel_ahash_req {int finish; } ;
struct ahash_request {int dummy; } ;

/* Variables and functions */
 struct safexcel_ahash_req* FUNC0 (struct ahash_request*) ; 
 int FUNC1 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC2 (struct ahash_request*) ; 

__attribute__((used)) static int FUNC3(struct ahash_request *areq)
{
	struct safexcel_ahash_req *req = FUNC0(areq);

	req->finish = true;

	FUNC2(areq);
	return FUNC1(areq);
}