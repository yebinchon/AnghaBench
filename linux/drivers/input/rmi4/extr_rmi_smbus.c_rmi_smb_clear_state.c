
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rmi_smb_xport {int mappingtable_mutex; int mapping_table; } ;


 int memset (int ,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void rmi_smb_clear_state(struct rmi_smb_xport *rmi_smb)
{

 mutex_lock(&rmi_smb->mappingtable_mutex);
 memset(rmi_smb->mapping_table, 0, sizeof(rmi_smb->mapping_table));
 mutex_unlock(&rmi_smb->mappingtable_mutex);
}
