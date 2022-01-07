
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amd_mp2_dev {int c2p_lock_busid; int c2p_lock; } ;
struct amd_i2c_common {int bus_id; struct amd_mp2_dev* mp2_dev; } ;


 int mutex_lock (int *) ;

__attribute__((used)) static void amd_mp2_c2p_mutex_lock(struct amd_i2c_common *i2c_common)
{
 struct amd_mp2_dev *privdata = i2c_common->mp2_dev;


 mutex_lock(&privdata->c2p_lock);
 privdata->c2p_lock_busid = i2c_common->bus_id;
}
