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
typedef  unsigned long long u64 ;
typedef  unsigned long long u32 ;
struct ib_field {int size_bits; int offset_bits; int struct_offset_bytes; int offset_words; scalar_t__ struct_size_bytes; int /*<<< orphan*/  field_name; } ;
typedef  int __be64 ;
typedef  int __be32 ;

/* Variables and functions */
 int FUNC0 (unsigned long long) ; 
 int FUNC1 (unsigned long long) ; 
 int /*<<< orphan*/  FUNC2 (void*,void*,int) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int,scalar_t__,void*) ; 

void FUNC6(const struct ib_field        *desc,
	     int                           desc_len,
	     void                         *structure,
	     void                         *buf)
{
	int i;

	for (i = 0; i < desc_len; ++i) {
		if (desc[i].size_bits <= 32) {
			int shift;
			u32 val;
			__be32 mask;
			__be32 *addr;

			shift = 32 - desc[i].offset_bits - desc[i].size_bits;
			if (desc[i].struct_size_bytes)
				val = FUNC5(desc[i].struct_offset_bytes,
						 desc[i].struct_size_bytes,
						 structure) << shift;
			else
				val = 0;

			mask = FUNC0(((1ull << desc[i].size_bits) - 1) << shift);
			addr = (__be32 *) buf + desc[i].offset_words;
			*addr = (*addr & ~mask) | (FUNC0(val) & mask);
		} else if (desc[i].size_bits <= 64) {
			int shift;
			u64 val;
			__be64 mask;
			__be64 *addr;

			shift = 64 - desc[i].offset_bits - desc[i].size_bits;
			if (desc[i].struct_size_bytes)
				val = FUNC5(desc[i].struct_offset_bytes,
						 desc[i].struct_size_bytes,
						 structure) << shift;
			else
				val = 0;

			mask = FUNC1((~0ull >> (64 - desc[i].size_bits)) << shift);
			addr = (__be64 *) ((__be32 *) buf + desc[i].offset_words);
			*addr = (*addr & ~mask) | (FUNC1(val) & mask);
		} else {
			if (desc[i].offset_bits % 8 ||
			    desc[i].size_bits   % 8) {
				FUNC4("Structure field %s of size %d bits is not byte-aligned\n",
					desc[i].field_name, desc[i].size_bits);
			}

			if (desc[i].struct_size_bytes)
				FUNC2(buf + desc[i].offset_words * 4 +
				       desc[i].offset_bits / 8,
				       structure + desc[i].struct_offset_bytes,
				       desc[i].size_bits / 8);
			else
				FUNC3(buf + desc[i].offset_words * 4 +
				       desc[i].offset_bits / 8,
				       0,
				       desc[i].size_bits / 8);
		}
	}
}