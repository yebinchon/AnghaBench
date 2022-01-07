; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_counters.c_rdma_counter_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_counters.c_rdma_counter_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_counter = type { i64, %struct.rdma_counter*, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.rdma_port_counter }
%struct.rdma_port_counter = type { i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i64 }

@RDMA_COUNTER_MODE_MANUAL = common dso_local global i64 0, align 8
@RDMA_COUNTER_MODE_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rdma_counter*)* @rdma_counter_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rdma_counter_free(%struct.rdma_counter* %0) #0 {
  %2 = alloca %struct.rdma_counter*, align 8
  %3 = alloca %struct.rdma_port_counter*, align 8
  store %struct.rdma_counter* %0, %struct.rdma_counter** %2, align 8
  %4 = load %struct.rdma_counter*, %struct.rdma_counter** %2, align 8
  %5 = getelementptr inbounds %struct.rdma_counter, %struct.rdma_counter* %4, i32 0, i32 3
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = load %struct.rdma_counter*, %struct.rdma_counter** %2, align 8
  %10 = getelementptr inbounds %struct.rdma_counter, %struct.rdma_counter* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  store %struct.rdma_port_counter* %13, %struct.rdma_port_counter** %3, align 8
  %14 = load %struct.rdma_port_counter*, %struct.rdma_port_counter** %3, align 8
  %15 = getelementptr inbounds %struct.rdma_port_counter, %struct.rdma_port_counter* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.rdma_port_counter*, %struct.rdma_port_counter** %3, align 8
  %18 = getelementptr inbounds %struct.rdma_port_counter, %struct.rdma_port_counter* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = add nsw i32 %19, -1
  store i32 %20, i32* %18, align 8
  %21 = load %struct.rdma_port_counter*, %struct.rdma_port_counter** %3, align 8
  %22 = getelementptr inbounds %struct.rdma_port_counter, %struct.rdma_port_counter* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %37, label %25

25:                                               ; preds = %1
  %26 = load %struct.rdma_port_counter*, %struct.rdma_port_counter** %3, align 8
  %27 = getelementptr inbounds %struct.rdma_port_counter, %struct.rdma_port_counter* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @RDMA_COUNTER_MODE_MANUAL, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %25
  %33 = load %struct.rdma_port_counter*, %struct.rdma_port_counter** %3, align 8
  %34 = getelementptr inbounds %struct.rdma_port_counter, %struct.rdma_port_counter* %33, i32 0, i32 1
  %35 = load i32, i32* @RDMA_COUNTER_MODE_NONE, align 4
  %36 = call i32 @__counter_set_mode(%struct.TYPE_6__* %34, i32 %35, i32 0)
  br label %37

37:                                               ; preds = %32, %25, %1
  %38 = load %struct.rdma_port_counter*, %struct.rdma_port_counter** %3, align 8
  %39 = getelementptr inbounds %struct.rdma_port_counter, %struct.rdma_port_counter* %38, i32 0, i32 0
  %40 = call i32 @mutex_unlock(i32* %39)
  %41 = load %struct.rdma_counter*, %struct.rdma_counter** %2, align 8
  %42 = getelementptr inbounds %struct.rdma_counter, %struct.rdma_counter* %41, i32 0, i32 2
  %43 = call i32 @rdma_restrack_del(i32* %42)
  %44 = load %struct.rdma_counter*, %struct.rdma_counter** %2, align 8
  %45 = getelementptr inbounds %struct.rdma_counter, %struct.rdma_counter* %44, i32 0, i32 1
  %46 = load %struct.rdma_counter*, %struct.rdma_counter** %45, align 8
  %47 = call i32 @kfree(%struct.rdma_counter* %46)
  %48 = load %struct.rdma_counter*, %struct.rdma_counter** %2, align 8
  %49 = call i32 @kfree(%struct.rdma_counter* %48)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @__counter_set_mode(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @rdma_restrack_del(i32*) #1

declare dso_local i32 @kfree(%struct.rdma_counter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
