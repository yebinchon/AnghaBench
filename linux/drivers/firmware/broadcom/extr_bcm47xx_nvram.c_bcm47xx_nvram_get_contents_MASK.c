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
struct nvram_header {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/ * nvram_buf ; 
 int FUNC1 () ; 
 int nvram_len ; 
 char* FUNC2 (size_t) ; 

char *FUNC3(size_t *nvram_size)
{
	int err;
	char *nvram;

	if (!nvram_len) {
		err = FUNC1();
		if (err)
			return NULL;
	}

	*nvram_size = nvram_len - sizeof(struct nvram_header);
	nvram = FUNC2(*nvram_size);
	if (!nvram)
		return NULL;
	FUNC0(nvram, &nvram_buf[sizeof(struct nvram_header)], *nvram_size);

	return nvram;
}