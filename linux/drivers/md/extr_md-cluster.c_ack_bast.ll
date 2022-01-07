; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md-cluster.c_ack_bast.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md-cluster.c_ack_bast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_lock_resource = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.md_cluster_info* }
%struct.md_cluster_info = type { i32, i32 }

@DLM_LOCK_EX = common dso_local global i32 0, align 4
@MD_CLUSTER_ALREADY_IN_CLUSTER = common dso_local global i32 0, align 4
@MD_CLUSTER_PENDING_RECV_EVENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @ack_bast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ack_bast(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dlm_lock_resource*, align 8
  %6 = alloca %struct.md_cluster_info*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.dlm_lock_resource*
  store %struct.dlm_lock_resource* %8, %struct.dlm_lock_resource** %5, align 8
  %9 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %10 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.md_cluster_info*, %struct.md_cluster_info** %12, align 8
  store %struct.md_cluster_info* %13, %struct.md_cluster_info** %6, align 8
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @DLM_LOCK_EX, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %34

17:                                               ; preds = %2
  %18 = load i32, i32* @MD_CLUSTER_ALREADY_IN_CLUSTER, align 4
  %19 = load %struct.md_cluster_info*, %struct.md_cluster_info** %6, align 8
  %20 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %19, i32 0, i32 0
  %21 = call i64 @test_bit(i32 %18, i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %17
  %24 = load %struct.md_cluster_info*, %struct.md_cluster_info** %6, align 8
  %25 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @md_wakeup_thread(i32 %26)
  br label %33

28:                                               ; preds = %17
  %29 = load i32, i32* @MD_CLUSTER_PENDING_RECV_EVENT, align 4
  %30 = load %struct.md_cluster_info*, %struct.md_cluster_info** %6, align 8
  %31 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %30, i32 0, i32 0
  %32 = call i32 @set_bit(i32 %29, i32* %31)
  br label %33

33:                                               ; preds = %28, %23
  br label %34

34:                                               ; preds = %33, %2
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @md_wakeup_thread(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
