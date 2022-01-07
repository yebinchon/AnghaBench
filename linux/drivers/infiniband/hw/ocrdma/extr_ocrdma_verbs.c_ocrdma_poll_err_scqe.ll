; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_poll_err_scqe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_poll_err_scqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_qp = type { i64, i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ocrdma_cqe = type { i32 }
%struct.ib_wc = type { i32 }
%struct.ocrdma_dev = type { i32* }

@OCRDMA_CQE_STATUS_MASK = common dso_local global i32 0, align 4
@OCRDMA_CQE_STATUS_SHIFT = common dso_local global i32 0, align 4
@OCRDMA_MAX_CQE_ERR = common dso_local global i32 0, align 4
@OCRDMA_CQE_WR_FLUSH_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocrdma_qp*, %struct.ocrdma_cqe*, %struct.ib_wc*, i32*, i32*)* @ocrdma_poll_err_scqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocrdma_poll_err_scqe(%struct.ocrdma_qp* %0, %struct.ocrdma_cqe* %1, %struct.ib_wc* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.ocrdma_qp*, align 8
  %7 = alloca %struct.ocrdma_cqe*, align 8
  %8 = alloca %struct.ib_wc*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ocrdma_dev*, align 8
  %13 = alloca i32, align 4
  store %struct.ocrdma_qp* %0, %struct.ocrdma_qp** %6, align 8
  store %struct.ocrdma_cqe* %1, %struct.ocrdma_cqe** %7, align 8
  store %struct.ib_wc* %2, %struct.ib_wc** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %14 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %6, align 8
  %15 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.ocrdma_dev* @get_ocrdma_dev(i32 %17)
  store %struct.ocrdma_dev* %18, %struct.ocrdma_dev** %12, align 8
  %19 = load %struct.ocrdma_cqe*, %struct.ocrdma_cqe** %7, align 8
  %20 = getelementptr inbounds %struct.ocrdma_cqe, %struct.ocrdma_cqe* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @le32_to_cpu(i32 %21)
  %23 = load i32, i32* @OCRDMA_CQE_STATUS_MASK, align 4
  %24 = and i32 %22, %23
  %25 = load i32, i32* @OCRDMA_CQE_STATUS_SHIFT, align 4
  %26 = ashr i32 %24, %25
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %13, align 4
  %28 = load i32, i32* @OCRDMA_MAX_CQE_ERR, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %5
  %31 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %12, align 8
  %32 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %13, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = call i32 @atomic_inc(i32* %36)
  br label %38

38:                                               ; preds = %30, %5
  %39 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %6, align 8
  %40 = call i64 @is_hw_sq_empty(%struct.ocrdma_qp* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %71

42:                                               ; preds = %38
  %43 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %6, align 8
  %44 = call i32 @is_hw_rq_empty(%struct.ocrdma_qp* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %71, label %46

46:                                               ; preds = %42
  %47 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %6, align 8
  %48 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %67, label %51

51:                                               ; preds = %46
  %52 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %6, align 8
  %53 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %6, align 8
  %56 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %54, %57
  br i1 %58, label %59, label %67

59:                                               ; preds = %51
  %60 = load i32*, i32** %9, align 8
  store i32 1, i32* %60, align 4
  %61 = load i32, i32* @OCRDMA_CQE_WR_FLUSH_ERR, align 4
  store i32 %61, i32* %13, align 4
  %62 = load %struct.ib_wc*, %struct.ib_wc** %8, align 8
  %63 = load %struct.ocrdma_cqe*, %struct.ocrdma_cqe** %7, align 8
  %64 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %6, align 8
  %65 = load i32, i32* %13, align 4
  %66 = call i32 @ocrdma_update_err_rcqe(%struct.ib_wc* %62, %struct.ocrdma_cqe* %63, %struct.ocrdma_qp* %64, i32 %65)
  store i32 %66, i32* %11, align 4
  br label %70

67:                                               ; preds = %51, %46
  %68 = load i32*, i32** %9, align 8
  store i32 0, i32* %68, align 4
  %69 = load i32*, i32** %10, align 8
  store i32 1, i32* %69, align 4
  store i32 0, i32* %11, align 4
  br label %70

70:                                               ; preds = %67, %59
  br label %86

71:                                               ; preds = %42, %38
  %72 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %6, align 8
  %73 = call i64 @is_hw_sq_empty(%struct.ocrdma_qp* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %71
  store i32 0, i32* %11, align 4
  %76 = load i32*, i32** %9, align 8
  store i32 0, i32* %76, align 4
  %77 = load i32*, i32** %10, align 8
  store i32 0, i32* %77, align 4
  br label %85

78:                                               ; preds = %71
  %79 = load i32*, i32** %9, align 8
  store i32 1, i32* %79, align 4
  %80 = load %struct.ib_wc*, %struct.ib_wc** %8, align 8
  %81 = load %struct.ocrdma_cqe*, %struct.ocrdma_cqe** %7, align 8
  %82 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %6, align 8
  %83 = load i32, i32* %13, align 4
  %84 = call i32 @ocrdma_update_err_scqe(%struct.ib_wc* %80, %struct.ocrdma_cqe* %81, %struct.ocrdma_qp* %82, i32 %83)
  store i32 %84, i32* %11, align 4
  br label %85

85:                                               ; preds = %78, %75
  br label %86

86:                                               ; preds = %85, %70
  %87 = load i32, i32* %11, align 4
  ret i32 %87
}

declare dso_local %struct.ocrdma_dev* @get_ocrdma_dev(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i64 @is_hw_sq_empty(%struct.ocrdma_qp*) #1

declare dso_local i32 @is_hw_rq_empty(%struct.ocrdma_qp*) #1

declare dso_local i32 @ocrdma_update_err_rcqe(%struct.ib_wc*, %struct.ocrdma_cqe*, %struct.ocrdma_qp*, i32) #1

declare dso_local i32 @ocrdma_update_err_scqe(%struct.ib_wc*, %struct.ocrdma_cqe*, %struct.ocrdma_qp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
