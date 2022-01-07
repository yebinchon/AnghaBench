
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mddev {int max_corr_read_errors; } ;
typedef int ssize_t ;


 int atomic_read (int *) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t
max_corrected_read_errors_show(struct mddev *mddev, char *page) {
 return sprintf(page, "%d\n",
         atomic_read(&mddev->max_corr_read_errors));
}
