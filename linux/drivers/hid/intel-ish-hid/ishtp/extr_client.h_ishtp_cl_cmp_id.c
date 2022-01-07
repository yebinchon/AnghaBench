
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ishtp_cl {scalar_t__ host_client_id; scalar_t__ fw_client_id; } ;



__attribute__((used)) static inline bool ishtp_cl_cmp_id(const struct ishtp_cl *cl1,
       const struct ishtp_cl *cl2)
{
 return cl1 && cl2 &&
  (cl1->host_client_id == cl2->host_client_id) &&
  (cl1->fw_client_id == cl2->fw_client_id);
}
