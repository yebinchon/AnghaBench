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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;
struct shash_desc {int dummy; } ;
typedef  enum i40iw_status_code { ____Placeholder_i40iw_status_code } i40iw_status_code ;

/* Variables and functions */
 int I40IW_ERR_MPA_CRC ; 
 int /*<<< orphan*/  FUNC0 (struct shash_desc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct shash_desc*) ; 
 int FUNC2 (struct shash_desc*,void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

enum i40iw_status_code FUNC4(struct shash_desc *desc,
					      void *addr,
					      u32 length,
					      u32 value)
{
	u32 crc = 0;
	int ret;
	enum i40iw_status_code ret_code = 0;

	FUNC1(desc);
	ret = FUNC2(desc, addr, length);
	if (!ret)
		FUNC0(desc, (u8 *)&crc);
	if (crc != value) {
		FUNC3("mpa crc check fail\n");
		ret_code = I40IW_ERR_MPA_CRC;
	}
	return ret_code;
}