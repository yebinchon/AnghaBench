
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ide_cfg_mtx ;
 int ide_indexes ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void ide_free_port_slot(int idx)
{
 mutex_lock(&ide_cfg_mtx);
 ide_indexes &= ~(1 << idx);
 mutex_unlock(&ide_cfg_mtx);
}
