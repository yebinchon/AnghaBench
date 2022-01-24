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
typedef  size_t u32 ;
struct cper_mem_err_compact {int validation_bits; int mem_dev_handle; } ;

/* Variables and functions */
 int CPER_MEM_VALID_MODULE_HANDLE ; 
 size_t CPER_REC_LEN ; 
 int /*<<< orphan*/  FUNC0 (int,char const**,char const**) ; 
 size_t FUNC1 (char*,size_t,char*,...) ; 

__attribute__((used)) static int FUNC2(struct cper_mem_err_compact *mem, char *msg)
{
	u32 len, n;
	const char *bank = NULL, *device = NULL;

	if (!msg || !(mem->validation_bits & CPER_MEM_VALID_MODULE_HANDLE))
		return 0;

	n = 0;
	len = CPER_REC_LEN - 1;
	FUNC0(mem->mem_dev_handle, &bank, &device);
	if (bank && device)
		n = FUNC1(msg, len, "DIMM location: %s %s ", bank, device);
	else
		n = FUNC1(msg, len,
			     "DIMM location: not present. DMI handle: 0x%.4x ",
			     mem->mem_dev_handle);

	msg[n] = '\0';
	return n;
}