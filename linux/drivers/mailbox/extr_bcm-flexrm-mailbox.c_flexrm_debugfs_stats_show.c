
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int private; } ;
struct flexrm_mbox {int dummy; } ;


 struct flexrm_mbox* dev_get_drvdata (int ) ;
 int flexrm_write_stats_in_seqfile (struct flexrm_mbox*,struct seq_file*) ;

__attribute__((used)) static int flexrm_debugfs_stats_show(struct seq_file *file, void *offset)
{
 struct flexrm_mbox *mbox = dev_get_drvdata(file->private);


 flexrm_write_stats_in_seqfile(mbox, file);

 return 0;
}
