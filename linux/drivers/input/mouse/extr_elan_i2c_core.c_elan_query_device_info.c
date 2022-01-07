
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u16 ;
struct elan_tp_data {int pattern; int ic_type; int iap_version; TYPE_2__* client; int fw_signature_address; int fw_validpage_count; TYPE_1__* ops; int pressure_adjustment; int fw_checksum; int fw_version; } ;
struct TYPE_8__ {int dev; } ;
struct TYPE_7__ {int (* get_version ) (TYPE_2__*,int,int *) ;int (* get_checksum ) (TYPE_2__*,int,int *) ;int (* get_pressure_adjustment ) (TYPE_2__*,int *) ;int (* get_pattern ) (TYPE_2__*,int*) ;} ;


 int dev_warn (int *,char*,int ,int ) ;
 int elan_get_fwinfo (int ,int *,int *) ;
 int stub1 (TYPE_2__*,int,int *) ;
 int stub2 (TYPE_2__*,int,int *) ;
 int stub3 (TYPE_2__*,int,int *) ;
 int stub4 (TYPE_2__*,int *) ;
 int stub5 (TYPE_2__*,int*) ;

__attribute__((used)) static int elan_query_device_info(struct elan_tp_data *data)
{
 int error;
 u16 ic_type;

 error = data->ops->get_version(data->client, 0, &data->fw_version);
 if (error)
  return error;

 error = data->ops->get_checksum(data->client, 0,
     &data->fw_checksum);
 if (error)
  return error;

 error = data->ops->get_version(data->client, 1, &data->iap_version);
 if (error)
  return error;

 error = data->ops->get_pressure_adjustment(data->client,
         &data->pressure_adjustment);
 if (error)
  return error;

 error = data->ops->get_pattern(data->client, &data->pattern);
 if (error)
  return error;

 if (data->pattern == 0x01)
  ic_type = data->ic_type;
 else
  ic_type = data->iap_version;

 error = elan_get_fwinfo(ic_type, &data->fw_validpage_count,
    &data->fw_signature_address);
 if (error)
  dev_warn(&data->client->dev,
    "unexpected iap version %#04x (ic type: %#04x), firmware update will not work\n",
    data->iap_version, data->ic_type);

 return 0;
}
