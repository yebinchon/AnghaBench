
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ishtp_cl {void* client_data; } ;



void ishtp_set_client_data(struct ishtp_cl *cl, void *data)
{
 cl->client_data = data;
}
