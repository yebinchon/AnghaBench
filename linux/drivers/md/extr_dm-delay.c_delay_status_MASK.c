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
struct dm_target {struct delay_c* private; } ;
struct TYPE_2__ {int /*<<< orphan*/  ops; } ;
struct delay_c {int argc; TYPE_1__ flush; TYPE_1__ write; TYPE_1__ read; } ;
typedef  int status_type_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
#define  STATUSTYPE_INFO 129 
#define  STATUSTYPE_TABLE 128 

__attribute__((used)) static void FUNC2(struct dm_target *ti, status_type_t type,
			 unsigned status_flags, char *result, unsigned maxlen)
{
	struct delay_c *dc = ti->private;
	int sz = 0;

	switch (type) {
	case STATUSTYPE_INFO:
		FUNC0("%u %u %u", dc->read.ops, dc->write.ops, dc->flush.ops);
		break;

	case STATUSTYPE_TABLE:
		FUNC1(&dc->read);
		if (dc->argc >= 6) {
			FUNC0(" ");
			FUNC1(&dc->write);
		}
		if (dc->argc >= 9) {
			FUNC0(" ");
			FUNC1(&dc->flush);
		}
		break;
	}
}