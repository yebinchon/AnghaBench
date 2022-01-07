; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_resp.c_do_class_d1e_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_resp.c_do_class_d1e_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxe_qp = type { %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { i32, i32, i32*, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64, i32, i32 }

@IB_WC_REM_INV_REQ_ERR = common dso_local global i32 0, align 4
@RESPST_COMPLETE = common dso_local global i32 0, align 4
@RESPST_CLEANUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rxe_qp*)* @do_class_d1e_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_class_d1e_error(%struct.rxe_qp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rxe_qp*, align 8
  store %struct.rxe_qp* %0, %struct.rxe_qp** %3, align 8
  %4 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %5 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %25

8:                                                ; preds = %1
  %9 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %10 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  store i32 1, i32* %11, align 8
  %12 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %13 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 3
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = icmp ne %struct.TYPE_5__* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %8
  %18 = load i32, i32* @IB_WC_REM_INV_REQ_ERR, align 4
  %19 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %20 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 4
  store i32 %18, i32* %21, align 8
  %22 = load i32, i32* @RESPST_COMPLETE, align 4
  store i32 %22, i32* %2, align 4
  br label %77

23:                                               ; preds = %8
  %24 = load i32, i32* @RESPST_CLEANUP, align 4
  store i32 %24, i32* %2, align 4
  br label %77

25:                                               ; preds = %1
  %26 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %27 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 3
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = icmp ne %struct.TYPE_5__* %29, null
  br i1 %30, label %31, label %60

31:                                               ; preds = %25
  %32 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %33 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 3
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %40 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 3
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 3
  store i32 %38, i32* %44, align 4
  %45 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %46 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 3
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  store i64 0, i64* %50, align 8
  %51 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %52 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 3
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  store i64 0, i64* %56, align 8
  %57 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %58 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  store i32 -1, i32* %59, align 4
  br label %60

60:                                               ; preds = %31, %25
  %61 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %62 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 2
  %64 = load i32*, i32** %63, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %75

66:                                               ; preds = %60
  %67 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %68 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 2
  %70 = load i32*, i32** %69, align 8
  %71 = call i32 @rxe_drop_ref(i32* %70)
  %72 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %73 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 2
  store i32* null, i32** %74, align 8
  br label %75

75:                                               ; preds = %66, %60
  %76 = load i32, i32* @RESPST_CLEANUP, align 4
  store i32 %76, i32* %2, align 4
  br label %77

77:                                               ; preds = %75, %23, %17
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i32 @rxe_drop_ref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
