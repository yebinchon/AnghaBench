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
struct TYPE_2__ {scalar_t__ tv_sec; } ;
struct pstore_record {int type; int part; int count; TYPE_1__ time; } ;
typedef  int /*<<< orphan*/  name ;

/* Variables and functions */
 int DUMP_NAME_LEN ; 
 int ENOENT ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,int,int,long long,...) ; 

__attribute__((used)) static int FUNC2(struct pstore_record *record)
{
	char name[DUMP_NAME_LEN];
	int ret;

	FUNC1(name, sizeof(name), "dump-type%u-%u-%d-%lld",
		 record->type, record->part, record->count,
		 (long long)record->time.tv_sec);
	ret = FUNC0(name);
	if (ret != -ENOENT)
		return ret;

	FUNC1(name, sizeof(name), "dump-type%u-%u-%lld",
		record->type, record->part, (long long)record->time.tv_sec);
	ret = FUNC0(name);

	return ret;
}