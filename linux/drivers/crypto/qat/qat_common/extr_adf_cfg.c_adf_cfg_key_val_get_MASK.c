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
struct adf_cfg_section {int dummy; } ;
struct adf_cfg_key_val {int /*<<< orphan*/  val; } ;
struct adf_accel_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADF_CFG_MAX_VAL_LEN_IN_BYTES ; 
 struct adf_cfg_key_val* FUNC0 (struct adf_cfg_section*,char const*) ; 
 struct adf_cfg_section* FUNC1 (struct adf_accel_dev*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct adf_accel_dev *accel_dev,
			       const char *sec_name,
			       const char *key_name,
			       char *val)
{
	struct adf_cfg_section *sec = FUNC1(accel_dev, sec_name);
	struct adf_cfg_key_val *keyval = NULL;

	if (sec)
		keyval = FUNC0(sec, key_name);
	if (keyval) {
		FUNC2(val, keyval->val, ADF_CFG_MAX_VAL_LEN_IN_BYTES);
		return 0;
	}
	return -1;
}