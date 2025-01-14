
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long u32 ;
struct mdp_superblock_1 {int sb_csum; int max_dev; } ;
typedef int __le32 ;
typedef int __le16 ;


 int cpu_to_le32 (unsigned long long) ;
 scalar_t__ le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static __le32 calc_sb_1_csum(struct mdp_superblock_1 *sb)
{
 __le32 disk_csum;
 u32 csum;
 unsigned long long newcsum;
 int size = 256 + le32_to_cpu(sb->max_dev)*2;
 __le32 *isuper = (__le32*)sb;

 disk_csum = sb->sb_csum;
 sb->sb_csum = 0;
 newcsum = 0;
 for (; size >= 4; size -= 4)
  newcsum += le32_to_cpu(*isuper++);

 if (size == 2)
  newcsum += le16_to_cpu(*(__le16*) isuper);

 csum = (newcsum & 0xffffffff) + (newcsum >> 32);
 sb->sb_csum = disk_csum;
 return cpu_to_le32(csum);
}
