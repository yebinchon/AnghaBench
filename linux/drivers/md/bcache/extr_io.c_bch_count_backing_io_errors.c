
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cached_dev {unsigned int error_limit; int backing_dev_name; int io_errors; } ;
struct bio {int bi_opf; } ;


 int REQ_RAHEAD ;
 int WARN_ONCE (int,char*) ;
 unsigned int atomic_add_return (int,int *) ;
 int bch_cached_dev_error (struct cached_dev*) ;
 int pr_err (char*,int ) ;
 int pr_warn_ratelimited (char*,int ) ;

void bch_count_backing_io_errors(struct cached_dev *dc, struct bio *bio)
{
 unsigned int errors;

 WARN_ONCE(!dc, "NULL pointer of struct cached_dev");







 if (bio->bi_opf & REQ_RAHEAD) {
  pr_warn_ratelimited("%s: Read-ahead I/O failed on backing device, ignore",
        dc->backing_dev_name);
  return;
 }

 errors = atomic_add_return(1, &dc->io_errors);
 if (errors < dc->error_limit)
  pr_err("%s: IO error on backing device, unrecoverable",
   dc->backing_dev_name);
 else
  bch_cached_dev_error(dc);
}
