; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/siano/extr_smsdvb-debugfs.c_smsdvb_stats_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/siano/extr_smsdvb-debugfs.c_smsdvb_stats_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.smsdvb_client_t* }
%struct.smsdvb_client_t = type { %struct.smsdvb_debugfs* }
%struct.smsdvb_debugfs = type { i32, i32, i64, i32 }
%struct.file = type { %struct.smsdvb_debugfs* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @smsdvb_stats_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smsdvb_stats_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.smsdvb_client_t*, align 8
  %6 = alloca %struct.smsdvb_debugfs*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %7 = load %struct.inode*, %struct.inode** %3, align 8
  %8 = getelementptr inbounds %struct.inode, %struct.inode* %7, i32 0, i32 0
  %9 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %8, align 8
  store %struct.smsdvb_client_t* %9, %struct.smsdvb_client_t** %5, align 8
  %10 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %5, align 8
  %11 = getelementptr inbounds %struct.smsdvb_client_t, %struct.smsdvb_client_t* %10, i32 0, i32 0
  %12 = load %struct.smsdvb_debugfs*, %struct.smsdvb_debugfs** %11, align 8
  store %struct.smsdvb_debugfs* %12, %struct.smsdvb_debugfs** %6, align 8
  %13 = load %struct.smsdvb_debugfs*, %struct.smsdvb_debugfs** %6, align 8
  %14 = getelementptr inbounds %struct.smsdvb_debugfs, %struct.smsdvb_debugfs* %13, i32 0, i32 3
  %15 = call i32 @kref_get(i32* %14)
  %16 = load %struct.smsdvb_debugfs*, %struct.smsdvb_debugfs** %6, align 8
  %17 = getelementptr inbounds %struct.smsdvb_debugfs, %struct.smsdvb_debugfs* %16, i32 0, i32 1
  %18 = call i32 @spin_lock(i32* %17)
  %19 = load %struct.smsdvb_debugfs*, %struct.smsdvb_debugfs** %6, align 8
  %20 = getelementptr inbounds %struct.smsdvb_debugfs, %struct.smsdvb_debugfs* %19, i32 0, i32 2
  store i64 0, i64* %20, align 8
  %21 = load %struct.smsdvb_debugfs*, %struct.smsdvb_debugfs** %6, align 8
  %22 = getelementptr inbounds %struct.smsdvb_debugfs, %struct.smsdvb_debugfs* %21, i32 0, i32 0
  store i32 0, i32* %22, align 8
  %23 = load %struct.smsdvb_debugfs*, %struct.smsdvb_debugfs** %6, align 8
  %24 = getelementptr inbounds %struct.smsdvb_debugfs, %struct.smsdvb_debugfs* %23, i32 0, i32 1
  %25 = call i32 @spin_unlock(i32* %24)
  %26 = load %struct.smsdvb_debugfs*, %struct.smsdvb_debugfs** %6, align 8
  %27 = load %struct.file*, %struct.file** %4, align 8
  %28 = getelementptr inbounds %struct.file, %struct.file* %27, i32 0, i32 0
  store %struct.smsdvb_debugfs* %26, %struct.smsdvb_debugfs** %28, align 8
  ret i32 0
}

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
