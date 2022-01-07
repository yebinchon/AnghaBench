
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smsdvb_client_t {int * debugfs; TYPE_1__* debug_data; int * prt_isdb_stats_ex; int * prt_isdb_stats; int * prt_dvb_stats; } ;
struct TYPE_2__ {int refcount; } ;


 int debugfs_remove_recursive (int *) ;
 int kref_put (int *,int ) ;
 int smsdvb_debugfs_data_release ;

void smsdvb_debugfs_release(struct smsdvb_client_t *client)
{
 if (!client->debugfs)
  return;

 client->prt_dvb_stats = ((void*)0);
 client->prt_isdb_stats = ((void*)0);
 client->prt_isdb_stats_ex = ((void*)0);

 debugfs_remove_recursive(client->debugfs);
 kref_put(&client->debug_data->refcount, smsdvb_debugfs_data_release);

 client->debug_data = ((void*)0);
 client->debugfs = ((void*)0);
}
