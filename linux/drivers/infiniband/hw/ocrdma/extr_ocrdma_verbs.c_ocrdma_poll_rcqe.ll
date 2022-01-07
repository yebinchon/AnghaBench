; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_poll_rcqe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_poll_rcqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_qp = type { i64 }
%struct.ocrdma_cqe = type { i32 }
%struct.ib_wc = type { i64 }

@IB_QPT_UD = common dso_local global i64 0, align 8
@IB_QPT_GSI = common dso_local global i64 0, align 8
@OCRDMA_CQE_UD_STATUS_MASK = common dso_local global i32 0, align 4
@OCRDMA_CQE_UD_STATUS_SHIFT = common dso_local global i32 0, align 4
@OCRDMA_CQE_STATUS_MASK = common dso_local global i32 0, align 4
@OCRDMA_CQE_STATUS_SHIFT = common dso_local global i32 0, align 4
@OCRDMA_CQE_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocrdma_qp*, %struct.ocrdma_cqe*, %struct.ib_wc*, i32*, i32*)* @ocrdma_poll_rcqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocrdma_poll_rcqe(%struct.ocrdma_qp* %0, %struct.ocrdma_cqe* %1, %struct.ib_wc* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.ocrdma_qp*, align 8
  %7 = alloca %struct.ocrdma_cqe*, align 8
  %8 = alloca %struct.ib_wc*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ocrdma_qp* %0, %struct.ocrdma_qp** %6, align 8
  store %struct.ocrdma_cqe* %1, %struct.ocrdma_cqe** %7, align 8
  store %struct.ib_wc* %2, %struct.ib_wc** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  store i32 0, i32* %12, align 4
  %13 = load %struct.ib_wc*, %struct.ib_wc** %8, align 8
  %14 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %13, i32 0, i32 0
  store i64 0, i64* %14, align 8
  %15 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %6, align 8
  %16 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @IB_QPT_UD, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %26, label %20

20:                                               ; preds = %5
  %21 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %6, align 8
  %22 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @IB_QPT_GSI, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %20, %5
  %27 = load %struct.ocrdma_cqe*, %struct.ocrdma_cqe** %7, align 8
  %28 = getelementptr inbounds %struct.ocrdma_cqe, %struct.ocrdma_cqe* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @le32_to_cpu(i32 %29)
  %31 = load i32, i32* @OCRDMA_CQE_UD_STATUS_MASK, align 4
  %32 = and i32 %30, %31
  %33 = load i32, i32* @OCRDMA_CQE_UD_STATUS_SHIFT, align 4
  %34 = ashr i32 %32, %33
  store i32 %34, i32* %11, align 4
  br label %44

35:                                               ; preds = %20
  %36 = load %struct.ocrdma_cqe*, %struct.ocrdma_cqe** %7, align 8
  %37 = getelementptr inbounds %struct.ocrdma_cqe, %struct.ocrdma_cqe* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @le32_to_cpu(i32 %38)
  %40 = load i32, i32* @OCRDMA_CQE_STATUS_MASK, align 4
  %41 = and i32 %39, %40
  %42 = load i32, i32* @OCRDMA_CQE_STATUS_SHIFT, align 4
  %43 = ashr i32 %41, %42
  store i32 %43, i32* %11, align 4
  br label %44

44:                                               ; preds = %35, %26
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* @OCRDMA_CQE_SUCCESS, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %44
  %49 = load i32*, i32** %9, align 8
  store i32 1, i32* %49, align 4
  %50 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %6, align 8
  %51 = load %struct.ocrdma_cqe*, %struct.ocrdma_cqe** %7, align 8
  %52 = load %struct.ib_wc*, %struct.ib_wc** %8, align 8
  %53 = call i32 @ocrdma_poll_success_rcqe(%struct.ocrdma_qp* %50, %struct.ocrdma_cqe* %51, %struct.ib_wc* %52)
  br label %62

54:                                               ; preds = %44
  %55 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %6, align 8
  %56 = load %struct.ocrdma_cqe*, %struct.ocrdma_cqe** %7, align 8
  %57 = load %struct.ib_wc*, %struct.ib_wc** %8, align 8
  %58 = load i32*, i32** %9, align 8
  %59 = load i32*, i32** %10, align 8
  %60 = load i32, i32* %11, align 4
  %61 = call i32 @ocrdma_poll_err_rcqe(%struct.ocrdma_qp* %55, %struct.ocrdma_cqe* %56, %struct.ib_wc* %57, i32* %58, i32* %59, i32 %60)
  store i32 %61, i32* %12, align 4
  br label %62

62:                                               ; preds = %54, %48
  %63 = load i32, i32* %12, align 4
  ret i32 %63
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @ocrdma_poll_success_rcqe(%struct.ocrdma_qp*, %struct.ocrdma_cqe*, %struct.ib_wc*) #1

declare dso_local i32 @ocrdma_poll_err_rcqe(%struct.ocrdma_qp*, %struct.ocrdma_cqe*, %struct.ib_wc*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
