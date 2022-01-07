
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hisi_zip {int list; } ;


 int hisi_zip_list_lock ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static inline void hisi_zip_remove_from_list(struct hisi_zip *hisi_zip)
{
 mutex_lock(&hisi_zip_list_lock);
 list_del(&hisi_zip->list);
 mutex_unlock(&hisi_zip_list_lock);
}
