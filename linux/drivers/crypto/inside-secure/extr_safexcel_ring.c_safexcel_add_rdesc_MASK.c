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
typedef  int /*<<< orphan*/  u32 ;
struct safexcel_result_desc {int first_seg; int last_seg; int /*<<< orphan*/  data_hi; int /*<<< orphan*/  data_lo; int /*<<< orphan*/  particle_size; } ;
struct safexcel_crypto_priv {TYPE_1__* ring; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_2__ {int /*<<< orphan*/  rdr; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct safexcel_result_desc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct safexcel_result_desc*,int /*<<< orphan*/ ,int) ; 
 struct safexcel_result_desc* FUNC3 (struct safexcel_crypto_priv*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

struct safexcel_result_desc *FUNC5(struct safexcel_crypto_priv *priv,
						int ring_id,
						bool first, bool last,
						dma_addr_t data, u32 len)
{
	struct safexcel_result_desc *rdesc;

	rdesc = FUNC3(priv, &priv->ring[ring_id].rdr);
	if (FUNC0(rdesc))
		return rdesc;

	FUNC2(rdesc, 0, sizeof(struct safexcel_result_desc));

	rdesc->first_seg = first;
	rdesc->last_seg = last;
	rdesc->particle_size = len;
	rdesc->data_lo = FUNC1(data);
	rdesc->data_hi = FUNC4(data);

	return rdesc;
}