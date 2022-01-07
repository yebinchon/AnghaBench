; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md.c_md_safemode_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md.c_md_safemode_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i32, i32, i32, i64 }
%struct.timer_list = type { i32 }

@safemode_timer = common dso_local global i32 0, align 4
@mddev = common dso_local global %struct.mddev* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @md_safemode_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @md_safemode_timeout(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.mddev*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %4 = load %struct.mddev*, %struct.mddev** %3, align 8
  %5 = ptrtoint %struct.mddev* %4 to i32
  %6 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %7 = load i32, i32* @safemode_timer, align 4
  %8 = call %struct.mddev* @from_timer(i32 %5, %struct.timer_list* %6, i32 %7)
  store %struct.mddev* %8, %struct.mddev** %3, align 8
  %9 = load %struct.mddev*, %struct.mddev** %3, align 8
  %10 = getelementptr inbounds %struct.mddev, %struct.mddev* %9, i32 0, i32 0
  store i32 1, i32* %10, align 8
  %11 = load %struct.mddev*, %struct.mddev** %3, align 8
  %12 = getelementptr inbounds %struct.mddev, %struct.mddev* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.mddev*, %struct.mddev** %3, align 8
  %17 = getelementptr inbounds %struct.mddev, %struct.mddev* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @sysfs_notify_dirent_safe(i32 %18)
  br label %20

20:                                               ; preds = %15, %1
  %21 = load %struct.mddev*, %struct.mddev** %3, align 8
  %22 = getelementptr inbounds %struct.mddev, %struct.mddev* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @md_wakeup_thread(i32 %23)
  ret void
}

declare dso_local %struct.mddev* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @sysfs_notify_dirent_safe(i32) #1

declare dso_local i32 @md_wakeup_thread(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
