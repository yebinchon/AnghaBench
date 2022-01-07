
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ unacked_exist; } ;
struct md_rdev {TYPE_1__ badblocks; int flags; } ;
typedef scalar_t__ ssize_t ;


 int Blocked ;
 int ExternalBbl ;
 int FailFast ;
 int Faulty ;
 int In_sync ;
 int Journal ;
 unsigned long READ_ONCE (int ) ;
 int Replacement ;
 int WantReplacement ;
 int WriteErrorSeen ;
 int WriteMostly ;
 scalar_t__ sprintf (char*,char*,...) ;
 scalar_t__ strlen (char*) ;
 scalar_t__ test_bit (int ,unsigned long*) ;

__attribute__((used)) static ssize_t
state_show(struct md_rdev *rdev, char *page)
{
 char *sep = ",";
 size_t len = 0;
 unsigned long flags = READ_ONCE(rdev->flags);

 if (test_bit(Faulty, &flags) ||
     (!test_bit(ExternalBbl, &flags) &&
     rdev->badblocks.unacked_exist))
  len += sprintf(page+len, "faulty%s", sep);
 if (test_bit(In_sync, &flags))
  len += sprintf(page+len, "in_sync%s", sep);
 if (test_bit(Journal, &flags))
  len += sprintf(page+len, "journal%s", sep);
 if (test_bit(WriteMostly, &flags))
  len += sprintf(page+len, "write_mostly%s", sep);
 if (test_bit(Blocked, &flags) ||
     (rdev->badblocks.unacked_exist
      && !test_bit(Faulty, &flags)))
  len += sprintf(page+len, "blocked%s", sep);
 if (!test_bit(Faulty, &flags) &&
     !test_bit(Journal, &flags) &&
     !test_bit(In_sync, &flags))
  len += sprintf(page+len, "spare%s", sep);
 if (test_bit(WriteErrorSeen, &flags))
  len += sprintf(page+len, "write_error%s", sep);
 if (test_bit(WantReplacement, &flags))
  len += sprintf(page+len, "want_replacement%s", sep);
 if (test_bit(Replacement, &flags))
  len += sprintf(page+len, "replacement%s", sep);
 if (test_bit(ExternalBbl, &flags))
  len += sprintf(page+len, "external_bbl%s", sep);
 if (test_bit(FailFast, &flags))
  len += sprintf(page+len, "failfast%s", sep);

 if (len)
  len -= strlen(sep);

 return len+sprintf(page+len, "\n");
}
