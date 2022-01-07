; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_counters.c_rdma_counter_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_counters.c_rdma_counter_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_counter = type { i64, %struct.rdma_counter*, i32, i32, %struct.TYPE_8__, %struct.TYPE_5__, %struct.ib_device* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.ib_device = type { %struct.TYPE_7__*, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { %struct.rdma_port_counter }
%struct.rdma_port_counter = type { i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.rdma_counter* (%struct.rdma_counter*)*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@RDMA_RESTRACK_COUNTER = common dso_local global i32 0, align 4
@RDMA_COUNTER_MODE_MANUAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rdma_counter* (%struct.ib_device*, i64, i32)* @rdma_counter_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rdma_counter* @rdma_counter_alloc(%struct.ib_device* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.rdma_counter*, align 8
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.rdma_port_counter*, align 8
  %9 = alloca %struct.rdma_counter*, align 8
  %10 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %12 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %3
  %17 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %18 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load %struct.rdma_counter* (%struct.rdma_counter*)*, %struct.rdma_counter* (%struct.rdma_counter*)** %19, align 8
  %21 = icmp ne %struct.rdma_counter* (%struct.rdma_counter*)* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %16, %3
  store %struct.rdma_counter* null, %struct.rdma_counter** %4, align 8
  br label %105

23:                                               ; preds = %16
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.rdma_counter* @kzalloc(i32 40, i32 %24)
  store %struct.rdma_counter* %25, %struct.rdma_counter** %9, align 8
  %26 = load %struct.rdma_counter*, %struct.rdma_counter** %9, align 8
  %27 = icmp ne %struct.rdma_counter* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  store %struct.rdma_counter* null, %struct.rdma_counter** %4, align 8
  br label %105

29:                                               ; preds = %23
  %30 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %31 = load %struct.rdma_counter*, %struct.rdma_counter** %9, align 8
  %32 = getelementptr inbounds %struct.rdma_counter, %struct.rdma_counter* %31, i32 0, i32 6
  store %struct.ib_device* %30, %struct.ib_device** %32, align 8
  %33 = load i64, i64* %6, align 8
  %34 = load %struct.rdma_counter*, %struct.rdma_counter** %9, align 8
  %35 = getelementptr inbounds %struct.rdma_counter, %struct.rdma_counter* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  %36 = load i32, i32* @RDMA_RESTRACK_COUNTER, align 4
  %37 = load %struct.rdma_counter*, %struct.rdma_counter** %9, align 8
  %38 = getelementptr inbounds %struct.rdma_counter, %struct.rdma_counter* %37, i32 0, i32 5
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  store i32 %36, i32* %39, align 4
  %40 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %41 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load %struct.rdma_counter* (%struct.rdma_counter*)*, %struct.rdma_counter* (%struct.rdma_counter*)** %42, align 8
  %44 = load %struct.rdma_counter*, %struct.rdma_counter** %9, align 8
  %45 = call %struct.rdma_counter* %43(%struct.rdma_counter* %44)
  %46 = load %struct.rdma_counter*, %struct.rdma_counter** %9, align 8
  %47 = getelementptr inbounds %struct.rdma_counter, %struct.rdma_counter* %46, i32 0, i32 1
  store %struct.rdma_counter* %45, %struct.rdma_counter** %47, align 8
  %48 = load %struct.rdma_counter*, %struct.rdma_counter** %9, align 8
  %49 = getelementptr inbounds %struct.rdma_counter, %struct.rdma_counter* %48, i32 0, i32 1
  %50 = load %struct.rdma_counter*, %struct.rdma_counter** %49, align 8
  %51 = icmp ne %struct.rdma_counter* %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %29
  br label %102

53:                                               ; preds = %29
  %54 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %55 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %54, i32 0, i32 0
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = load i64, i64* %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  store %struct.rdma_port_counter* %59, %struct.rdma_port_counter** %8, align 8
  %60 = load %struct.rdma_port_counter*, %struct.rdma_port_counter** %8, align 8
  %61 = getelementptr inbounds %struct.rdma_port_counter, %struct.rdma_port_counter* %60, i32 0, i32 0
  %62 = call i32 @mutex_lock(i32* %61)
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @RDMA_COUNTER_MODE_MANUAL, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %75

66:                                               ; preds = %53
  %67 = load %struct.rdma_port_counter*, %struct.rdma_port_counter** %8, align 8
  %68 = getelementptr inbounds %struct.rdma_port_counter, %struct.rdma_port_counter* %67, i32 0, i32 2
  %69 = load i32, i32* @RDMA_COUNTER_MODE_MANUAL, align 4
  %70 = call i32 @__counter_set_mode(i32* %68, i32 %69, i32 0)
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %10, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %66
  br label %94

74:                                               ; preds = %66
  br label %75

75:                                               ; preds = %74, %53
  %76 = load %struct.rdma_port_counter*, %struct.rdma_port_counter** %8, align 8
  %77 = getelementptr inbounds %struct.rdma_port_counter, %struct.rdma_port_counter* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %77, align 4
  %80 = load %struct.rdma_port_counter*, %struct.rdma_port_counter** %8, align 8
  %81 = getelementptr inbounds %struct.rdma_port_counter, %struct.rdma_port_counter* %80, i32 0, i32 0
  %82 = call i32 @mutex_unlock(i32* %81)
  %83 = load i32, i32* %7, align 4
  %84 = load %struct.rdma_counter*, %struct.rdma_counter** %9, align 8
  %85 = getelementptr inbounds %struct.rdma_counter, %struct.rdma_counter* %84, i32 0, i32 4
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  store i32 %83, i32* %86, align 8
  %87 = load %struct.rdma_counter*, %struct.rdma_counter** %9, align 8
  %88 = getelementptr inbounds %struct.rdma_counter, %struct.rdma_counter* %87, i32 0, i32 3
  %89 = call i32 @kref_init(i32* %88)
  %90 = load %struct.rdma_counter*, %struct.rdma_counter** %9, align 8
  %91 = getelementptr inbounds %struct.rdma_counter, %struct.rdma_counter* %90, i32 0, i32 2
  %92 = call i32 @mutex_init(i32* %91)
  %93 = load %struct.rdma_counter*, %struct.rdma_counter** %9, align 8
  store %struct.rdma_counter* %93, %struct.rdma_counter** %4, align 8
  br label %105

94:                                               ; preds = %73
  %95 = load %struct.rdma_port_counter*, %struct.rdma_port_counter** %8, align 8
  %96 = getelementptr inbounds %struct.rdma_port_counter, %struct.rdma_port_counter* %95, i32 0, i32 0
  %97 = call i32 @mutex_unlock(i32* %96)
  %98 = load %struct.rdma_counter*, %struct.rdma_counter** %9, align 8
  %99 = getelementptr inbounds %struct.rdma_counter, %struct.rdma_counter* %98, i32 0, i32 1
  %100 = load %struct.rdma_counter*, %struct.rdma_counter** %99, align 8
  %101 = call i32 @kfree(%struct.rdma_counter* %100)
  br label %102

102:                                              ; preds = %94, %52
  %103 = load %struct.rdma_counter*, %struct.rdma_counter** %9, align 8
  %104 = call i32 @kfree(%struct.rdma_counter* %103)
  store %struct.rdma_counter* null, %struct.rdma_counter** %4, align 8
  br label %105

105:                                              ; preds = %102, %75, %28, %22
  %106 = load %struct.rdma_counter*, %struct.rdma_counter** %4, align 8
  ret %struct.rdma_counter* %106
}

declare dso_local %struct.rdma_counter* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @__counter_set_mode(i32*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @kfree(%struct.rdma_counter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
