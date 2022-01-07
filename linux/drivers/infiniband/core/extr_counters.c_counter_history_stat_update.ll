; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_counters.c_counter_history_stat_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_counters.c_counter_history_stat_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_counter = type { i64, %struct.TYPE_4__*, %struct.ib_device* }
%struct.TYPE_4__ = type { i32, i64* }
%struct.ib_device = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.rdma_port_counter }
%struct.rdma_port_counter = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rdma_counter*)* @counter_history_stat_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @counter_history_stat_update(%struct.rdma_counter* %0) #0 {
  %2 = alloca %struct.rdma_counter*, align 8
  %3 = alloca %struct.ib_device*, align 8
  %4 = alloca %struct.rdma_port_counter*, align 8
  %5 = alloca i32, align 4
  store %struct.rdma_counter* %0, %struct.rdma_counter** %2, align 8
  %6 = load %struct.rdma_counter*, %struct.rdma_counter** %2, align 8
  %7 = getelementptr inbounds %struct.rdma_counter, %struct.rdma_counter* %6, i32 0, i32 2
  %8 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  store %struct.ib_device* %8, %struct.ib_device** %3, align 8
  %9 = load %struct.ib_device*, %struct.ib_device** %3, align 8
  %10 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %9, i32 0, i32 0
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = load %struct.rdma_counter*, %struct.rdma_counter** %2, align 8
  %13 = getelementptr inbounds %struct.rdma_counter, %struct.rdma_counter* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  store %struct.rdma_port_counter* %16, %struct.rdma_port_counter** %4, align 8
  %17 = load %struct.rdma_port_counter*, %struct.rdma_port_counter** %4, align 8
  %18 = getelementptr inbounds %struct.rdma_port_counter, %struct.rdma_port_counter* %17, i32 0, i32 0
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = icmp ne %struct.TYPE_6__* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %1
  br label %56

22:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %23

23:                                               ; preds = %53, %22
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.rdma_counter*, %struct.rdma_counter** %2, align 8
  %26 = getelementptr inbounds %struct.rdma_counter, %struct.rdma_counter* %25, i32 0, i32 1
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %24, %29
  br i1 %30, label %31, label %56

31:                                               ; preds = %23
  %32 = load %struct.rdma_counter*, %struct.rdma_counter** %2, align 8
  %33 = getelementptr inbounds %struct.rdma_counter, %struct.rdma_counter* %32, i32 0, i32 1
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i64*, i64** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %36, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.rdma_port_counter*, %struct.rdma_port_counter** %4, align 8
  %42 = getelementptr inbounds %struct.rdma_port_counter, %struct.rdma_port_counter* %41, i32 0, i32 0
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %50, %40
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %48, align 4
  br label %53

53:                                               ; preds = %31
  %54 = load i32, i32* %5, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %5, align 4
  br label %23

56:                                               ; preds = %21, %23
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
