
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct hlist_head {int dummy; } ;
struct cached_dev {struct hlist_head* io_hash; } ;


 int RECENT_IO_BITS ;
 size_t hash_64 (int ,int ) ;

__attribute__((used)) static struct hlist_head *iohash(struct cached_dev *dc, uint64_t k)
{
 return &dc->io_hash[hash_64(k, RECENT_IO_BITS)];
}
