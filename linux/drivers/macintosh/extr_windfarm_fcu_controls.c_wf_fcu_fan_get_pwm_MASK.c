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
struct wf_fcu_priv {int dummy; } ;
struct wf_fcu_fan {int id; struct wf_fcu_priv* fcu_priv; } ;
struct wf_control {struct wf_fcu_fan* priv; } ;
typedef  int s32 ;

/* Variables and functions */
 int EFAULT ; 
 int EIO ; 
 int ENXIO ; 
 int FUNC0 (struct wf_fcu_priv*,int,unsigned char*,int) ; 

__attribute__((used)) static int FUNC1(struct wf_control *ct, s32 *value)
{
	struct wf_fcu_fan *fan = ct->priv;
	struct wf_fcu_priv *pv = fan->fcu_priv;
	unsigned char failure;
	unsigned char active;
	unsigned char buf[2];
	int rc;

	rc = FUNC0(pv, 0x2b, &failure, 1);
	if (rc != 1)
		return -EIO;
	if ((failure & (1 << fan->id)) != 0)
		return -EFAULT;
	rc = FUNC0(pv, 0x2d, &active, 1);
	if (rc != 1)
		return -EIO;
	if ((active & (1 << fan->id)) == 0)
		return -ENXIO;

	rc = FUNC0(pv, 0x30 + (fan->id * 2), buf, 1);
	if (rc != 1)
		return -EIO;

	*value = (((s32)buf[0]) * 1000) / 2559;

	return 0;
}