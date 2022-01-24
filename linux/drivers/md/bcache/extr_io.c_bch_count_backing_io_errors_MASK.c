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
struct cached_dev {unsigned int error_limit; int /*<<< orphan*/  backing_dev_name; int /*<<< orphan*/  io_errors; } ;
struct bio {int bi_opf; } ;

/* Variables and functions */
 int REQ_RAHEAD ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 unsigned int FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct cached_dev*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 

void FUNC5(struct cached_dev *dc, struct bio *bio)
{
	unsigned int errors;

	FUNC0(!dc, "NULL pointer of struct cached_dev");

	/*
	 * Read-ahead requests on a degrading and recovering md raid
	 * (e.g. raid6) device might be failured immediately by md
	 * raid code, which is not a real hardware media failure. So
	 * we shouldn't count failed REQ_RAHEAD bio to dc->io_errors.
	 */
	if (bio->bi_opf & REQ_RAHEAD) {
		FUNC4("%s: Read-ahead I/O failed on backing device, ignore",
				    dc->backing_dev_name);
		return;
	}

	errors = FUNC1(1, &dc->io_errors);
	if (errors < dc->error_limit)
		FUNC3("%s: IO error on backing device, unrecoverable",
			dc->backing_dev_name);
	else
		FUNC2(dc);
}