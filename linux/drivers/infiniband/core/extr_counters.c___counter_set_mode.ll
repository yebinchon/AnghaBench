; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_counters.c___counter_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_counters.c___counter_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_counter_mode = type { i64, i32 }

@RDMA_COUNTER_MODE_AUTO = common dso_local global i32 0, align 4
@ALL_AUTO_MODE_MASKS = common dso_local global i32 0, align 4
@RDMA_COUNTER_MODE_NONE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rdma_counter_mode*, i32, i32)* @__counter_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__counter_set_mode(%struct.rdma_counter_mode* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rdma_counter_mode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rdma_counter_mode* %0, %struct.rdma_counter_mode** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @RDMA_COUNTER_MODE_AUTO, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %26

11:                                               ; preds = %3
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @ALL_AUTO_MODE_MASKS, align 4
  %14 = xor i32 %13, -1
  %15 = and i32 %12, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %11
  %18 = load %struct.rdma_counter_mode*, %struct.rdma_counter_mode** %5, align 8
  %19 = getelementptr inbounds %struct.rdma_counter_mode, %struct.rdma_counter_mode* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @RDMA_COUNTER_MODE_NONE, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %17, %11
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %34

26:                                               ; preds = %17, %3
  %27 = load i32, i32* %6, align 4
  %28 = zext i32 %27 to i64
  %29 = load %struct.rdma_counter_mode*, %struct.rdma_counter_mode** %5, align 8
  %30 = getelementptr inbounds %struct.rdma_counter_mode, %struct.rdma_counter_mode* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.rdma_counter_mode*, %struct.rdma_counter_mode** %5, align 8
  %33 = getelementptr inbounds %struct.rdma_counter_mode, %struct.rdma_counter_mode* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 8
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %26, %23
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
