
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* idr_find (int *,int) ;
 int pasid_idr ;
 int pasid_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void *intel_pasid_lookup_id(int pasid)
{
 void *p;

 spin_lock(&pasid_lock);
 p = idr_find(&pasid_idr, pasid);
 spin_unlock(&pasid_lock);

 return p;
}
