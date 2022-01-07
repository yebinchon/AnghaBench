
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ last_update; int update_lock; } ;
struct ibm_cffps {int version; int* debugfs_entries; TYPE_1__ input_history; struct i2c_client* client; } ;
struct i2c_device_id {scalar_t__ driver_data; } ;
struct TYPE_5__ {int * platform_data; } ;
struct i2c_client {int name; TYPE_2__ dev; } ;
struct dentry {int dummy; } ;
typedef enum versions { ____Placeholder_versions } versions ;


 size_t CFFPS_DEBUGFS_CCIN ;
 size_t CFFPS_DEBUGFS_FRU ;
 size_t CFFPS_DEBUGFS_FW ;
 size_t CFFPS_DEBUGFS_INPUT_HISTORY ;
 int CFFPS_DEBUGFS_NUM_ENTRIES ;
 size_t CFFPS_DEBUGFS_PN ;
 size_t CFFPS_DEBUGFS_SN ;
 int GFP_KERNEL ;
 scalar_t__ HZ ;
 int cffps1 ;
 struct dentry* debugfs_create_dir (int ,struct dentry*) ;
 int debugfs_create_file (char*,int,struct dentry*,int*,int *) ;
 struct ibm_cffps* devm_kzalloc (TYPE_2__*,int,int ) ;
 int ibm_cffps_create_led_class (struct ibm_cffps*) ;
 int ibm_cffps_fops ;
 int * ibm_cffps_info ;
 int ibm_cffps_pdata ;
 scalar_t__ jiffies ;
 int mutex_init (int *) ;
 void* of_device_get_match_data (TYPE_2__*) ;
 int pmbus_do_probe (struct i2c_client*,struct i2c_device_id const*,int *) ;
 struct dentry* pmbus_get_debugfs_dir (struct i2c_client*) ;

__attribute__((used)) static int ibm_cffps_probe(struct i2c_client *client,
      const struct i2c_device_id *id)
{
 int i, rc;
 enum versions vs;
 struct dentry *debugfs;
 struct dentry *ibm_cffps_dir;
 struct ibm_cffps *psu;
 const void *md = of_device_get_match_data(&client->dev);

 if (md)
  vs = (enum versions)md;
 else if (id)
  vs = (enum versions)id->driver_data;
 else
  vs = cffps1;

 client->dev.platform_data = &ibm_cffps_pdata;
 rc = pmbus_do_probe(client, id, &ibm_cffps_info[vs]);
 if (rc)
  return rc;





 psu = devm_kzalloc(&client->dev, sizeof(*psu), GFP_KERNEL);
 if (!psu)
  return 0;

 psu->version = vs;
 psu->client = client;
 mutex_init(&psu->input_history.update_lock);
 psu->input_history.last_update = jiffies - HZ;

 ibm_cffps_create_led_class(psu);


 debugfs = pmbus_get_debugfs_dir(client);
 if (!debugfs)
  return 0;

 ibm_cffps_dir = debugfs_create_dir(client->name, debugfs);
 if (!ibm_cffps_dir)
  return 0;

 for (i = 0; i < CFFPS_DEBUGFS_NUM_ENTRIES; ++i)
  psu->debugfs_entries[i] = i;

 debugfs_create_file("input_history", 0444, ibm_cffps_dir,
       &psu->debugfs_entries[CFFPS_DEBUGFS_INPUT_HISTORY],
       &ibm_cffps_fops);
 debugfs_create_file("fru", 0444, ibm_cffps_dir,
       &psu->debugfs_entries[CFFPS_DEBUGFS_FRU],
       &ibm_cffps_fops);
 debugfs_create_file("part_number", 0444, ibm_cffps_dir,
       &psu->debugfs_entries[CFFPS_DEBUGFS_PN],
       &ibm_cffps_fops);
 debugfs_create_file("serial_number", 0444, ibm_cffps_dir,
       &psu->debugfs_entries[CFFPS_DEBUGFS_SN],
       &ibm_cffps_fops);
 debugfs_create_file("ccin", 0444, ibm_cffps_dir,
       &psu->debugfs_entries[CFFPS_DEBUGFS_CCIN],
       &ibm_cffps_fops);
 debugfs_create_file("fw_version", 0444, ibm_cffps_dir,
       &psu->debugfs_entries[CFFPS_DEBUGFS_FW],
       &ibm_cffps_fops);

 return 0;
}
