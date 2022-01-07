; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md.c_do_md_run.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md.c_do_md_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@MD_NOT_READY = common dso_local global i32 0, align 4
@KOBJ_CHANGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"degraded\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mddev*)* @do_md_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_md_run(%struct.mddev* %0) #0 {
  %2 = alloca %struct.mddev*, align 8
  %3 = alloca i32, align 4
  store %struct.mddev* %0, %struct.mddev** %2, align 8
  %4 = load i32, i32* @MD_NOT_READY, align 4
  %5 = load %struct.mddev*, %struct.mddev** %2, align 8
  %6 = getelementptr inbounds %struct.mddev, %struct.mddev* %5, i32 0, i32 1
  %7 = call i32 @set_bit(i32 %4, i32* %6)
  %8 = load %struct.mddev*, %struct.mddev** %2, align 8
  %9 = call i32 @md_run(%struct.mddev* %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %74

13:                                               ; preds = %1
  %14 = load %struct.mddev*, %struct.mddev** %2, align 8
  %15 = call i32 @md_bitmap_load(%struct.mddev* %14)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load %struct.mddev*, %struct.mddev** %2, align 8
  %20 = call i32 @md_bitmap_destroy(%struct.mddev* %19)
  br label %74

21:                                               ; preds = %13
  %22 = load %struct.mddev*, %struct.mddev** %2, align 8
  %23 = call i64 @mddev_is_clustered(%struct.mddev* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load %struct.mddev*, %struct.mddev** %2, align 8
  %27 = call i32 @md_allow_write(%struct.mddev* %26)
  br label %28

28:                                               ; preds = %25, %21
  %29 = load %struct.mddev*, %struct.mddev** %2, align 8
  %30 = call i32 @md_start(%struct.mddev* %29)
  %31 = load %struct.mddev*, %struct.mddev** %2, align 8
  %32 = getelementptr inbounds %struct.mddev, %struct.mddev* %31, i32 0, i32 8
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @md_wakeup_thread(i32 %33)
  %35 = load %struct.mddev*, %struct.mddev** %2, align 8
  %36 = getelementptr inbounds %struct.mddev, %struct.mddev* %35, i32 0, i32 7
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @md_wakeup_thread(i32 %37)
  %39 = load %struct.mddev*, %struct.mddev** %2, align 8
  %40 = getelementptr inbounds %struct.mddev, %struct.mddev* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.mddev*, %struct.mddev** %2, align 8
  %43 = getelementptr inbounds %struct.mddev, %struct.mddev* %42, i32 0, i32 6
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @set_capacity(i32 %41, i32 %44)
  %46 = load %struct.mddev*, %struct.mddev** %2, align 8
  %47 = getelementptr inbounds %struct.mddev, %struct.mddev* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @revalidate_disk(i32 %48)
  %50 = load i32, i32* @MD_NOT_READY, align 4
  %51 = load %struct.mddev*, %struct.mddev** %2, align 8
  %52 = getelementptr inbounds %struct.mddev, %struct.mddev* %51, i32 0, i32 1
  %53 = call i32 @clear_bit(i32 %50, i32* %52)
  %54 = load %struct.mddev*, %struct.mddev** %2, align 8
  %55 = getelementptr inbounds %struct.mddev, %struct.mddev* %54, i32 0, i32 0
  store i32 1, i32* %55, align 4
  %56 = load %struct.mddev*, %struct.mddev** %2, align 8
  %57 = getelementptr inbounds %struct.mddev, %struct.mddev* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 4
  %59 = call %struct.TYPE_2__* @disk_to_dev(i32 %58)
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* @KOBJ_CHANGE, align 4
  %62 = call i32 @kobject_uevent(i32* %60, i32 %61)
  %63 = load %struct.mddev*, %struct.mddev** %2, align 8
  %64 = getelementptr inbounds %struct.mddev, %struct.mddev* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @sysfs_notify_dirent_safe(i32 %65)
  %67 = load %struct.mddev*, %struct.mddev** %2, align 8
  %68 = getelementptr inbounds %struct.mddev, %struct.mddev* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @sysfs_notify_dirent_safe(i32 %69)
  %71 = load %struct.mddev*, %struct.mddev** %2, align 8
  %72 = getelementptr inbounds %struct.mddev, %struct.mddev* %71, i32 0, i32 2
  %73 = call i32 @sysfs_notify(i32* %72, i32* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %74

74:                                               ; preds = %28, %18, %12
  %75 = load i32, i32* @MD_NOT_READY, align 4
  %76 = load %struct.mddev*, %struct.mddev** %2, align 8
  %77 = getelementptr inbounds %struct.mddev, %struct.mddev* %76, i32 0, i32 1
  %78 = call i32 @clear_bit(i32 %75, i32* %77)
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @md_run(%struct.mddev*) #1

declare dso_local i32 @md_bitmap_load(%struct.mddev*) #1

declare dso_local i32 @md_bitmap_destroy(%struct.mddev*) #1

declare dso_local i64 @mddev_is_clustered(%struct.mddev*) #1

declare dso_local i32 @md_allow_write(%struct.mddev*) #1

declare dso_local i32 @md_start(%struct.mddev*) #1

declare dso_local i32 @md_wakeup_thread(i32) #1

declare dso_local i32 @set_capacity(i32, i32) #1

declare dso_local i32 @revalidate_disk(i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @kobject_uevent(i32*, i32) #1

declare dso_local %struct.TYPE_2__* @disk_to_dev(i32) #1

declare dso_local i32 @sysfs_notify_dirent_safe(i32) #1

declare dso_local i32 @sysfs_notify(i32*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
