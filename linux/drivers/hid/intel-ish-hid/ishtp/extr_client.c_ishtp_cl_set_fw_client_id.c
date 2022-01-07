
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ishtp_cl {int fw_client_id; } ;



void ishtp_cl_set_fw_client_id(struct ishtp_cl *cl, int fw_client_id)
{
 cl->fw_client_id = fw_client_id;
}
