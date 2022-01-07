; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_counters.c_rdma_counter_bind_qpn_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_counters.c_rdma_counter_bind_qpn_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.rdma_counter = type { i32 }
%struct.ib_qp = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@RDMA_COUNTER_MODE_MANUAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rdma_counter_bind_qpn_alloc(%struct.ib_device* %0, i64 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.rdma_counter*, align 8
  %11 = alloca %struct.ib_qp*, align 8
  %12 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %13 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %14 = load i64, i64* %7, align 8
  %15 = call i64 @rdma_is_port_valid(%struct.ib_device* %13, i64 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %99

20:                                               ; preds = %4
  %21 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %22 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = load i64, i64* %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %20
  %31 = load i32, i32* @EOPNOTSUPP, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %99

33:                                               ; preds = %20
  %34 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %35 = load i32, i32* %8, align 4
  %36 = call %struct.ib_qp* @rdma_counter_get_qp(%struct.ib_device* %34, i32 %35)
  store %struct.ib_qp* %36, %struct.ib_qp** %11, align 8
  %37 = load %struct.ib_qp*, %struct.ib_qp** %11, align 8
  %38 = icmp ne %struct.ib_qp* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %33
  %40 = load i32, i32* @ENOENT, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %99

42:                                               ; preds = %33
  %43 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %44 = load %struct.ib_qp*, %struct.ib_qp** %11, align 8
  %45 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i64 @rdma_is_port_valid(%struct.ib_device* %43, i64 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %42
  %50 = load %struct.ib_qp*, %struct.ib_qp** %11, align 8
  %51 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %7, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %12, align 4
  br label %94

58:                                               ; preds = %49, %42
  %59 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %60 = load i64, i64* %7, align 8
  %61 = load i32, i32* @RDMA_COUNTER_MODE_MANUAL, align 4
  %62 = call %struct.rdma_counter* @rdma_counter_alloc(%struct.ib_device* %59, i64 %60, i32 %61)
  store %struct.rdma_counter* %62, %struct.rdma_counter** %10, align 8
  %63 = load %struct.rdma_counter*, %struct.rdma_counter** %10, align 8
  %64 = icmp ne %struct.rdma_counter* %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %58
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %12, align 4
  br label %94

68:                                               ; preds = %58
  %69 = load %struct.rdma_counter*, %struct.rdma_counter** %10, align 8
  %70 = load %struct.ib_qp*, %struct.ib_qp** %11, align 8
  %71 = call i32 @rdma_counter_bind_qp_manual(%struct.rdma_counter* %69, %struct.ib_qp* %70)
  store i32 %71, i32* %12, align 4
  %72 = load i32, i32* %12, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %68
  br label %91

75:                                               ; preds = %68
  %76 = load i32*, i32** %9, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %78, label %83

78:                                               ; preds = %75
  %79 = load %struct.rdma_counter*, %struct.rdma_counter** %10, align 8
  %80 = getelementptr inbounds %struct.rdma_counter, %struct.rdma_counter* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32*, i32** %9, align 8
  store i32 %81, i32* %82, align 4
  br label %83

83:                                               ; preds = %78, %75
  %84 = load %struct.rdma_counter*, %struct.rdma_counter** %10, align 8
  %85 = load %struct.ib_qp*, %struct.ib_qp** %11, align 8
  %86 = call i32 @rdma_counter_res_add(%struct.rdma_counter* %84, %struct.ib_qp* %85)
  %87 = load %struct.ib_qp*, %struct.ib_qp** %11, align 8
  %88 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %87, i32 0, i32 1
  %89 = call i32 @rdma_restrack_put(i32* %88)
  %90 = load i32, i32* %12, align 4
  store i32 %90, i32* %5, align 4
  br label %99

91:                                               ; preds = %74
  %92 = load %struct.rdma_counter*, %struct.rdma_counter** %10, align 8
  %93 = call i32 @rdma_counter_free(%struct.rdma_counter* %92)
  br label %94

94:                                               ; preds = %91, %65, %55
  %95 = load %struct.ib_qp*, %struct.ib_qp** %11, align 8
  %96 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %95, i32 0, i32 1
  %97 = call i32 @rdma_restrack_put(i32* %96)
  %98 = load i32, i32* %12, align 4
  store i32 %98, i32* %5, align 4
  br label %99

99:                                               ; preds = %94, %83, %39, %30, %17
  %100 = load i32, i32* %5, align 4
  ret i32 %100
}

declare dso_local i64 @rdma_is_port_valid(%struct.ib_device*, i64) #1

declare dso_local %struct.ib_qp* @rdma_counter_get_qp(%struct.ib_device*, i32) #1

declare dso_local %struct.rdma_counter* @rdma_counter_alloc(%struct.ib_device*, i64, i32) #1

declare dso_local i32 @rdma_counter_bind_qp_manual(%struct.rdma_counter*, %struct.ib_qp*) #1

declare dso_local i32 @rdma_counter_res_add(%struct.rdma_counter*, %struct.ib_qp*) #1

declare dso_local i32 @rdma_restrack_put(i32*) #1

declare dso_local i32 @rdma_counter_free(%struct.rdma_counter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
