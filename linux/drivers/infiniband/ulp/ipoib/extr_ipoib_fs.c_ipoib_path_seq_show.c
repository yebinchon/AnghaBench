
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct ipoib_path_iter {int dummy; } ;
struct TYPE_2__ {int sl; int rate; int dgid; } ;
struct ipoib_path {TYPE_1__ pathrec; } ;


 int be32_to_cpu (scalar_t__) ;
 int format_gid (int *,char*) ;
 int ib_rate_to_mbps (int ) ;
 int ipoib_path_iter_read (struct ipoib_path_iter*,struct ipoib_path*) ;
 scalar_t__ sa_path_get_dlid (TYPE_1__*) ;
 int seq_printf (struct seq_file*,char*,char*,char*,...) ;
 int seq_putc (struct seq_file*,char) ;

__attribute__((used)) static int ipoib_path_seq_show(struct seq_file *file, void *iter_ptr)
{
 struct ipoib_path_iter *iter = iter_ptr;
 char gid_buf[sizeof "ffff:ffff:ffff:ffff:ffff:ffff:ffff:ffff"];
 struct ipoib_path path;
 int rate;

 if (!iter)
  return 0;

 ipoib_path_iter_read(iter, &path);

 format_gid(&path.pathrec.dgid, gid_buf);

 seq_printf(file,
     "GID: %s\n"
     "  complete: %6s\n",
     gid_buf, sa_path_get_dlid(&path.pathrec) ? "yes" : "no");

 if (sa_path_get_dlid(&path.pathrec)) {
  rate = ib_rate_to_mbps(path.pathrec.rate);

  seq_printf(file,
      "  DLID:     0x%04x\n"
      "  SL: %12d\n"
      "  rate: %8d.%d Gb/sec\n",
      be32_to_cpu(sa_path_get_dlid(&path.pathrec)),
      path.pathrec.sl,
      rate / 1000, rate % 1000);
 }

 seq_putc(file, '\n');

 return 0;
}
