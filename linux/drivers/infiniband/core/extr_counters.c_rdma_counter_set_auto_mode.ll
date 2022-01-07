; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_counters.c_rdma_counter_set_auto_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_counters.c_rdma_counter_set_auto_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.rdma_port_counter }
%struct.rdma_port_counter = type { i32, %struct.TYPE_4__, i64, i32 }
%struct.TYPE_4__ = type { i64 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@RDMA_COUNTER_MODE_AUTO = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@RDMA_COUNTER_MODE_MANUAL = common dso_local global i64 0, align 8
@RDMA_COUNTER_MODE_NONE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rdma_counter_set_auto_mode(%struct.ib_device* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.rdma_port_counter*, align 8
  %11 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %13 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = load i64, i64* %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store %struct.rdma_port_counter* %17, %struct.rdma_port_counter** %10, align 8
  %18 = load %struct.rdma_port_counter*, %struct.rdma_port_counter** %10, align 8
  %19 = getelementptr inbounds %struct.rdma_port_counter, %struct.rdma_port_counter* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %4
  %23 = load i32, i32* @EOPNOTSUPP, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %69

25:                                               ; preds = %4
  %26 = load %struct.rdma_port_counter*, %struct.rdma_port_counter** %10, align 8
  %27 = getelementptr inbounds %struct.rdma_port_counter, %struct.rdma_port_counter* %26, i32 0, i32 0
  %28 = call i32 @mutex_lock(i32* %27)
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %25
  %32 = load %struct.rdma_port_counter*, %struct.rdma_port_counter** %10, align 8
  %33 = getelementptr inbounds %struct.rdma_port_counter, %struct.rdma_port_counter* %32, i32 0, i32 1
  %34 = load i64, i64* @RDMA_COUNTER_MODE_AUTO, align 8
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @__counter_set_mode(%struct.TYPE_4__* %33, i64 %34, i32 %35)
  store i32 %36, i32* %11, align 4
  br label %63

37:                                               ; preds = %25
  %38 = load %struct.rdma_port_counter*, %struct.rdma_port_counter** %10, align 8
  %39 = getelementptr inbounds %struct.rdma_port_counter, %struct.rdma_port_counter* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @RDMA_COUNTER_MODE_AUTO, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %37
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %11, align 4
  br label %64

47:                                               ; preds = %37
  %48 = load %struct.rdma_port_counter*, %struct.rdma_port_counter** %10, align 8
  %49 = getelementptr inbounds %struct.rdma_port_counter, %struct.rdma_port_counter* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = load %struct.rdma_port_counter*, %struct.rdma_port_counter** %10, align 8
  %54 = getelementptr inbounds %struct.rdma_port_counter, %struct.rdma_port_counter* %53, i32 0, i32 1
  %55 = load i64, i64* @RDMA_COUNTER_MODE_MANUAL, align 8
  %56 = call i32 @__counter_set_mode(%struct.TYPE_4__* %54, i64 %55, i32 0)
  store i32 %56, i32* %11, align 4
  br label %62

57:                                               ; preds = %47
  %58 = load %struct.rdma_port_counter*, %struct.rdma_port_counter** %10, align 8
  %59 = getelementptr inbounds %struct.rdma_port_counter, %struct.rdma_port_counter* %58, i32 0, i32 1
  %60 = load i64, i64* @RDMA_COUNTER_MODE_NONE, align 8
  %61 = call i32 @__counter_set_mode(%struct.TYPE_4__* %59, i64 %60, i32 0)
  store i32 %61, i32* %11, align 4
  br label %62

62:                                               ; preds = %57, %52
  br label %63

63:                                               ; preds = %62, %31
  br label %64

64:                                               ; preds = %63, %44
  %65 = load %struct.rdma_port_counter*, %struct.rdma_port_counter** %10, align 8
  %66 = getelementptr inbounds %struct.rdma_port_counter, %struct.rdma_port_counter* %65, i32 0, i32 0
  %67 = call i32 @mutex_unlock(i32* %66)
  %68 = load i32, i32* %11, align 4
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %64, %22
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @__counter_set_mode(%struct.TYPE_4__*, i64, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
