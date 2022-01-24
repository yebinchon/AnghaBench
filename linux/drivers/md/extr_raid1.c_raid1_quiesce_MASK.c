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
struct r1conf {int dummy; } ;
struct mddev {struct r1conf* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct r1conf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct r1conf*) ; 

__attribute__((used)) static void FUNC2(struct mddev *mddev, int quiesce)
{
	struct r1conf *conf = mddev->private;

	if (quiesce)
		FUNC0(conf, 0);
	else
		FUNC1(conf);
}