
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amd_i2c_common {int reqcmd; } ;


 int amd_mp2_c2p_mutex_unlock (struct amd_i2c_common*) ;
 int i2c_none ;

void amd_mp2_rw_timeout(struct amd_i2c_common *i2c_common)
{
 i2c_common->reqcmd = i2c_none;
 amd_mp2_c2p_mutex_unlock(i2c_common);
}
