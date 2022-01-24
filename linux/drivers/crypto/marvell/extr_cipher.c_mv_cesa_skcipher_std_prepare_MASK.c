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
struct skcipher_request {int dummy; } ;
struct mv_cesa_skcipher_std_req {scalar_t__ offset; scalar_t__ size; } ;
struct mv_cesa_skcipher_req {struct mv_cesa_skcipher_std_req std; } ;

/* Variables and functions */
 struct mv_cesa_skcipher_req* FUNC0 (struct skcipher_request*) ; 

__attribute__((used)) static inline void
FUNC1(struct skcipher_request *req)
{
	struct mv_cesa_skcipher_req *creq = FUNC0(req);
	struct mv_cesa_skcipher_std_req *sreq = &creq->std;

	sreq->size = 0;
	sreq->offset = 0;
}