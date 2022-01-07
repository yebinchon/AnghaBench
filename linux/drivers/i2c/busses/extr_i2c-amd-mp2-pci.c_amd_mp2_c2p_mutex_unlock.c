
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amd_mp2_dev {int c2p_lock; int c2p_lock_busid; } ;
struct amd_i2c_common {int bus_id; struct amd_mp2_dev* mp2_dev; } ;


 int dev_warn (int ,char*,int ,int ) ;
 int mutex_unlock (int *) ;
 int ndev_dev (struct amd_mp2_dev*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void amd_mp2_c2p_mutex_unlock(struct amd_i2c_common *i2c_common)
{
 struct amd_mp2_dev *privdata = i2c_common->mp2_dev;

 if (unlikely(privdata->c2p_lock_busid != i2c_common->bus_id)) {
  dev_warn(ndev_dev(privdata),
    "bus %d attempting to unlock C2P locked by bus %d\n",
    i2c_common->bus_id, privdata->c2p_lock_busid);
  return;
 }

 mutex_unlock(&privdata->c2p_lock);
}
