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
struct ishtp_fw_client {int dummy; } ;
struct ishtp_cl_data {int /*<<< orphan*/  cl_device; } ;
struct ishtp_cl {int dummy; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  ISHTP_CL_CONNECTING ; 
 int /*<<< orphan*/  LOADER_CL_RX_RING_SIZE ; 
 int /*<<< orphan*/  LOADER_CL_TX_RING_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct ishtp_cl_data*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (struct ishtp_cl*) ; 
 int FUNC4 (struct ishtp_cl*) ; 
 int /*<<< orphan*/  FUNC5 (struct ishtp_cl*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ishtp_cl*) ; 
 struct ishtp_fw_client* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct ishtp_cl_data* FUNC8 (struct ishtp_cl*) ; 
 int /*<<< orphan*/  FUNC9 (struct ishtp_fw_client*) ; 
 int /*<<< orphan*/  FUNC10 (struct ishtp_cl*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct ishtp_cl*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct ishtp_cl*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct ishtp_cl*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  loader_cl_event_cb ; 
 int /*<<< orphan*/  loader_ishtp_guid ; 

__attribute__((used)) static int FUNC15(struct ishtp_cl *loader_ishtp_cl, int reset)
{
	int rv;
	struct ishtp_fw_client *fw_client;
	struct ishtp_cl_data *client_data =
		FUNC8(loader_ishtp_cl);

	FUNC1(FUNC0(client_data), "reset flag: %d\n", reset);

	rv = FUNC4(loader_ishtp_cl);
	if (rv < 0) {
		FUNC2(FUNC0(client_data), "ishtp_cl_link failed\n");
		return rv;
	}

	/* Connect to firmware client */
	FUNC14(loader_ishtp_cl, LOADER_CL_TX_RING_SIZE);
	FUNC13(loader_ishtp_cl, LOADER_CL_RX_RING_SIZE);

	fw_client =
		FUNC7(FUNC10(loader_ishtp_cl),
				       &loader_ishtp_guid);
	if (!fw_client) {
		FUNC2(FUNC0(client_data),
			"ISH client uuid not found\n");
		rv = -ENOENT;
		goto err_cl_unlink;
	}

	FUNC5(loader_ishtp_cl,
				  FUNC9(fw_client));
	FUNC12(loader_ishtp_cl, ISHTP_CL_CONNECTING);

	rv = FUNC3(loader_ishtp_cl);
	if (rv < 0) {
		FUNC2(FUNC0(client_data), "Client connect fail\n");
		goto err_cl_unlink;
	}

	FUNC1(FUNC0(client_data), "Client connected\n");

	FUNC11(client_data->cl_device, loader_cl_event_cb);

	return 0;

err_cl_unlink:
	FUNC6(loader_ishtp_cl);
	return rv;
}