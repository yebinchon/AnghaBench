; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_counters.c_rdma_counter_unbind_qpn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_counters.c_rdma_counter_unbind_qpn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.rdma_port_counter }
%struct.rdma_port_counter = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.ib_qp = type { i64, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@RDMA_COUNTER_MODE_MANUAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rdma_counter_unbind_qpn(%struct.ib_device* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.rdma_port_counter*, align 8
  %11 = alloca %struct.ib_qp*, align 8
  %12 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %14 = load i64, i64* %7, align 8
  %15 = call i64 @rdma_is_port_valid(%struct.ib_device* %13, i64 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %82

20:                                               ; preds = %4
  %21 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %22 = load i64, i64* %8, align 8
  %23 = call %struct.ib_qp* @rdma_counter_get_qp(%struct.ib_device* %21, i64 %22)
  store %struct.ib_qp* %23, %struct.ib_qp** %11, align 8
  %24 = load %struct.ib_qp*, %struct.ib_qp** %11, align 8
  %25 = icmp ne %struct.ib_qp* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %20
  %27 = load i32, i32* @ENOENT, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %82

29:                                               ; preds = %20
  %30 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %31 = load %struct.ib_qp*, %struct.ib_qp** %11, align 8
  %32 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i64 @rdma_is_port_valid(%struct.ib_device* %30, i64 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %29
  %37 = load %struct.ib_qp*, %struct.ib_qp** %11, align 8
  %38 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %7, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %12, align 4
  br label %77

45:                                               ; preds = %36, %29
  %46 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %47 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = load i64, i64* %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  store %struct.rdma_port_counter* %51, %struct.rdma_port_counter** %10, align 8
  %52 = load %struct.ib_qp*, %struct.ib_qp** %11, align 8
  %53 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %52, i32 0, i32 2
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = icmp ne %struct.TYPE_5__* %54, null
  br i1 %55, label %56, label %71

56:                                               ; preds = %45
  %57 = load %struct.ib_qp*, %struct.ib_qp** %11, align 8
  %58 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %57, i32 0, i32 2
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* %9, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %71, label %64

64:                                               ; preds = %56
  %65 = load %struct.rdma_port_counter*, %struct.rdma_port_counter** %10, align 8
  %66 = getelementptr inbounds %struct.rdma_port_counter, %struct.rdma_port_counter* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @RDMA_COUNTER_MODE_MANUAL, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %64, %56, %45
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %12, align 4
  br label %77

74:                                               ; preds = %64
  %75 = load %struct.ib_qp*, %struct.ib_qp** %11, align 8
  %76 = call i32 @rdma_counter_unbind_qp(%struct.ib_qp* %75, i32 0)
  store i32 %76, i32* %12, align 4
  br label %77

77:                                               ; preds = %74, %71, %42
  %78 = load %struct.ib_qp*, %struct.ib_qp** %11, align 8
  %79 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %78, i32 0, i32 1
  %80 = call i32 @rdma_restrack_put(i32* %79)
  %81 = load i32, i32* %12, align 4
  store i32 %81, i32* %5, align 4
  br label %82

82:                                               ; preds = %77, %26, %17
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

declare dso_local i64 @rdma_is_port_valid(%struct.ib_device*, i64) #1

declare dso_local %struct.ib_qp* @rdma_counter_get_qp(%struct.ib_device*, i64) #1

declare dso_local i32 @rdma_counter_unbind_qp(%struct.ib_qp*, i32) #1

declare dso_local i32 @rdma_restrack_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
