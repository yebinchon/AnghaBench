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
struct r5l_log {scalar_t__ log_start; } ;
struct r5l_io_unit {int need_split_bio; scalar_t__ log_end; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLOCK_SECTORS ; 
 int /*<<< orphan*/  FUNC0 (struct r5l_log*) ; 
 scalar_t__ FUNC1 (struct r5l_log*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct r5l_log *log, struct r5l_io_unit *io)
{
	log->log_start = FUNC1(log, log->log_start, BLOCK_SECTORS);

	FUNC0(log);
	/*
	 * If we filled up the log device start from the beginning again,
	 * which will require a new bio.
	 *
	 * Note: for this to work properly the log size needs to me a multiple
	 * of BLOCK_SECTORS.
	 */
	if (log->log_start == 0)
		io->need_split_bio = true;

	io->log_end = log->log_start;
}