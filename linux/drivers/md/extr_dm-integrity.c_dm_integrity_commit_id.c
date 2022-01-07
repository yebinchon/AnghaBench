
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_integrity_c {int* commit_ids; } ;
typedef int commit_id_t ;
typedef int __u64 ;


 int cpu_to_le64 (int) ;

__attribute__((used)) static commit_id_t dm_integrity_commit_id(struct dm_integrity_c *ic, unsigned i,
       unsigned j, unsigned char seq)
{




 return ic->commit_ids[seq] ^ cpu_to_le64(((__u64)i << 32) ^ j);
}
