
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_host_device {int hd_priv; } ;
struct es2_ap_dev {int dummy; } ;



__attribute__((used)) static inline struct es2_ap_dev *hd_to_es2(struct gb_host_device *hd)
{
 return (struct es2_ap_dev *)&hd->hd_priv;
}
