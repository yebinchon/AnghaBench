
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int idr_remove (int *,int) ;
 int pasid_idr ;
 int pasid_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void intel_pasid_free_id(int pasid)
{
 spin_lock(&pasid_lock);
 idr_remove(&pasid_idr, pasid);
 spin_unlock(&pasid_lock);
}
