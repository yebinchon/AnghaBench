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
struct r10conf {int /*<<< orphan*/  bio_split; struct r10conf* mirrors_new; struct r10conf* mirrors_old; struct r10conf* mirrors; int /*<<< orphan*/  tmppage; int /*<<< orphan*/  r10bio_pool; } ;
struct mddev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct r10conf*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct mddev *mddev, void *priv)
{
	struct r10conf *conf = priv;

	FUNC2(&conf->r10bio_pool);
	FUNC3(conf->tmppage);
	FUNC1(conf->mirrors);
	FUNC1(conf->mirrors_old);
	FUNC1(conf->mirrors_new);
	FUNC0(&conf->bio_split);
	FUNC1(conf);
}