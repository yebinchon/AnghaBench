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
struct data_descriptor_entry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DDE_BUFFER_ALIGN ; 
 unsigned int DDE_BUFFER_LAST_MULT ; 
 int DDL_LEN_MAX ; 
 int EINVAL ; 
 int EMSGSIZE ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 unsigned long FUNC3 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 unsigned int FUNC5 (unsigned int,unsigned int) ; 
 int FUNC6 (struct data_descriptor_entry*,unsigned long,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct data_descriptor_entry*,struct data_descriptor_entry*,int,int) ; 

__attribute__((used)) static int FUNC8(struct data_descriptor_entry *dde,
		     struct data_descriptor_entry *ddl,
		     unsigned char *buf, unsigned int len,
		     bool in)
{
	unsigned long pa = FUNC3(buf);
	int i, ret, total_len = len;

	if (!FUNC0(pa, DDE_BUFFER_ALIGN)) {
		FUNC4("%s buffer pa 0x%lx not 0x%x-byte aligned\n",
			 in ? "input" : "output", pa, DDE_BUFFER_ALIGN);
		return -EINVAL;
	}

	/* only need to check last mult; since buffer must be
	 * DDE_BUFFER_ALIGN aligned, and that is a multiple of
	 * DDE_BUFFER_SIZE_MULT, and pre-last page DDE buffers
	 * are guaranteed a multiple of DDE_BUFFER_SIZE_MULT.
	 */
	if (len % DDE_BUFFER_LAST_MULT) {
		FUNC4("%s buffer len 0x%x not a multiple of 0x%x\n",
			 in ? "input" : "output", len, DDE_BUFFER_LAST_MULT);
		if (in)
			return -EINVAL;
		len = FUNC5(len, DDE_BUFFER_LAST_MULT);
	}

	/* use a single direct DDE */
	if (len <= FUNC1(pa)) {
		ret = FUNC6(dde, pa, len);
		FUNC2(ret < len);
		return 0;
	}

	/* use the DDL */
	for (i = 0; i < DDL_LEN_MAX && len > 0; i++) {
		ret = FUNC6(&ddl[i], pa, len);
		buf += ret;
		len -= ret;
		pa = FUNC3(buf);
	}

	if (len > 0) {
		FUNC4("0x%x total %s bytes 0x%x too many for DDL.\n",
			 total_len, in ? "input" : "output", len);
		if (in)
			return -EMSGSIZE;
		total_len -= len;
	}
	FUNC7(dde, ddl, i, total_len);

	return 0;
}