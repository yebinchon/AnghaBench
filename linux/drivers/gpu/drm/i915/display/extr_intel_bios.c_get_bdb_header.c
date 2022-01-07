
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vbt_header {int bdb_offset; } ;
typedef void bdb_header ;



__attribute__((used)) static const struct bdb_header *get_bdb_header(const struct vbt_header *vbt)
{
 const void *_vbt = vbt;

 return _vbt + vbt->bdb_offset;
}
