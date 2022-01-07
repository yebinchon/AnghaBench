; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_hw_counters.c_bnxt_re_ib_alloc_hw_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_hw_counters.c_bnxt_re_ib_alloc_hw_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_hw_stats = type { i32 }
%struct.ib_device = type { i32 }

@bnxt_re_stat_name = common dso_local global i32 0, align 4
@BNXT_RE_NUM_COUNTERS = common dso_local global i64 0, align 8
@RDMA_HW_STATS_DEFAULT_LIFESPAN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rdma_hw_stats* @bnxt_re_ib_alloc_hw_stats(%struct.ib_device* %0, i32 %1) #0 {
  %3 = alloca %struct.rdma_hw_stats*, align 8
  %4 = alloca %struct.ib_device*, align 8
  %5 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* @bnxt_re_stat_name, align 4
  %7 = call i64 @ARRAY_SIZE(i32 %6)
  %8 = load i64, i64* @BNXT_RE_NUM_COUNTERS, align 8
  %9 = icmp ne i64 %7, %8
  %10 = zext i1 %9 to i32
  %11 = call i32 @BUILD_BUG_ON(i32 %10)
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store %struct.rdma_hw_stats* null, %struct.rdma_hw_stats** %3, align 8
  br label %21

15:                                               ; preds = %2
  %16 = load i32, i32* @bnxt_re_stat_name, align 4
  %17 = load i32, i32* @bnxt_re_stat_name, align 4
  %18 = call i64 @ARRAY_SIZE(i32 %17)
  %19 = load i32, i32* @RDMA_HW_STATS_DEFAULT_LIFESPAN, align 4
  %20 = call %struct.rdma_hw_stats* @rdma_alloc_hw_stats_struct(i32 %16, i64 %18, i32 %19)
  store %struct.rdma_hw_stats* %20, %struct.rdma_hw_stats** %3, align 8
  br label %21

21:                                               ; preds = %15, %14
  %22 = load %struct.rdma_hw_stats*, %struct.rdma_hw_stats** %3, align 8
  ret %struct.rdma_hw_stats* %22
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i64 @ARRAY_SIZE(i32) #1

declare dso_local %struct.rdma_hw_stats* @rdma_alloc_hw_stats_struct(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
