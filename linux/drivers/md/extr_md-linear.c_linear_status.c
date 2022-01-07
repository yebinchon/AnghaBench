
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct mddev {int chunk_sectors; } ;


 int seq_printf (struct seq_file*,char*,int) ;

__attribute__((used)) static void linear_status (struct seq_file *seq, struct mddev *mddev)
{
 seq_printf(seq, " %dk rounding", mddev->chunk_sectors / 2);
}
