
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ __be64 ;
typedef int __be32 ;


 scalar_t__ be32_to_cpu (int ) ;
 scalar_t__ be64_to_cpu (scalar_t__) ;

__attribute__((used)) static inline int cm_is_active_peer(__be64 local_ca_guid, __be64 remote_ca_guid,
        __be32 local_qpn, __be32 remote_qpn)
{
 return (be64_to_cpu(local_ca_guid) > be64_to_cpu(remote_ca_guid) ||
  ((local_ca_guid == remote_ca_guid) &&
   (be32_to_cpu(local_qpn) > be32_to_cpu(remote_qpn))));
}
