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
typedef  int u8 ;
typedef  int s32 ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int FUNC1 (int*) ; 
 int FUNC2 (int*) ; 
 int FUNC3 (int*) ; 
 int FUNC4 (int,int) ; 

__attribute__((used)) static s32 FUNC5(u8 data_format, u8 *buf, int buf_len)
{
	int data_size;
	bool big_endian;
	bool unsigned_type;
	s32 value;

	data_size = (data_format & 0x07);
	big_endian = ((data_format & 0x10) == 0x00);
	unsigned_type = ((data_format & 0x20) == 0x00);

	if (buf_len < data_size)
		return 0;

	switch (data_size) {
	case 1:
		value  = buf[0];
		break;
	case 2:
		if (big_endian)
			value = FUNC0(buf);
		else
			value = FUNC2(buf);
		break;
	case 4:
		if (big_endian)
			value = FUNC1(buf);
		else
			value = FUNC3(buf);
		break;
	default:
		/* Should not happen, just as default case here. */
		value = 0;
		break;
	}

	if (!unsigned_type)
		value = FUNC4(value, data_size * 8);

	return value;
}