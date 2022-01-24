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
struct iscsi_hdr {int /*<<< orphan*/  dlength; } ;
struct iscsi_conn {int dummy; } ;

/* Variables and functions */
 int ISCSI_ERR_DATALEN ; 
 int ISCSI_ERR_NO_SCSI_CMD ; 
 int FUNC0 (struct iscsi_conn*,struct iscsi_hdr*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct iscsi_conn*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

void
FUNC5(struct iscsi_conn *conn, struct iscsi_hdr *hdr,
		char *rx_data, int rx_data_len)
{
	int rc = 0;
	int datalen;

	/* verify PDU length */
	datalen = FUNC4(hdr->dlength);
	if (datalen > rx_data_len || (datalen + 4) < rx_data_len) {
		FUNC3("wrong datalen %d (hdr), %d (IB)\n",
			datalen, rx_data_len);
		rc = ISCSI_ERR_DATALEN;
		goto error;
	}

	if (datalen != rx_data_len)
		FUNC2("aligned datalen (%d) hdr, %d (IB)\n",
			datalen, rx_data_len);

	rc = FUNC0(conn, hdr, rx_data, rx_data_len);
	if (rc && rc != ISCSI_ERR_NO_SCSI_CMD)
		goto error;

	return;
error:
	FUNC1(conn, rc);
}