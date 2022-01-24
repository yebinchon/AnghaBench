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
typedef  int u8 ;
struct TYPE_2__ {char* comm; } ;

/* Variables and functions */
 int PATTERN_COPY ; 
 int PATTERN_OVERWRITE ; 
 int PATTERN_SRC ; 
 TYPE_1__* current ; 
 int FUNC0 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,unsigned int,int,int) ; 

__attribute__((used)) static void FUNC2(u8 actual, u8 pattern, unsigned int index,
		unsigned int counter, bool is_srcbuf, bool is_memset)
{
	u8		diff = actual ^ pattern;
	u8		expected = pattern | FUNC0(counter, is_memset);
	const char	*thread_name = current->comm;

	if (is_srcbuf)
		FUNC1("%s: srcbuf[0x%x] overwritten! Expected %02x, got %02x\n",
			thread_name, index, expected, actual);
	else if ((pattern & PATTERN_COPY)
			&& (diff & (PATTERN_COPY | PATTERN_OVERWRITE)))
		FUNC1("%s: dstbuf[0x%x] not copied! Expected %02x, got %02x\n",
			thread_name, index, expected, actual);
	else if (diff & PATTERN_SRC)
		FUNC1("%s: dstbuf[0x%x] was copied! Expected %02x, got %02x\n",
			thread_name, index, expected, actual);
	else
		FUNC1("%s: dstbuf[0x%x] mismatch! Expected %02x, got %02x\n",
			thread_name, index, expected, actual);
}