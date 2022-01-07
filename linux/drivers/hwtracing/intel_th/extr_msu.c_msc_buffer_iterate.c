
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msc_iter {scalar_t__ block; scalar_t__ start_block; int wrap_count; size_t offset; scalar_t__ block_off; scalar_t__ eof; struct msc* msc; } ;
struct msc {int dummy; } ;
typedef size_t ssize_t ;


 unsigned long DATA_IN_PAGE ;
 int MSC_BDESC ;
 unsigned long msc_data_sz (scalar_t__) ;
 scalar_t__ msc_iter_bdesc (struct msc_iter*) ;
 scalar_t__ msc_iter_block_advance (struct msc_iter*) ;
 scalar_t__ msc_iter_win_start (struct msc_iter*,struct msc*) ;

__attribute__((used)) static ssize_t
msc_buffer_iterate(struct msc_iter *iter, size_t size, void *data,
     unsigned long (*fn)(void *, void *, size_t))
{
 struct msc *msc = iter->msc;
 size_t len = size;
 unsigned int advance;

 if (iter->eof)
  return 0;


 if (msc_iter_win_start(iter, msc))
  return 0;

 do {
  unsigned long data_bytes = msc_data_sz(msc_iter_bdesc(iter));
  void *src = (void *)msc_iter_bdesc(iter) + MSC_BDESC;
  size_t tocopy = data_bytes, copied = 0;
  size_t remaining = 0;

  advance = 1;
  if (iter->block == iter->start_block && iter->wrap_count == 2) {
   tocopy = DATA_IN_PAGE - data_bytes;
   src += data_bytes;
  }

  if (!tocopy)
   goto next_block;

  tocopy -= iter->block_off;
  src += iter->block_off;

  if (len < tocopy) {
   tocopy = len;
   advance = 0;
  }

  remaining = fn(data, src, tocopy);

  if (remaining)
   advance = 0;

  copied = tocopy - remaining;
  len -= copied;
  iter->block_off += copied;
  iter->offset += copied;

  if (!advance)
   break;

next_block:
  if (msc_iter_block_advance(iter))
   break;

 } while (len);

 return size - len;
}
