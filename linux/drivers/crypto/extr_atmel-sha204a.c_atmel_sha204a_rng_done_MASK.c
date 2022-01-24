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
struct hwrng {unsigned long priv; } ;
struct atmel_i2c_work_data {struct atmel_i2c_client_priv* ctx; } ;
struct atmel_i2c_client_priv {int /*<<< orphan*/  tfm_count; TYPE_1__* client; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 

__attribute__((used)) static void FUNC2(struct atmel_i2c_work_data *work_data,
				   void *areq, int status)
{
	struct atmel_i2c_client_priv *i2c_priv = work_data->ctx;
	struct hwrng *rng = areq;

	if (status)
		FUNC1(&i2c_priv->client->dev,
				     "i2c transaction failed (%d)\n",
				     status);

	rng->priv = (unsigned long)work_data;
	FUNC0(&i2c_priv->tfm_count);
}