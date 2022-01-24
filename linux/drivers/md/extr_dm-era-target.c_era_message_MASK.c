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
struct era {int dummy; } ;
struct dm_target {struct era* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int EINVAL ; 
 int FUNC1 (struct era*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  metadata_checkpoint ; 
 int /*<<< orphan*/  metadata_drop_snap ; 
 int /*<<< orphan*/  metadata_take_snap ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 

__attribute__((used)) static int FUNC3(struct dm_target *ti, unsigned argc, char **argv,
		       char *result, unsigned maxlen)
{
	struct era *era = ti->private;

	if (argc != 1) {
		FUNC0("incorrect number of message arguments");
		return -EINVAL;
	}

	if (!FUNC2(argv[0], "checkpoint"))
		return FUNC1(era, metadata_checkpoint);

	if (!FUNC2(argv[0], "take_metadata_snap"))
		return FUNC1(era, metadata_take_snap);

	if (!FUNC2(argv[0], "drop_metadata_snap"))
		return FUNC1(era, metadata_drop_snap);

	FUNC0("unsupported message '%s'", argv[0]);
	return -EINVAL;
}