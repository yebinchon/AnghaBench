
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u64 ;
typedef int __le64 ;
typedef int __le32 ;


 int __le64_to_cpu (int ) ;

__attribute__((used)) static inline __u64 rhf_to_cpu(const __le32 *rbuf)
{
 return __le64_to_cpu(*((__le64 *)rbuf));
}
