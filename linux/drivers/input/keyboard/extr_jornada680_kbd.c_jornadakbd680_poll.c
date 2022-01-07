
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jornadakbd {int new_scan; int old_scan; } ;
struct input_polled_dev {struct jornadakbd* private; } ;


 int JORNADA_SCAN_SIZE ;
 int jornada_parse_kbd (struct jornadakbd*) ;
 int jornada_scan_keyb (int ) ;
 int memcpy (int ,int ,int ) ;

__attribute__((used)) static void jornadakbd680_poll(struct input_polled_dev *dev)
{
 struct jornadakbd *jornadakbd = dev->private;

 jornada_scan_keyb(jornadakbd->new_scan);
 jornada_parse_kbd(jornadakbd);
 memcpy(jornadakbd->old_scan, jornadakbd->new_scan, JORNADA_SCAN_SIZE);
}
