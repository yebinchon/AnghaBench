; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_counters.c_rdma_counter_query_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_counters.c_rdma_counter_query_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_counter = type { i32, %struct.ib_device* }
%struct.ib_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { {}* }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rdma_counter_query_stats(%struct.rdma_counter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rdma_counter*, align 8
  %4 = alloca %struct.ib_device*, align 8
  %5 = alloca i32, align 4
  store %struct.rdma_counter* %0, %struct.rdma_counter** %3, align 8
  %6 = load %struct.rdma_counter*, %struct.rdma_counter** %3, align 8
  %7 = getelementptr inbounds %struct.rdma_counter, %struct.rdma_counter* %6, i32 0, i32 1
  %8 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  store %struct.ib_device* %8, %struct.ib_device** %4, align 8
  %9 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %10 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = bitcast {}** %11 to i32 (%struct.rdma_counter*)**
  %13 = load i32 (%struct.rdma_counter*)*, i32 (%struct.rdma_counter*)** %12, align 8
  %14 = icmp ne i32 (%struct.rdma_counter*)* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %33

18:                                               ; preds = %1
  %19 = load %struct.rdma_counter*, %struct.rdma_counter** %3, align 8
  %20 = getelementptr inbounds %struct.rdma_counter, %struct.rdma_counter* %19, i32 0, i32 0
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %23 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = bitcast {}** %24 to i32 (%struct.rdma_counter*)**
  %26 = load i32 (%struct.rdma_counter*)*, i32 (%struct.rdma_counter*)** %25, align 8
  %27 = load %struct.rdma_counter*, %struct.rdma_counter** %3, align 8
  %28 = call i32 %26(%struct.rdma_counter* %27)
  store i32 %28, i32* %5, align 4
  %29 = load %struct.rdma_counter*, %struct.rdma_counter** %3, align 8
  %30 = getelementptr inbounds %struct.rdma_counter, %struct.rdma_counter* %29, i32 0, i32 0
  %31 = call i32 @mutex_unlock(i32* %30)
  %32 = load i32, i32* %5, align 4
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %18, %15
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
