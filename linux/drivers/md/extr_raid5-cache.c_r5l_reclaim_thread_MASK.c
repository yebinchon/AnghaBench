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
struct r5l_log {int dummy; } ;
struct r5conf {struct r5l_log* log; } ;
struct mddev {struct r5conf* private; } ;
struct md_thread {struct mddev* mddev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct r5conf*) ; 
 int /*<<< orphan*/  FUNC1 (struct r5l_log*) ; 

__attribute__((used)) static void FUNC2(struct md_thread *thread)
{
	struct mddev *mddev = thread->mddev;
	struct r5conf *conf = mddev->private;
	struct r5l_log *log = conf->log;

	if (!log)
		return;
	FUNC0(conf);
	FUNC1(log);
}