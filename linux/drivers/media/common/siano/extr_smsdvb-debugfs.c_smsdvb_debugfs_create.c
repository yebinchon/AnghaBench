
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smsdvb_debugfs {int refcount; int lock; int stats_queue; } ;
struct smsdvb_client_t {int prt_isdb_stats_ex; int prt_isdb_stats; int prt_dvb_stats; struct smsdvb_debugfs* debug_data; int debugfs; struct smscore_device_t* coredev; } ;
struct smscore_device_t {int devpath; int is_usb_device; } ;
struct dentry {int dummy; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR_OR_NULL (int ) ;
 int S_IRUGO ;
 int S_IWUSR ;
 int debugfs_create_dir (int ,int ) ;
 struct dentry* debugfs_create_file (char*,int,int ,struct smsdvb_client_t*,int *) ;
 int debugfs_remove (int ) ;
 int debugfs_stats_ops ;
 int init_waitqueue_head (int *) ;
 int kref_init (int *) ;
 struct smsdvb_debugfs* kzalloc (int,int ) ;
 int pr_info (char*,int ) ;
 int smsdvb_debugfs_usb_root ;
 int smsdvb_print_dvb_stats ;
 int smsdvb_print_isdb_stats ;
 int smsdvb_print_isdb_stats_ex ;
 int spin_lock_init (int *) ;

int smsdvb_debugfs_create(struct smsdvb_client_t *client)
{
 struct smscore_device_t *coredev = client->coredev;
 struct dentry *d;
 struct smsdvb_debugfs *debug_data;

 if (!smsdvb_debugfs_usb_root || !coredev->is_usb_device)
  return -ENODEV;

 client->debugfs = debugfs_create_dir(coredev->devpath,
          smsdvb_debugfs_usb_root);
 if (IS_ERR_OR_NULL(client->debugfs)) {
  pr_info("Unable to create debugfs %s directory.\n",
   coredev->devpath);
  return -ENODEV;
 }

 d = debugfs_create_file("stats", S_IRUGO | S_IWUSR, client->debugfs,
    client, &debugfs_stats_ops);
 if (!d) {
  debugfs_remove(client->debugfs);
  return -ENOMEM;
 }

 debug_data = kzalloc(sizeof(*client->debug_data), GFP_KERNEL);
 if (!debug_data)
  return -ENOMEM;

 client->debug_data = debug_data;
 client->prt_dvb_stats = smsdvb_print_dvb_stats;
 client->prt_isdb_stats = smsdvb_print_isdb_stats;
 client->prt_isdb_stats_ex = smsdvb_print_isdb_stats_ex;

 init_waitqueue_head(&debug_data->stats_queue);
 spin_lock_init(&debug_data->lock);
 kref_init(&debug_data->refcount);

 return 0;
}
