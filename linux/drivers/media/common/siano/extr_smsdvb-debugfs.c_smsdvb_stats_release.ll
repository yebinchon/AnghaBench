; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/siano/extr_smsdvb-debugfs.c_smsdvb_stats_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/siano/extr_smsdvb-debugfs.c_smsdvb_stats_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.smsdvb_debugfs* }
%struct.smsdvb_debugfs = type { i32, i32, i32, i32 }

@smsdvb_debugfs_data_release = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @smsdvb_stats_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smsdvb_stats_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.smsdvb_debugfs*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %6 = load %struct.file*, %struct.file** %4, align 8
  %7 = getelementptr inbounds %struct.file, %struct.file* %6, i32 0, i32 0
  %8 = load %struct.smsdvb_debugfs*, %struct.smsdvb_debugfs** %7, align 8
  store %struct.smsdvb_debugfs* %8, %struct.smsdvb_debugfs** %5, align 8
  %9 = load %struct.smsdvb_debugfs*, %struct.smsdvb_debugfs** %5, align 8
  %10 = getelementptr inbounds %struct.smsdvb_debugfs, %struct.smsdvb_debugfs* %9, i32 0, i32 3
  %11 = call i32 @spin_lock(i32* %10)
  %12 = load %struct.smsdvb_debugfs*, %struct.smsdvb_debugfs** %5, align 8
  %13 = getelementptr inbounds %struct.smsdvb_debugfs, %struct.smsdvb_debugfs* %12, i32 0, i32 0
  store i32 1, i32* %13, align 4
  %14 = load %struct.smsdvb_debugfs*, %struct.smsdvb_debugfs** %5, align 8
  %15 = getelementptr inbounds %struct.smsdvb_debugfs, %struct.smsdvb_debugfs* %14, i32 0, i32 3
  %16 = call i32 @spin_unlock(i32* %15)
  %17 = load %struct.smsdvb_debugfs*, %struct.smsdvb_debugfs** %5, align 8
  %18 = getelementptr inbounds %struct.smsdvb_debugfs, %struct.smsdvb_debugfs* %17, i32 0, i32 2
  %19 = call i32 @wake_up_interruptible_sync(i32* %18)
  %20 = load %struct.smsdvb_debugfs*, %struct.smsdvb_debugfs** %5, align 8
  %21 = getelementptr inbounds %struct.smsdvb_debugfs, %struct.smsdvb_debugfs* %20, i32 0, i32 1
  %22 = load i32, i32* @smsdvb_debugfs_data_release, align 4
  %23 = call i32 @kref_put(i32* %21, i32 %22)
  %24 = load %struct.file*, %struct.file** %4, align 8
  %25 = getelementptr inbounds %struct.file, %struct.file* %24, i32 0, i32 0
  store %struct.smsdvb_debugfs* null, %struct.smsdvb_debugfs** %25, align 8
  ret i32 0
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @wake_up_interruptible_sync(i32*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
