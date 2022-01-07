; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_verbs.c_hfi1_cnp_rcv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_verbs.c_hfi1_cnp_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_packet = type { i32, %struct.rvt_qp*, %struct.ib_header*, i32 }
%struct.rvt_qp = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.ib_header = type { i32 }
%struct.hfi1_ibport = type { i64*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.hfi1_pportdata = type { i32 }

@IB_CC_SVCTYPE_UC = common dso_local global i64 0, align 8
@IB_CC_SVCTYPE_RC = common dso_local global i64 0, align 8
@IB_CC_SVCTYPE_UD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hfi1_cnp_rcv(%struct.hfi1_packet* %0) #0 {
  %2 = alloca %struct.hfi1_packet*, align 8
  %3 = alloca %struct.hfi1_ibport*, align 8
  %4 = alloca %struct.hfi1_pportdata*, align 8
  %5 = alloca %struct.ib_header*, align 8
  %6 = alloca %struct.rvt_qp*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.hfi1_packet* %0, %struct.hfi1_packet** %2, align 8
  %13 = load %struct.hfi1_packet*, %struct.hfi1_packet** %2, align 8
  %14 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.hfi1_ibport* @rcd_to_iport(i32 %15)
  store %struct.hfi1_ibport* %16, %struct.hfi1_ibport** %3, align 8
  %17 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %3, align 8
  %18 = call %struct.hfi1_pportdata* @ppd_from_ibp(%struct.hfi1_ibport* %17)
  store %struct.hfi1_pportdata* %18, %struct.hfi1_pportdata** %4, align 8
  %19 = load %struct.hfi1_packet*, %struct.hfi1_packet** %2, align 8
  %20 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %19, i32 0, i32 2
  %21 = load %struct.ib_header*, %struct.ib_header** %20, align 8
  store %struct.ib_header* %21, %struct.ib_header** %5, align 8
  %22 = load %struct.hfi1_packet*, %struct.hfi1_packet** %2, align 8
  %23 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %22, i32 0, i32 1
  %24 = load %struct.rvt_qp*, %struct.rvt_qp** %23, align 8
  store %struct.rvt_qp* %24, %struct.rvt_qp** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %25 = load %struct.hfi1_packet*, %struct.hfi1_packet** %2, align 8
  %26 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %25, i32 0, i32 1
  %27 = load %struct.rvt_qp*, %struct.rvt_qp** %26, align 8
  %28 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  switch i32 %30, label %49 [
    i32 129, label %31
    i32 131, label %39
    i32 130, label %47
    i32 132, label %47
    i32 128, label %47
  ]

31:                                               ; preds = %1
  %32 = load %struct.rvt_qp*, %struct.rvt_qp** %6, align 8
  %33 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %32, i32 0, i32 2
  %34 = call i32 @rdma_ah_get_dlid(i32* %33)
  store i32 %34, i32* %9, align 4
  %35 = load %struct.rvt_qp*, %struct.rvt_qp** %6, align 8
  %36 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %8, align 4
  %38 = load i64, i64* @IB_CC_SVCTYPE_UC, align 8
  store i64 %38, i64* %12, align 8
  br label %55

39:                                               ; preds = %1
  %40 = load %struct.rvt_qp*, %struct.rvt_qp** %6, align 8
  %41 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %40, i32 0, i32 2
  %42 = call i32 @rdma_ah_get_dlid(i32* %41)
  store i32 %42, i32* %9, align 4
  %43 = load %struct.rvt_qp*, %struct.rvt_qp** %6, align 8
  %44 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %8, align 4
  %46 = load i64, i64* @IB_CC_SVCTYPE_RC, align 8
  store i64 %46, i64* %12, align 8
  br label %55

47:                                               ; preds = %1, %1, %1
  %48 = load i64, i64* @IB_CC_SVCTYPE_UD, align 8
  store i64 %48, i64* %12, align 8
  br label %55

49:                                               ; preds = %1
  %50 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %3, align 8
  %51 = getelementptr inbounds %struct.hfi1_ibport, %struct.hfi1_ibport* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 8
  br label %78

55:                                               ; preds = %47, %39, %31
  %56 = load %struct.ib_header*, %struct.ib_header** %5, align 8
  %57 = load %struct.hfi1_packet*, %struct.hfi1_packet** %2, align 8
  %58 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i64 @hfi1_9B_get_sc5(%struct.ib_header* %56, i32 %59)
  store i64 %60, i64* %11, align 8
  %61 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %3, align 8
  %62 = getelementptr inbounds %struct.hfi1_ibport, %struct.hfi1_ibport* %61, i32 0, i32 0
  %63 = load i64*, i64** %62, align 8
  %64 = load i64, i64* %11, align 8
  %65 = getelementptr inbounds i64, i64* %63, i64 %64
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* %10, align 8
  %67 = load %struct.rvt_qp*, %struct.rvt_qp** %6, align 8
  %68 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %7, align 4
  %71 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %4, align 8
  %72 = load i64, i64* %10, align 8
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* %8, align 4
  %76 = load i64, i64* %12, align 8
  %77 = call i32 @process_becn(%struct.hfi1_pportdata* %71, i64 %72, i32 %73, i32 %74, i32 %75, i64 %76)
  br label %78

78:                                               ; preds = %55, %49
  ret void
}

declare dso_local %struct.hfi1_ibport* @rcd_to_iport(i32) #1

declare dso_local %struct.hfi1_pportdata* @ppd_from_ibp(%struct.hfi1_ibport*) #1

declare dso_local i32 @rdma_ah_get_dlid(i32*) #1

declare dso_local i64 @hfi1_9B_get_sc5(%struct.ib_header*, i32) #1

declare dso_local i32 @process_becn(%struct.hfi1_pportdata*, i64, i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
