; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_qp.c_hfi1_setup_wqe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_qp.c_hfi1_setup_wqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvt_qp = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.rvt_swqe = type { i32 }
%struct.hfi1_ibport = type { i32* }
%struct.rvt_ah = type { i32, i32 }
%struct.hfi1_pportdata = type { i32 }
%struct.hfi1_devdata = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@piothreshold = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hfi1_setup_wqe(%struct.rvt_qp* %0, %struct.rvt_swqe* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rvt_qp*, align 8
  %6 = alloca %struct.rvt_swqe*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.hfi1_ibport*, align 8
  %9 = alloca %struct.rvt_ah*, align 8
  %10 = alloca %struct.hfi1_pportdata*, align 8
  %11 = alloca %struct.hfi1_devdata*, align 8
  store %struct.rvt_qp* %0, %struct.rvt_qp** %5, align 8
  store %struct.rvt_swqe* %1, %struct.rvt_swqe** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %13 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %17 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.hfi1_ibport* @to_iport(i32 %15, i32 %18)
  store %struct.hfi1_ibport* %19, %struct.hfi1_ibport** %8, align 8
  %20 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %21 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %94 [
    i32 131, label %24
    i32 129, label %28
    i32 130, label %47
    i32 132, label %66
    i32 128, label %66
  ]

24:                                               ; preds = %3
  %25 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %26 = load %struct.rvt_swqe*, %struct.rvt_swqe** %6, align 8
  %27 = call i32 @hfi1_setup_tid_rdma_wqe(%struct.rvt_qp* %25, %struct.rvt_swqe* %26)
  br label %28

28:                                               ; preds = %3, %24
  %29 = load %struct.rvt_swqe*, %struct.rvt_swqe** %6, align 8
  %30 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ugt i32 %31, -2147483648
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %105

36:                                               ; preds = %28
  %37 = load %struct.rvt_swqe*, %struct.rvt_swqe** %6, align 8
  %38 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %41 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp sgt i32 %39, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %36
  %45 = load i32*, i32** %7, align 8
  store i32 0, i32* %45, align 4
  br label %46

46:                                               ; preds = %44, %36
  br label %95

47:                                               ; preds = %3
  %48 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %8, align 8
  %49 = call %struct.hfi1_pportdata* @ppd_from_ibp(%struct.hfi1_ibport* %48)
  store %struct.hfi1_pportdata* %49, %struct.hfi1_pportdata** %10, align 8
  %50 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %10, align 8
  %51 = call %struct.hfi1_devdata* @dd_from_ppd(%struct.hfi1_pportdata* %50)
  store %struct.hfi1_devdata* %51, %struct.hfi1_devdata** %11, align 8
  %52 = load %struct.rvt_swqe*, %struct.rvt_swqe** %6, align 8
  %53 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %11, align 8
  %56 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %55, i32 0, i32 0
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i64 15
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp sgt i32 %54, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %47
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %4, align 4
  br label %105

65:                                               ; preds = %47
  br label %95

66:                                               ; preds = %3, %3
  %67 = load %struct.rvt_swqe*, %struct.rvt_swqe** %6, align 8
  %68 = call %struct.rvt_ah* @rvt_get_swqe_ah(%struct.rvt_swqe* %67)
  store %struct.rvt_ah* %68, %struct.rvt_ah** %9, align 8
  %69 = load %struct.rvt_swqe*, %struct.rvt_swqe** %6, align 8
  %70 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.rvt_ah*, %struct.rvt_ah** %9, align 8
  %73 = getelementptr inbounds %struct.rvt_ah, %struct.rvt_ah* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = shl i32 1, %74
  %76 = icmp sgt i32 %71, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %66
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %4, align 4
  br label %105

80:                                               ; preds = %66
  %81 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %8, align 8
  %82 = getelementptr inbounds %struct.hfi1_ibport, %struct.hfi1_ibport* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = load %struct.rvt_ah*, %struct.rvt_ah** %9, align 8
  %85 = getelementptr inbounds %struct.rvt_ah, %struct.rvt_ah* %84, i32 0, i32 1
  %86 = call i64 @rdma_ah_get_sl(i32* %85)
  %87 = getelementptr inbounds i32, i32* %83, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = icmp eq i32 %88, 15
  br i1 %89, label %90, label %93

90:                                               ; preds = %80
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %4, align 4
  br label %105

93:                                               ; preds = %80
  br label %94

94:                                               ; preds = %3, %93
  br label %95

95:                                               ; preds = %94, %65, %46
  %96 = load %struct.rvt_swqe*, %struct.rvt_swqe** %6, align 8
  %97 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = sext i32 %98 to i64
  %100 = load i64, i64* @piothreshold, align 8
  %101 = icmp sle i64 %99, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %95
  %103 = load i32*, i32** %7, align 8
  store i32 1, i32* %103, align 4
  br label %104

104:                                              ; preds = %102, %95
  store i32 0, i32* %4, align 4
  br label %105

105:                                              ; preds = %104, %90, %77, %62, %33
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

declare dso_local %struct.hfi1_ibport* @to_iport(i32, i32) #1

declare dso_local i32 @hfi1_setup_tid_rdma_wqe(%struct.rvt_qp*, %struct.rvt_swqe*) #1

declare dso_local %struct.hfi1_pportdata* @ppd_from_ibp(%struct.hfi1_ibport*) #1

declare dso_local %struct.hfi1_devdata* @dd_from_ppd(%struct.hfi1_pportdata*) #1

declare dso_local %struct.rvt_ah* @rvt_get_swqe_ah(%struct.rvt_swqe*) #1

declare dso_local i64 @rdma_ah_get_sl(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
