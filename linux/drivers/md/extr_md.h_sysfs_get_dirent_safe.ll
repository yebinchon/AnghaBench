; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md.h_sysfs_get_dirent_safe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md.h_sysfs_get_dirent_safe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernfs_node = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.kernfs_node* (%struct.kernfs_node*, i8*)* @sysfs_get_dirent_safe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.kernfs_node* @sysfs_get_dirent_safe(%struct.kernfs_node* %0, i8* %1) #0 {
  %3 = alloca %struct.kernfs_node*, align 8
  %4 = alloca %struct.kernfs_node*, align 8
  %5 = alloca i8*, align 8
  store %struct.kernfs_node* %0, %struct.kernfs_node** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load %struct.kernfs_node*, %struct.kernfs_node** %4, align 8
  %7 = icmp ne %struct.kernfs_node* %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = load %struct.kernfs_node*, %struct.kernfs_node** %4, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call %struct.kernfs_node* @sysfs_get_dirent(%struct.kernfs_node* %9, i8* %10)
  store %struct.kernfs_node* %11, %struct.kernfs_node** %3, align 8
  br label %14

12:                                               ; preds = %2
  %13 = load %struct.kernfs_node*, %struct.kernfs_node** %4, align 8
  store %struct.kernfs_node* %13, %struct.kernfs_node** %3, align 8
  br label %14

14:                                               ; preds = %12, %8
  %15 = load %struct.kernfs_node*, %struct.kernfs_node** %3, align 8
  ret %struct.kernfs_node* %15
}

declare dso_local %struct.kernfs_node* @sysfs_get_dirent(%struct.kernfs_node*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
