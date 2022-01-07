; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_counters.c_rdma_counter_bind_qpn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_counters.c_rdma_counter_bind_qpn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.rdma_counter = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.ib_qp = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@ENOENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@counter_release = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rdma_counter_bind_qpn(%struct.ib_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.rdma_counter*, align 8
  %11 = alloca %struct.ib_qp*, align 8
  %12 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %14 = load i32, i32* %8, align 4
  %15 = call %struct.ib_qp* @rdma_counter_get_qp(%struct.ib_device* %13, i32 %14)
  store %struct.ib_qp* %15, %struct.ib_qp** %11, align 8
  %16 = load %struct.ib_qp*, %struct.ib_qp** %11, align 8
  %17 = icmp ne %struct.ib_qp* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @ENOENT, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %64

21:                                               ; preds = %4
  %22 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %23 = load i32, i32* %9, align 4
  %24 = call %struct.rdma_counter* @rdma_get_counter_by_id(%struct.ib_device* %22, i32 %23)
  store %struct.rdma_counter* %24, %struct.rdma_counter** %10, align 8
  %25 = load %struct.rdma_counter*, %struct.rdma_counter** %10, align 8
  %26 = icmp ne %struct.rdma_counter* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %21
  %28 = load i32, i32* @ENOENT, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %12, align 4
  br label %59

30:                                               ; preds = %21
  %31 = load %struct.rdma_counter*, %struct.rdma_counter** %10, align 8
  %32 = getelementptr inbounds %struct.rdma_counter, %struct.rdma_counter* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.ib_qp*, %struct.ib_qp** %11, align 8
  %36 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %34, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %30
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %12, align 4
  br label %54

43:                                               ; preds = %30
  %44 = load %struct.rdma_counter*, %struct.rdma_counter** %10, align 8
  %45 = load %struct.ib_qp*, %struct.ib_qp** %11, align 8
  %46 = call i32 @rdma_counter_bind_qp_manual(%struct.rdma_counter* %44, %struct.ib_qp* %45)
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %12, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  br label %54

50:                                               ; preds = %43
  %51 = load %struct.ib_qp*, %struct.ib_qp** %11, align 8
  %52 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %51, i32 0, i32 0
  %53 = call i32 @rdma_restrack_put(%struct.TYPE_4__* %52)
  store i32 0, i32* %5, align 4
  br label %64

54:                                               ; preds = %49, %40
  %55 = load %struct.rdma_counter*, %struct.rdma_counter** %10, align 8
  %56 = getelementptr inbounds %struct.rdma_counter, %struct.rdma_counter* %55, i32 0, i32 0
  %57 = load i32, i32* @counter_release, align 4
  %58 = call i32 @kref_put(i32* %56, i32 %57)
  br label %59

59:                                               ; preds = %54, %27
  %60 = load %struct.ib_qp*, %struct.ib_qp** %11, align 8
  %61 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %60, i32 0, i32 0
  %62 = call i32 @rdma_restrack_put(%struct.TYPE_4__* %61)
  %63 = load i32, i32* %12, align 4
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %59, %50, %18
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local %struct.ib_qp* @rdma_counter_get_qp(%struct.ib_device*, i32) #1

declare dso_local %struct.rdma_counter* @rdma_get_counter_by_id(%struct.ib_device*, i32) #1

declare dso_local i32 @rdma_counter_bind_qp_manual(%struct.rdma_counter*, %struct.ib_qp*) #1

declare dso_local i32 @rdma_restrack_put(%struct.TYPE_4__*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
