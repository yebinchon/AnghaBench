#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct safexcel_token {int dummy; } ;
struct safexcel_crypto_priv {scalar_t__ version; TYPE_1__* ring; } ;
struct TYPE_4__ {int packet_length; int options; int context_lo; int refresh; void* context_hi; scalar_t__ token; } ;
struct safexcel_command_desc {int first_seg; int last_seg; int data_lo; TYPE_2__ control_data; void* data_hi; scalar_t__ particle_size; } ;
typedef  scalar_t__ dma_addr_t ;
struct TYPE_3__ {int /*<<< orphan*/  cdr; } ;

/* Variables and functions */
 scalar_t__ EIP197B_MRVL ; 
 scalar_t__ EIP197D_MRVL ; 
 int EIP197_MAX_TOKENS ; 
 int EIP197_OPTION_64BIT_CTX ; 
 int EIP197_OPTION_CTX_CTRL_IN_CMD ; 
 int EIP197_OPTION_MAGIC_VALUE ; 
 int EIP197_OPTION_RC_AUTO ; 
 int FUNC0 (int,int) ; 
 scalar_t__ FUNC1 (struct safexcel_command_desc*) ; 
 int /*<<< orphan*/  FUNC2 (struct safexcel_token*) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct safexcel_command_desc*,int /*<<< orphan*/ ,int) ; 
 struct safexcel_command_desc* FUNC5 (struct safexcel_crypto_priv*,int /*<<< orphan*/ *) ; 
 void* FUNC6 (scalar_t__) ; 

struct safexcel_command_desc *FUNC7(struct safexcel_crypto_priv *priv,
						 int ring_id,
						 bool first, bool last,
						 dma_addr_t data, u32 data_len,
						 u32 full_data_len,
						 dma_addr_t context) {
	struct safexcel_command_desc *cdesc;
	int i;

	cdesc = FUNC5(priv, &priv->ring[ring_id].cdr);
	if (FUNC1(cdesc))
		return cdesc;

	FUNC4(cdesc, 0, sizeof(struct safexcel_command_desc));

	cdesc->first_seg = first;
	cdesc->last_seg = last;
	cdesc->particle_size = data_len;
	cdesc->data_lo = FUNC3(data);
	cdesc->data_hi = FUNC6(data);

	if (first && context) {
		struct safexcel_token *token =
			(struct safexcel_token *)cdesc->control_data.token;

		/*
		 * Note that the length here MUST be >0 or else the EIP(1)97
		 * may hang. Newer EIP197 firmware actually incorporates this
		 * fix already, but that doesn't help the EIP97 and we may
		 * also be running older firmware.
		 */
		cdesc->control_data.packet_length = full_data_len ?: 1;
		cdesc->control_data.options = EIP197_OPTION_MAGIC_VALUE |
					      EIP197_OPTION_64BIT_CTX |
					      EIP197_OPTION_CTX_CTRL_IN_CMD;
		cdesc->control_data.context_lo =
			(FUNC3(context) & FUNC0(31, 2)) >> 2;
		cdesc->control_data.context_hi = FUNC6(context);

		if (priv->version == EIP197B_MRVL ||
		    priv->version == EIP197D_MRVL)
			cdesc->control_data.options |= EIP197_OPTION_RC_AUTO;

		/* TODO: large xform HMAC with SHA-384/512 uses refresh = 3 */
		cdesc->control_data.refresh = 2;

		for (i = 0; i < EIP197_MAX_TOKENS; i++)
			FUNC2(&token[i]);
	}

	return cdesc;
}