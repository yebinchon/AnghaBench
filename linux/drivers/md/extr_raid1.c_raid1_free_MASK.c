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
struct r1conf {int /*<<< orphan*/  bio_split; struct r1conf* barrier; struct r1conf* nr_queued; struct r1conf* nr_waiting; struct r1conf* nr_pending; struct r1conf* poolinfo; int /*<<< orphan*/  tmppage; struct r1conf* mirrors; int /*<<< orphan*/  r1bio_pool; } ;
struct mddev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct r1conf*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct mddev *mddev, void *priv)
{
	struct r1conf *conf = priv;

	FUNC2(&conf->r1bio_pool);
	FUNC1(conf->mirrors);
	FUNC3(conf->tmppage);
	FUNC1(conf->poolinfo);
	FUNC1(conf->nr_pending);
	FUNC1(conf->nr_waiting);
	FUNC1(conf->nr_queued);
	FUNC1(conf->barrier);
	FUNC0(&conf->bio_split);
	FUNC1(conf);
}