#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct ddc_service {TYPE_3__* ctx; struct ddc* ddc_pin; } ;
struct ddc {TYPE_4__* pin_data; } ;
struct dce_aux {TYPE_6__* ddc; } ;
struct aux_request_transaction_data {int delay; int /*<<< orphan*/  data; int /*<<< orphan*/  length; int /*<<< orphan*/  address; int /*<<< orphan*/  action; int /*<<< orphan*/  type; } ;
struct aux_reply_transaction_data {int delay; int /*<<< orphan*/  data; int /*<<< orphan*/  length; int /*<<< orphan*/  address; int /*<<< orphan*/  action; int /*<<< orphan*/  type; } ;
struct aux_payload {int defer_delay; int /*<<< orphan*/  data; int /*<<< orphan*/ * reply; int /*<<< orphan*/  length; int /*<<< orphan*/  address; scalar_t__ i2c_over_aux; } ;
typedef  enum aux_channel_operation_result { ____Placeholder_aux_channel_operation_result } aux_channel_operation_result ;
typedef  int /*<<< orphan*/  aux_req ;
typedef  int /*<<< orphan*/  aux_rep ;
struct TYPE_12__ {TYPE_5__* pin_data; } ;
struct TYPE_11__ {int /*<<< orphan*/  en; } ;
struct TYPE_10__ {size_t en; } ;
struct TYPE_9__ {TYPE_2__* dc; } ;
struct TYPE_8__ {TYPE_1__* res_pool; } ;
struct TYPE_7__ {struct dce_aux** engines; } ;

/* Variables and functions */
 int AUX_CHANNEL_OPERATION_SUCCEEDED ; 
 int /*<<< orphan*/  AUX_TRANSACTION_TYPE_DP ; 
 int /*<<< orphan*/  AUX_TRANSACTION_TYPE_I2C ; 
 int /*<<< orphan*/  EVENT_LOG_AUX_ORIGIN_NATIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dce_aux*,struct ddc*) ; 
 int FUNC2 (struct dce_aux*,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct aux_payload*) ; 
 int /*<<< orphan*/  FUNC4 (struct aux_request_transaction_data*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct dce_aux*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct dce_aux*) ; 
 int /*<<< orphan*/  FUNC7 (struct dce_aux*,struct aux_request_transaction_data*) ; 

int FUNC8(struct ddc_service *ddc,
		struct aux_payload *payload,
		enum aux_channel_operation_result *operation_result)
{
	struct ddc *ddc_pin = ddc->ddc_pin;
	struct dce_aux *aux_engine;
	struct aux_request_transaction_data aux_req;
	struct aux_reply_transaction_data aux_rep;
	uint8_t returned_bytes = 0;
	int res = -1;
	uint32_t status;

	FUNC4(&aux_req, 0, sizeof(aux_req));
	FUNC4(&aux_rep, 0, sizeof(aux_rep));

	aux_engine = ddc->ctx->dc->res_pool->engines[ddc_pin->pin_data->en];
	if (!FUNC1(aux_engine, ddc_pin))
		return -1;

	if (payload->i2c_over_aux)
		aux_req.type = AUX_TRANSACTION_TYPE_I2C;
	else
		aux_req.type = AUX_TRANSACTION_TYPE_DP;

	aux_req.action = FUNC3(payload);

	aux_req.address = payload->address;
	aux_req.delay = payload->defer_delay * 10;
	aux_req.length = payload->length;
	aux_req.data = payload->data;

	FUNC7(aux_engine, &aux_req);
	*operation_result = FUNC2(aux_engine, &returned_bytes);

	if (*operation_result == AUX_CHANNEL_OPERATION_SUCCEEDED) {
		int bytes_replied = 0;
		bytes_replied = FUNC5(aux_engine, payload->length,
					 payload->data, payload->reply,
					 &status);
		FUNC0(aux_engine->ddc->pin_data->en,
					EVENT_LOG_AUX_ORIGIN_NATIVE, *payload->reply,
					bytes_replied, payload->data);
		res = returned_bytes;
	} else {
		res = -1;
	}

	FUNC6(aux_engine);
	return res;
}