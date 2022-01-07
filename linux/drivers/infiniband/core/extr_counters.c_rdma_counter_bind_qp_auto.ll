; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_counters.c_rdma_counter_bind_qp_auto.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_counters.c_rdma_counter_bind_qp_auto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { %struct.ib_device* }
%struct.ib_device = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.rdma_port_counter }
%struct.rdma_port_counter = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32 }
%struct.rdma_counter = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@RDMA_COUNTER_MODE_AUTO = common dso_local global i64 0, align 8
@counter_release = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rdma_counter_bind_qp_auto(%struct.ib_qp* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_qp*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.rdma_port_counter*, align 8
  %7 = alloca %struct.ib_device*, align 8
  %8 = alloca %struct.rdma_counter*, align 8
  %9 = alloca i32, align 4
  store %struct.ib_qp* %0, %struct.ib_qp** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.ib_qp*, %struct.ib_qp** %4, align 8
  %11 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %10, i32 0, i32 0
  %12 = load %struct.ib_device*, %struct.ib_device** %11, align 8
  store %struct.ib_device* %12, %struct.ib_device** %7, align 8
  %13 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %14 = load i64, i64* %5, align 8
  %15 = call i32 @rdma_is_port_valid(%struct.ib_device* %13, i64 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %85

20:                                               ; preds = %2
  %21 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %22 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = load i64, i64* %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  store %struct.rdma_port_counter* %26, %struct.rdma_port_counter** %6, align 8
  %27 = load %struct.rdma_port_counter*, %struct.rdma_port_counter** %6, align 8
  %28 = getelementptr inbounds %struct.rdma_port_counter, %struct.rdma_port_counter* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @RDMA_COUNTER_MODE_AUTO, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %85

34:                                               ; preds = %20
  %35 = load %struct.ib_qp*, %struct.ib_qp** %4, align 8
  %36 = load i64, i64* %5, align 8
  %37 = call %struct.rdma_counter* @rdma_get_counter_auto_mode(%struct.ib_qp* %35, i64 %36)
  store %struct.rdma_counter* %37, %struct.rdma_counter** %8, align 8
  %38 = load %struct.rdma_counter*, %struct.rdma_counter** %8, align 8
  %39 = icmp ne %struct.rdma_counter* %38, null
  br i1 %39, label %40, label %53

40:                                               ; preds = %34
  %41 = load %struct.rdma_counter*, %struct.rdma_counter** %8, align 8
  %42 = load %struct.ib_qp*, %struct.ib_qp** %4, align 8
  %43 = call i32 @__rdma_counter_bind_qp(%struct.rdma_counter* %41, %struct.ib_qp* %42)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %40
  %47 = load %struct.rdma_counter*, %struct.rdma_counter** %8, align 8
  %48 = getelementptr inbounds %struct.rdma_counter, %struct.rdma_counter* %47, i32 0, i32 0
  %49 = load i32, i32* @counter_release, align 4
  %50 = call i32 @kref_put(i32* %48, i32 %49)
  %51 = load i32, i32* %9, align 4
  store i32 %51, i32* %3, align 4
  br label %85

52:                                               ; preds = %40
  br label %84

53:                                               ; preds = %34
  %54 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %55 = load i64, i64* %5, align 8
  %56 = load i64, i64* @RDMA_COUNTER_MODE_AUTO, align 8
  %57 = call %struct.rdma_counter* @rdma_counter_alloc(%struct.ib_device* %54, i64 %55, i64 %56)
  store %struct.rdma_counter* %57, %struct.rdma_counter** %8, align 8
  %58 = load %struct.rdma_counter*, %struct.rdma_counter** %8, align 8
  %59 = icmp ne %struct.rdma_counter* %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %53
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %3, align 4
  br label %85

63:                                               ; preds = %53
  %64 = load %struct.rdma_counter*, %struct.rdma_counter** %8, align 8
  %65 = load %struct.ib_qp*, %struct.ib_qp** %4, align 8
  %66 = load %struct.rdma_port_counter*, %struct.rdma_port_counter** %6, align 8
  %67 = getelementptr inbounds %struct.rdma_port_counter, %struct.rdma_port_counter* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @auto_mode_init_counter(%struct.rdma_counter* %64, %struct.ib_qp* %65, i32 %69)
  %71 = load %struct.rdma_counter*, %struct.rdma_counter** %8, align 8
  %72 = load %struct.ib_qp*, %struct.ib_qp** %4, align 8
  %73 = call i32 @__rdma_counter_bind_qp(%struct.rdma_counter* %71, %struct.ib_qp* %72)
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %9, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %63
  %77 = load %struct.rdma_counter*, %struct.rdma_counter** %8, align 8
  %78 = call i32 @rdma_counter_free(%struct.rdma_counter* %77)
  %79 = load i32, i32* %9, align 4
  store i32 %79, i32* %3, align 4
  br label %85

80:                                               ; preds = %63
  %81 = load %struct.rdma_counter*, %struct.rdma_counter** %8, align 8
  %82 = load %struct.ib_qp*, %struct.ib_qp** %4, align 8
  %83 = call i32 @rdma_counter_res_add(%struct.rdma_counter* %81, %struct.ib_qp* %82)
  br label %84

84:                                               ; preds = %80, %52
  store i32 0, i32* %3, align 4
  br label %85

85:                                               ; preds = %84, %76, %60, %46, %33, %17
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i32 @rdma_is_port_valid(%struct.ib_device*, i64) #1

declare dso_local %struct.rdma_counter* @rdma_get_counter_auto_mode(%struct.ib_qp*, i64) #1

declare dso_local i32 @__rdma_counter_bind_qp(%struct.rdma_counter*, %struct.ib_qp*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local %struct.rdma_counter* @rdma_counter_alloc(%struct.ib_device*, i64, i64) #1

declare dso_local i32 @auto_mode_init_counter(%struct.rdma_counter*, %struct.ib_qp*, i32) #1

declare dso_local i32 @rdma_counter_free(%struct.rdma_counter*) #1

declare dso_local i32 @rdma_counter_res_add(%struct.rdma_counter*, %struct.ib_qp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
