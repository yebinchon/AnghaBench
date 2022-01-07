; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md-cluster.c_metadata_update_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md-cluster.c_metadata_update_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i32, %struct.md_cluster_info* }
%struct.md_cluster_info = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }

@MD_CLUSTER_HOLDING_MUTEX_FOR_RECVD = common dso_local global i32 0, align 4
@MD_CLUSTER_SEND_LOCK = common dso_local global i32 0, align 4
@MD_CLUSTER_SEND_LOCKED_ALREADY = common dso_local global i32 0, align 4
@DLM_LOCK_EX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mddev*)* @metadata_update_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @metadata_update_start(%struct.mddev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mddev*, align 8
  %4 = alloca %struct.md_cluster_info*, align 8
  %5 = alloca i32, align 4
  store %struct.mddev* %0, %struct.mddev** %3, align 8
  %6 = load %struct.mddev*, %struct.mddev** %3, align 8
  %7 = getelementptr inbounds %struct.mddev, %struct.mddev* %6, i32 0, i32 1
  %8 = load %struct.md_cluster_info*, %struct.md_cluster_info** %7, align 8
  store %struct.md_cluster_info* %8, %struct.md_cluster_info** %4, align 8
  %9 = load i32, i32* @MD_CLUSTER_HOLDING_MUTEX_FOR_RECVD, align 4
  %10 = load %struct.md_cluster_info*, %struct.md_cluster_info** %4, align 8
  %11 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %10, i32 0, i32 0
  %12 = call i32 @test_and_set_bit_lock(i32 %9, i32* %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @WARN_ON_ONCE(i32 %13)
  %15 = load %struct.mddev*, %struct.mddev** %3, align 8
  %16 = getelementptr inbounds %struct.mddev, %struct.mddev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @md_wakeup_thread(i32 %17)
  %19 = load %struct.md_cluster_info*, %struct.md_cluster_info** %4, align 8
  %20 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @MD_CLUSTER_SEND_LOCK, align 4
  %23 = load %struct.md_cluster_info*, %struct.md_cluster_info** %4, align 8
  %24 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %23, i32 0, i32 0
  %25 = call i32 @test_and_set_bit(i32 %22, i32* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %1
  %28 = load i32, i32* @MD_CLUSTER_SEND_LOCKED_ALREADY, align 4
  %29 = load %struct.md_cluster_info*, %struct.md_cluster_info** %4, align 8
  %30 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %29, i32 0, i32 0
  %31 = call i64 @test_and_clear_bit(i32 %28, i32* %30)
  %32 = icmp ne i64 %31, 0
  br label %33

33:                                               ; preds = %27, %1
  %34 = phi i1 [ true, %1 ], [ %32, %27 ]
  %35 = zext i1 %34 to i32
  %36 = call i32 @wait_event(i32 %21, i32 %35)
  %37 = load %struct.md_cluster_info*, %struct.md_cluster_info** %4, align 8
  %38 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @DLM_LOCK_EX, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %33
  %45 = load i32, i32* @MD_CLUSTER_HOLDING_MUTEX_FOR_RECVD, align 4
  %46 = load %struct.md_cluster_info*, %struct.md_cluster_info** %4, align 8
  %47 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %46, i32 0, i32 0
  %48 = call i32 @clear_bit_unlock(i32 %45, i32* %47)
  store i32 0, i32* %2, align 4
  br label %57

49:                                               ; preds = %33
  %50 = load %struct.md_cluster_info*, %struct.md_cluster_info** %4, align 8
  %51 = call i32 @lock_token(%struct.md_cluster_info* %50, i32 1)
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* @MD_CLUSTER_HOLDING_MUTEX_FOR_RECVD, align 4
  %53 = load %struct.md_cluster_info*, %struct.md_cluster_info** %4, align 8
  %54 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %53, i32 0, i32 0
  %55 = call i32 @clear_bit_unlock(i32 %52, i32* %54)
  %56 = load i32, i32* %5, align 4
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %49, %44
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @test_and_set_bit_lock(i32, i32*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @md_wakeup_thread(i32) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @clear_bit_unlock(i32, i32*) #1

declare dso_local i32 @lock_token(%struct.md_cluster_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
