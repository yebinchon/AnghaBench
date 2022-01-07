; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md-cluster.c_read_resync_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md-cluster.c_read_resync_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { %struct.md_cluster_info* }
%struct.md_cluster_info = type { i64, i64 }
%struct.dlm_lock_resource = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.resync_info = type { i32, i32 }

@DLM_LOCK_CR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mddev*, %struct.dlm_lock_resource*)* @read_resync_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_resync_info(%struct.mddev* %0, %struct.dlm_lock_resource* %1) #0 {
  %3 = alloca %struct.mddev*, align 8
  %4 = alloca %struct.dlm_lock_resource*, align 8
  %5 = alloca %struct.resync_info, align 4
  %6 = alloca %struct.md_cluster_info*, align 8
  %7 = alloca i32, align 4
  store %struct.mddev* %0, %struct.mddev** %3, align 8
  store %struct.dlm_lock_resource* %1, %struct.dlm_lock_resource** %4, align 8
  %8 = load %struct.mddev*, %struct.mddev** %3, align 8
  %9 = getelementptr inbounds %struct.mddev, %struct.mddev* %8, i32 0, i32 0
  %10 = load %struct.md_cluster_info*, %struct.md_cluster_info** %9, align 8
  store %struct.md_cluster_info* %10, %struct.md_cluster_info** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %4, align 8
  %12 = load i32, i32* @DLM_LOCK_CR, align 4
  %13 = call i32 @dlm_lock_sync(%struct.dlm_lock_resource* %11, i32 %12)
  %14 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %4, align 8
  %15 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @memcpy(%struct.resync_info* %5, i32 %17, i32 8)
  %19 = getelementptr inbounds %struct.resync_info, %struct.resync_info* %5, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @le64_to_cpu(i32 %20)
  %22 = icmp sgt i64 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.resync_info, %struct.resync_info* %5, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @le64_to_cpu(i32 %25)
  %27 = load %struct.md_cluster_info*, %struct.md_cluster_info** %6, align 8
  %28 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %27, i32 0, i32 1
  store i64 %26, i64* %28, align 8
  %29 = getelementptr inbounds %struct.resync_info, %struct.resync_info* %5, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @le64_to_cpu(i32 %30)
  %32 = load %struct.md_cluster_info*, %struct.md_cluster_info** %6, align 8
  %33 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  store i32 1, i32* %7, align 4
  br label %34

34:                                               ; preds = %23, %2
  %35 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %4, align 8
  %36 = call i32 @dlm_unlock_sync(%struct.dlm_lock_resource* %35)
  %37 = load i32, i32* %7, align 4
  ret i32 %37
}

declare dso_local i32 @dlm_lock_sync(%struct.dlm_lock_resource*, i32) #1

declare dso_local i32 @memcpy(%struct.resync_info*, i32, i32) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i32 @dlm_unlock_sync(%struct.dlm_lock_resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
