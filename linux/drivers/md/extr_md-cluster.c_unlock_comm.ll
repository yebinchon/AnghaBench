; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md-cluster.c_unlock_comm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md-cluster.c_unlock_comm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.md_cluster_info = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }

@DLM_LOCK_EX = common dso_local global i64 0, align 8
@MD_CLUSTER_SEND_LOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.md_cluster_info*)* @unlock_comm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unlock_comm(%struct.md_cluster_info* %0) #0 {
  %2 = alloca %struct.md_cluster_info*, align 8
  store %struct.md_cluster_info* %0, %struct.md_cluster_info** %2, align 8
  %3 = load %struct.md_cluster_info*, %struct.md_cluster_info** %2, align 8
  %4 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %3, i32 0, i32 2
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @DLM_LOCK_EX, align 8
  %9 = icmp ne i64 %7, %8
  %10 = zext i1 %9 to i32
  %11 = call i32 @WARN_ON(i32 %10)
  %12 = load %struct.md_cluster_info*, %struct.md_cluster_info** %2, align 8
  %13 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %12, i32 0, i32 3
  %14 = call i32 @mutex_unlock(i32* %13)
  %15 = load %struct.md_cluster_info*, %struct.md_cluster_info** %2, align 8
  %16 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %15, i32 0, i32 2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = call i32 @dlm_unlock_sync(%struct.TYPE_2__* %17)
  %19 = load i32, i32* @MD_CLUSTER_SEND_LOCK, align 4
  %20 = load %struct.md_cluster_info*, %struct.md_cluster_info** %2, align 8
  %21 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %20, i32 0, i32 1
  %22 = call i32 @clear_bit(i32 %19, i32* %21)
  %23 = load %struct.md_cluster_info*, %struct.md_cluster_info** %2, align 8
  %24 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %23, i32 0, i32 0
  %25 = call i32 @wake_up(i32* %24)
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dlm_unlock_sync(%struct.TYPE_2__*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
