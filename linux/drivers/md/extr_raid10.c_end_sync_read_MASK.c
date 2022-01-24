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
struct r10conf {int dummy; } ;
struct r10bio {TYPE_1__* mddev; } ;
struct bio {int dummy; } ;
struct TYPE_2__ {struct r10conf* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct r10bio*,struct bio*,int) ; 
 int FUNC1 (struct r10conf*,struct r10bio*,struct bio*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct r10bio* FUNC2 (struct bio*) ; 

__attribute__((used)) static void FUNC3(struct bio *bio)
{
	struct r10bio *r10_bio = FUNC2(bio);
	struct r10conf *conf = r10_bio->mddev->private;
	int d = FUNC1(conf, r10_bio, bio, NULL, NULL);

	FUNC0(r10_bio, bio, d);
}