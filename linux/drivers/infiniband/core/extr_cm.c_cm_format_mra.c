
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct cm_mra_msg {int private_data; int remote_comm_id; int local_comm_id; int hdr; } ;
struct TYPE_2__ {int remote_id; int local_id; } ;
struct cm_id_private {TYPE_1__ id; int tid; } ;
typedef enum cm_msg_response { ____Placeholder_cm_msg_response } cm_msg_response ;


 int CM_MRA_ATTR_ID ;
 int cm_format_mad_hdr (int *,int ,int ) ;
 int cm_mra_set_msg_mraed (struct cm_mra_msg*,int) ;
 int cm_mra_set_service_timeout (struct cm_mra_msg*,scalar_t__) ;
 int memcpy (int ,void const*,scalar_t__) ;

__attribute__((used)) static void cm_format_mra(struct cm_mra_msg *mra_msg,
     struct cm_id_private *cm_id_priv,
     enum cm_msg_response msg_mraed, u8 service_timeout,
     const void *private_data, u8 private_data_len)
{
 cm_format_mad_hdr(&mra_msg->hdr, CM_MRA_ATTR_ID, cm_id_priv->tid);
 cm_mra_set_msg_mraed(mra_msg, msg_mraed);
 mra_msg->local_comm_id = cm_id_priv->id.local_id;
 mra_msg->remote_comm_id = cm_id_priv->id.remote_id;
 cm_mra_set_service_timeout(mra_msg, service_timeout);

 if (private_data && private_data_len)
  memcpy(mra_msg->private_data, private_data, private_data_len);
}
