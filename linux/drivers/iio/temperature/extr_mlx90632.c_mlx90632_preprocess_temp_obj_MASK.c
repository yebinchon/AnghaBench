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
typedef  long long s64 ;
typedef  int s16 ;

/* Variables and functions */
 long long MLX90632_REF_12 ; 
 long long MLX90632_REF_3 ; 
 long long FUNC0 (long long,long long) ; 

__attribute__((used)) static s64 FUNC1(s16 object_new_raw, s16 object_old_raw,
					s16 ambient_new_raw,
					s16 ambient_old_raw, s16 Ka)
{
	s64 VR_IR, kKa, tmp;

	kKa = ((s64)Ka * 1000LL) >> 10ULL;
	VR_IR = (s64)ambient_old_raw * 1000000LL +
		kKa * FUNC0(((s64)ambient_new_raw * 1000LL),
			(MLX90632_REF_3));
	tmp = FUNC0(
			FUNC0(((s64)((object_new_raw + object_old_raw) / 2)
				   * 1000000000000LL), (MLX90632_REF_12)),
			VR_IR);
	return FUNC0((tmp << 19ULL), 1000LL);
}