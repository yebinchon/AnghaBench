; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md-cluster.c_process_metadata_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md-cluster.c_process_metadata_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i32, %struct.TYPE_2__*, %struct.md_cluster_info* }
%struct.TYPE_2__ = type { i32 }
%struct.md_cluster_info = type { i32, i32 }
%struct.cluster_msg = type { i32 }

@DLM_LOCK_CR = common dso_local global i32 0, align 4
@MD_CLUSTER_HOLDING_MUTEX_FOR_RECVD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mddev*, %struct.cluster_msg*)* @process_metadata_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_metadata_update(%struct.mddev* %0, %struct.cluster_msg* %1) #0 {
  %3 = alloca %struct.mddev*, align 8
  %4 = alloca %struct.cluster_msg*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.md_cluster_info*, align 8
  store %struct.mddev* %0, %struct.mddev** %3, align 8
  store %struct.cluster_msg* %1, %struct.cluster_msg** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.mddev*, %struct.mddev** %3, align 8
  %8 = getelementptr inbounds %struct.mddev, %struct.mddev* %7, i32 0, i32 2
  %9 = load %struct.md_cluster_info*, %struct.md_cluster_info** %8, align 8
  store %struct.md_cluster_info* %9, %struct.md_cluster_info** %6, align 8
  %10 = load %struct.cluster_msg*, %struct.cluster_msg** %4, align 8
  %11 = getelementptr inbounds %struct.cluster_msg, %struct.cluster_msg* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @le32_to_cpu(i32 %12)
  %14 = load %struct.mddev*, %struct.mddev** %3, align 8
  %15 = getelementptr inbounds %struct.mddev, %struct.mddev* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load %struct.md_cluster_info*, %struct.md_cluster_info** %6, align 8
  %17 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @DLM_LOCK_CR, align 4
  %20 = call i32 @dlm_lock_sync(i32 %18, i32 %19)
  %21 = load %struct.mddev*, %struct.mddev** %3, align 8
  %22 = getelementptr inbounds %struct.mddev, %struct.mddev* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.mddev*, %struct.mddev** %3, align 8
  %27 = call i32 @mddev_trylock(%struct.mddev* %26)
  store i32 %27, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %2
  %30 = load i32, i32* @MD_CLUSTER_HOLDING_MUTEX_FOR_RECVD, align 4
  %31 = load %struct.md_cluster_info*, %struct.md_cluster_info** %6, align 8
  %32 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %31, i32 0, i32 0
  %33 = call i64 @test_bit(i32 %30, i32* %32)
  %34 = icmp ne i64 %33, 0
  br label %35

35:                                               ; preds = %29, %2
  %36 = phi i1 [ true, %2 ], [ %34, %29 ]
  %37 = zext i1 %36 to i32
  %38 = call i32 @wait_event(i32 %25, i32 %37)
  %39 = load %struct.mddev*, %struct.mddev** %3, align 8
  %40 = load %struct.mddev*, %struct.mddev** %3, align 8
  %41 = getelementptr inbounds %struct.mddev, %struct.mddev* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @md_reload_sb(%struct.mddev* %39, i32 %42)
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %35
  %47 = load %struct.mddev*, %struct.mddev** %3, align 8
  %48 = call i32 @mddev_unlock(%struct.mddev* %47)
  br label %49

49:                                               ; preds = %46, %35
  ret void
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @dlm_lock_sync(i32, i32) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @mddev_trylock(%struct.mddev*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @md_reload_sb(%struct.mddev*, i32) #1

declare dso_local i32 @mddev_unlock(%struct.mddev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
