; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_counters.c_rdma_counter_get_hwstat_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_counters.c_rdma_counter_get_hwstat_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.rdma_port_counter }
%struct.rdma_port_counter = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rdma_counter_get_hwstat_value(%struct.ib_device* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.rdma_port_counter*, align 8
  %9 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %11 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = load i64, i64* %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store %struct.rdma_port_counter* %15, %struct.rdma_port_counter** %8, align 8
  %16 = load %struct.rdma_port_counter*, %struct.rdma_port_counter** %8, align 8
  %17 = getelementptr inbounds %struct.rdma_port_counter, %struct.rdma_port_counter* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = icmp ne %struct.TYPE_4__* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %39

21:                                               ; preds = %3
  %22 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* %7, align 8
  %25 = call i32 @get_running_counters_hwstat_sum(%struct.ib_device* %22, i64 %23, i64 %24)
  store i32 %25, i32* %9, align 4
  %26 = load %struct.rdma_port_counter*, %struct.rdma_port_counter** %8, align 8
  %27 = getelementptr inbounds %struct.rdma_port_counter, %struct.rdma_port_counter* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64*, i64** %29, align 8
  %31 = load i64, i64* %7, align 8
  %32 = getelementptr inbounds i64, i64* %30, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %35, %33
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %21, %20
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i32 @get_running_counters_hwstat_sum(%struct.ib_device*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
