
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct sbp2_target {int guid; } ;



__attribute__((used)) static void sbp2_get_unit_unique_id(struct sbp2_target *tgt,
        const u32 *leaf)
{
 if ((leaf[0] & 0xffff0000) == 0x00020000)
  tgt->guid = (u64)leaf[1] << 32 | leaf[2];
}
