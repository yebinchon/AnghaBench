; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_poll_err_rcqe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_poll_err_rcqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_qp = type { i64, i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ocrdma_cqe = type { i32 }
%struct.ib_wc = type { i32 }
%struct.ocrdma_dev = type { i32* }

@OCRDMA_MAX_CQE_ERR = common dso_local global i32 0, align 4
@OCRDMA_CQE_WR_FLUSH_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocrdma_qp*, %struct.ocrdma_cqe*, %struct.ib_wc*, i32*, i32*, i32)* @ocrdma_poll_err_rcqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocrdma_poll_err_rcqe(%struct.ocrdma_qp* %0, %struct.ocrdma_cqe* %1, %struct.ib_wc* %2, i32* %3, i32* %4, i32 %5) #0 {
  %7 = alloca %struct.ocrdma_qp*, align 8
  %8 = alloca %struct.ocrdma_cqe*, align 8
  %9 = alloca %struct.ib_wc*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ocrdma_dev*, align 8
  store %struct.ocrdma_qp* %0, %struct.ocrdma_qp** %7, align 8
  store %struct.ocrdma_cqe* %1, %struct.ocrdma_cqe** %8, align 8
  store %struct.ib_wc* %2, %struct.ib_wc** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %15 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %7, align 8
  %16 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.ocrdma_dev* @get_ocrdma_dev(i32 %18)
  store %struct.ocrdma_dev* %19, %struct.ocrdma_dev** %14, align 8
  %20 = load i32, i32* %12, align 4
  %21 = load i32, i32* @OCRDMA_MAX_CQE_ERR, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %6
  %24 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %14, align 8
  %25 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %12, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = call i32 @atomic_inc(i32* %29)
  br label %31

31:                                               ; preds = %23, %6
  %32 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %7, align 8
  %33 = call i64 @is_hw_rq_empty(%struct.ocrdma_qp* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %64

35:                                               ; preds = %31
  %36 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %7, align 8
  %37 = call i32 @is_hw_sq_empty(%struct.ocrdma_qp* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %64, label %39

39:                                               ; preds = %35
  %40 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %7, align 8
  %41 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %60, label %44

44:                                               ; preds = %39
  %45 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %7, align 8
  %46 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %7, align 8
  %49 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %47, %50
  br i1 %51, label %52, label %60

52:                                               ; preds = %44
  %53 = load i32*, i32** %10, align 8
  store i32 1, i32* %53, align 4
  %54 = load i32, i32* @OCRDMA_CQE_WR_FLUSH_ERR, align 4
  store i32 %54, i32* %12, align 4
  %55 = load %struct.ib_wc*, %struct.ib_wc** %9, align 8
  %56 = load %struct.ocrdma_cqe*, %struct.ocrdma_cqe** %8, align 8
  %57 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %7, align 8
  %58 = load i32, i32* %12, align 4
  %59 = call i32 @ocrdma_update_err_scqe(%struct.ib_wc* %55, %struct.ocrdma_cqe* %56, %struct.ocrdma_qp* %57, i32 %58)
  store i32 %59, i32* %13, align 4
  br label %63

60:                                               ; preds = %44, %39
  %61 = load i32*, i32** %10, align 8
  store i32 0, i32* %61, align 4
  %62 = load i32*, i32** %11, align 8
  store i32 1, i32* %62, align 4
  store i32 0, i32* %13, align 4
  br label %63

63:                                               ; preds = %60, %52
  br label %79

64:                                               ; preds = %35, %31
  %65 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %7, align 8
  %66 = call i64 @is_hw_rq_empty(%struct.ocrdma_qp* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %64
  store i32 0, i32* %13, align 4
  %69 = load i32*, i32** %10, align 8
  store i32 0, i32* %69, align 4
  %70 = load i32*, i32** %11, align 8
  store i32 0, i32* %70, align 4
  br label %78

71:                                               ; preds = %64
  %72 = load i32*, i32** %10, align 8
  store i32 1, i32* %72, align 4
  %73 = load %struct.ib_wc*, %struct.ib_wc** %9, align 8
  %74 = load %struct.ocrdma_cqe*, %struct.ocrdma_cqe** %8, align 8
  %75 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %7, align 8
  %76 = load i32, i32* %12, align 4
  %77 = call i32 @ocrdma_update_err_rcqe(%struct.ib_wc* %73, %struct.ocrdma_cqe* %74, %struct.ocrdma_qp* %75, i32 %76)
  store i32 %77, i32* %13, align 4
  br label %78

78:                                               ; preds = %71, %68
  br label %79

79:                                               ; preds = %78, %63
  %80 = load i32, i32* %13, align 4
  ret i32 %80
}

declare dso_local %struct.ocrdma_dev* @get_ocrdma_dev(i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i64 @is_hw_rq_empty(%struct.ocrdma_qp*) #1

declare dso_local i32 @is_hw_sq_empty(%struct.ocrdma_qp*) #1

declare dso_local i32 @ocrdma_update_err_scqe(%struct.ib_wc*, %struct.ocrdma_cqe*, %struct.ocrdma_qp*, i32) #1

declare dso_local i32 @ocrdma_update_err_rcqe(%struct.ib_wc*, %struct.ocrdma_cqe*, %struct.ocrdma_qp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
