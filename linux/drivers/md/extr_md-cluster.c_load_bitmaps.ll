; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md-cluster.c_load_bitmaps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md-cluster.c_load_bitmaps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { %struct.md_cluster_info* }
%struct.md_cluster_info = type { i32, i32 }

@.str = private unnamed_addr constant [46 x i8] c"md-cluster: failed to gather all resyn infos\0A\00", align 1
@MD_CLUSTER_ALREADY_IN_CLUSTER = common dso_local global i32 0, align 4
@MD_CLUSTER_PENDING_RECV_EVENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mddev*, i32)* @load_bitmaps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @load_bitmaps(%struct.mddev* %0, i32 %1) #0 {
  %3 = alloca %struct.mddev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.md_cluster_info*, align 8
  store %struct.mddev* %0, %struct.mddev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.mddev*, %struct.mddev** %3, align 8
  %7 = getelementptr inbounds %struct.mddev, %struct.mddev* %6, i32 0, i32 0
  %8 = load %struct.md_cluster_info*, %struct.md_cluster_info** %7, align 8
  store %struct.md_cluster_info* %8, %struct.md_cluster_info** %5, align 8
  %9 = load %struct.mddev*, %struct.mddev** %3, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i64 @gather_all_resync_info(%struct.mddev* %9, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = call i32 @pr_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %2
  %16 = load i32, i32* @MD_CLUSTER_ALREADY_IN_CLUSTER, align 4
  %17 = load %struct.md_cluster_info*, %struct.md_cluster_info** %5, align 8
  %18 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %17, i32 0, i32 1
  %19 = call i32 @set_bit(i32 %16, i32* %18)
  %20 = load i32, i32* @MD_CLUSTER_PENDING_RECV_EVENT, align 4
  %21 = load %struct.md_cluster_info*, %struct.md_cluster_info** %5, align 8
  %22 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %21, i32 0, i32 1
  %23 = call i64 @test_and_clear_bit(i32 %20, i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %15
  %26 = load %struct.md_cluster_info*, %struct.md_cluster_info** %5, align 8
  %27 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @md_wakeup_thread(i32 %28)
  br label %30

30:                                               ; preds = %25, %15
  ret void
}

declare dso_local i64 @gather_all_resync_info(%struct.mddev*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @md_wakeup_thread(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
