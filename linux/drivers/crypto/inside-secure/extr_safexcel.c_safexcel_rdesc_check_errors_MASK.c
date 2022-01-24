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
struct TYPE_2__ {int error_code; } ;
struct safexcel_result_desc {TYPE_1__ result_data; scalar_t__ buffer_overflow; scalar_t__ descriptor_overflow; } ;
struct safexcel_crypto_priv {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int EBADMSG ; 
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC2 (int) ; 

inline int FUNC3(struct safexcel_crypto_priv *priv,
				       struct safexcel_result_desc *rdesc)
{
	if (FUNC2((!rdesc->descriptor_overflow) &&
		   (!rdesc->buffer_overflow) &&
		   (!rdesc->result_data.error_code)))
		return 0;

	if (rdesc->descriptor_overflow)
		FUNC1(priv->dev, "Descriptor overflow detected");

	if (rdesc->buffer_overflow)
		FUNC1(priv->dev, "Buffer overflow detected");

	if (rdesc->result_data.error_code & 0x4066) {
		/* Fatal error (bits 1,2,5,6 & 14) */
		FUNC1(priv->dev,
			"result descriptor error (%x)",
			rdesc->result_data.error_code);
		return -EIO;
	} else if (rdesc->result_data.error_code &
		   (FUNC0(7) | FUNC0(4) | FUNC0(3) | FUNC0(0))) {
		/*
		 * Give priority over authentication fails:
		 * Blocksize, length & overflow errors,
		 * something wrong with the input!
		 */
		return -EINVAL;
	} else if (rdesc->result_data.error_code & FUNC0(9)) {
		/* Authentication failed */
		return -EBADMSG;
	}

	/* All other non-fatal errors */
	return -EINVAL;
}