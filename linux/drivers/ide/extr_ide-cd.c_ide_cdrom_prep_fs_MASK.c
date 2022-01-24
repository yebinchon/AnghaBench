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
struct scsi_request {long* cmd; int cmd_len; } ;
struct request_queue {int dummy; } ;
struct request {int dummy; } ;

/* Variables and functions */
 long GPCMD_READ_10 ; 
 long GPCMD_WRITE_10 ; 
 scalar_t__ READ ; 
 scalar_t__ FUNC0 (struct request*) ; 
 int FUNC1 (struct request*) ; 
 int FUNC2 (struct request_queue*) ; 
 scalar_t__ FUNC3 (struct request*) ; 
 struct scsi_request* FUNC4 (struct request*) ; 

__attribute__((used)) static bool FUNC5(struct request_queue *q, struct request *rq)
{
	int hard_sect = FUNC2(q);
	long block = (long)FUNC0(rq) / (hard_sect >> 9);
	unsigned long blocks = FUNC1(rq) / (hard_sect >> 9);
	struct scsi_request *req = FUNC4(rq);

	if (FUNC3(rq) == READ)
		req->cmd[0] = GPCMD_READ_10;
	else
		req->cmd[0] = GPCMD_WRITE_10;

	/*
	 * fill in lba
	 */
	req->cmd[2] = (block >> 24) & 0xff;
	req->cmd[3] = (block >> 16) & 0xff;
	req->cmd[4] = (block >>  8) & 0xff;
	req->cmd[5] = block & 0xff;

	/*
	 * and transfer length
	 */
	req->cmd[7] = (blocks >> 8) & 0xff;
	req->cmd[8] = blocks & 0xff;
	req->cmd_len = 10;
	return true;
}