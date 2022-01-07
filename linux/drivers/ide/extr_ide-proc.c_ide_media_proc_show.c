
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {scalar_t__ private; } ;
struct TYPE_2__ {int media; } ;
typedef TYPE_1__ ide_drive_t ;







 int seq_puts (struct seq_file*,char const*) ;

__attribute__((used)) static int ide_media_proc_show(struct seq_file *m, void *v)
{
 ide_drive_t *drive = (ide_drive_t *) m->private;
 const char *media;

 switch (drive->media) {
 case 131: media = "disk\n"; break;
 case 132: media = "cdrom\n"; break;
 case 128: media = "tape\n"; break;
 case 130: media = "floppy\n"; break;
 case 129: media = "optical\n"; break;
 default: media = "UNKNOWN\n"; break;
 }
 seq_puts(m, media);
 return 0;
}
