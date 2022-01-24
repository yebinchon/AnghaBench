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
struct per_bio_data {int tick; scalar_t__ len; int /*<<< orphan*/ * cell; int /*<<< orphan*/  req_nr; } ;
struct bio {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bio*) ; 
 struct per_bio_data* FUNC1 (struct bio*) ; 

__attribute__((used)) static struct per_bio_data *FUNC2(struct bio *bio)
{
	struct per_bio_data *pb = FUNC1(bio);

	pb->tick = false;
	pb->req_nr = FUNC0(bio);
	pb->cell = NULL;
	pb->len = 0;

	return pb;
}