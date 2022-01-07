
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int idr_remove (int *,int) ;
 int protocol_lock ;
 int scmi_protocols ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void scmi_protocol_unregister(int protocol_id)
{
 spin_lock(&protocol_lock);
 idr_remove(&scmi_protocols, protocol_id);
 spin_unlock(&protocol_lock);
}
