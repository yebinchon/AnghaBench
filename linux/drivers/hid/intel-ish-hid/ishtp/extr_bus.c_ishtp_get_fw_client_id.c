
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ishtp_fw_client {int client_id; } ;



int ishtp_get_fw_client_id(struct ishtp_fw_client *fw_client)
{
 return fw_client->client_id;
}
