#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct request {int /*<<< orphan*/  bio; } ;
typedef  int /*<<< orphan*/  ide_drive_t ;
struct TYPE_4__ {struct request* special; } ;
struct TYPE_3__ {int /*<<< orphan*/  sense_len; int /*<<< orphan*/  sense; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_STS_IOERR ; 
 int /*<<< orphan*/  FUNC0 () ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct request*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct request*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,struct request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC5 (struct request*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,void*,int) ; 
 TYPE_1__* FUNC7 (struct request*) ; 

__attribute__((used)) static void FUNC8(ide_drive_t *drive, struct request *rq)
{
	/*
	 * For ATA_PRIV_SENSE, "ide_req(rq)->special" points to the original
	 * failed request.  Also, the sense data should be read
	 * directly from rq which might be different from the original
	 * sense buffer if it got copied during mapping.
	 */
	struct request *failed = FUNC5(rq)->special;
	void *sense = FUNC1(rq->bio);

	if (failed) {
		/*
		 * Sense is always read into drive->sense_data, copy back to the
		 * original request.
		 */
		FUNC6(FUNC7(failed)->sense, sense, 18);
		FUNC7(failed)->sense_len = FUNC7(rq)->sense_len;
		FUNC3(drive, failed);

		if (FUNC4(drive, failed, BLK_STS_IOERR, FUNC2(failed)))
			FUNC0();
	} else
		FUNC3(drive, NULL);
}