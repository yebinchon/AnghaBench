#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ tv_sec; } ;
struct pstore_record {int part; int count; int type; scalar_t__ reason; TYPE_2__* psi; int /*<<< orphan*/  size; scalar_t__ compressed; TYPE_1__ time; int /*<<< orphan*/  id; } ;
typedef  int /*<<< orphan*/  name ;
typedef  int /*<<< orphan*/  efi_guid_t ;
typedef  char efi_char16_t ;
struct TYPE_4__ {int /*<<< orphan*/  buf; } ;

/* Variables and functions */
 int DUMP_NAME_LEN ; 
 scalar_t__ KMSG_DUMP_OOPS ; 
 int /*<<< orphan*/  LINUX_EFI_CRASH_GUID ; 
 int /*<<< orphan*/  PSTORE_EFI_ATTRIBUTES ; 
 int FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,int,int,int,long long,char) ; 

__attribute__((used)) static int FUNC6(struct pstore_record *record)
{
	char name[DUMP_NAME_LEN];
	efi_char16_t efi_name[DUMP_NAME_LEN];
	efi_guid_t vendor = LINUX_EFI_CRASH_GUID;
	int i, ret = 0;

	record->id = FUNC2(record->time.tv_sec, record->part,
				record->count);

	/* Since we copy the entire length of name, make sure it is wiped. */
	FUNC3(name, 0, sizeof(name));

	FUNC5(name, sizeof(name), "dump-type%u-%u-%d-%lld-%c",
		 record->type, record->part, record->count,
		 (long long)record->time.tv_sec,
		 record->compressed ? 'C' : 'D');

	for (i = 0; i < DUMP_NAME_LEN; i++)
		efi_name[i] = name[i];

	ret = FUNC0(efi_name, vendor, PSTORE_EFI_ATTRIBUTES,
			      FUNC4(), record->size, record->psi->buf);

	if (record->reason == KMSG_DUMP_OOPS)
		FUNC1();

	return ret;
}