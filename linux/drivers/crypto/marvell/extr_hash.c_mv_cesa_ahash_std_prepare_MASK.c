#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct mv_cesa_ahash_std_req {scalar_t__ offset; } ;
struct TYPE_2__ {struct mv_cesa_ahash_std_req std; } ;
struct mv_cesa_ahash_req {TYPE_1__ req; } ;
struct ahash_request {int dummy; } ;

/* Variables and functions */
 struct mv_cesa_ahash_req* FUNC0 (struct ahash_request*) ; 

__attribute__((used)) static void FUNC1(struct ahash_request *req)
{
	struct mv_cesa_ahash_req *creq = FUNC0(req);
	struct mv_cesa_ahash_std_req *sreq = &creq->req.std;

	sreq->offset = 0;
}