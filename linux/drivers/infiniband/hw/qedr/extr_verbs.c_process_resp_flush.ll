; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_verbs.c_process_resp_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_verbs.c_process_resp_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedr_qp = type { %struct.TYPE_4__, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_4__ = type { i64, i64, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.qedr_cq = type { i32 }
%struct.ib_wc = type { i32*, i32, i64, i32, i64, i64, i32 }

@IB_WC_WR_FLUSH_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qedr_qp*, %struct.qedr_cq*, i32, %struct.ib_wc*, i64)* @process_resp_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_resp_flush(%struct.qedr_qp* %0, %struct.qedr_cq* %1, i32 %2, %struct.ib_wc* %3, i64 %4) #0 {
  %6 = alloca %struct.qedr_qp*, align 8
  %7 = alloca %struct.qedr_cq*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ib_wc*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.qedr_qp* %0, %struct.qedr_qp** %6, align 8
  store %struct.qedr_cq* %1, %struct.qedr_cq** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.ib_wc* %3, %struct.ib_wc** %9, align 8
  store i64 %4, i64* %10, align 8
  store i64 0, i64* %11, align 8
  br label %12

12:                                               ; preds = %79, %5
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %12
  %16 = load %struct.qedr_qp*, %struct.qedr_qp** %6, align 8
  %17 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* %10, align 8
  %21 = icmp ne i64 %19, %20
  br label %22

22:                                               ; preds = %15, %12
  %23 = phi i1 [ false, %12 ], [ %21, %15 ]
  br i1 %23, label %24, label %83

24:                                               ; preds = %22
  %25 = load i32, i32* @IB_WC_WR_FLUSH_ERR, align 4
  %26 = load %struct.ib_wc*, %struct.ib_wc** %9, align 8
  %27 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %26, i32 0, i32 6
  store i32 %25, i32* %27, align 8
  %28 = load %struct.ib_wc*, %struct.ib_wc** %9, align 8
  %29 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %28, i32 0, i32 5
  store i64 0, i64* %29, align 8
  %30 = load %struct.ib_wc*, %struct.ib_wc** %9, align 8
  %31 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %30, i32 0, i32 4
  store i64 0, i64* %31, align 8
  %32 = load %struct.qedr_qp*, %struct.qedr_qp** %6, align 8
  %33 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ib_wc*, %struct.ib_wc** %9, align 8
  %36 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 8
  %37 = load %struct.ib_wc*, %struct.ib_wc** %9, align 8
  %38 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %37, i32 0, i32 2
  store i64 0, i64* %38, align 8
  %39 = load %struct.qedr_qp*, %struct.qedr_qp** %6, align 8
  %40 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %39, i32 0, i32 1
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = load %struct.qedr_qp*, %struct.qedr_qp** %6, align 8
  %43 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.ib_wc*, %struct.ib_wc** %9, align 8
  %50 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 8
  %51 = load %struct.qedr_qp*, %struct.qedr_qp** %6, align 8
  %52 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %51, i32 0, i32 2
  %53 = load %struct.ib_wc*, %struct.ib_wc** %9, align 8
  %54 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %53, i32 0, i32 0
  store i32* %52, i32** %54, align 8
  %55 = load i32, i32* %8, align 4
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %8, align 4
  %57 = load %struct.ib_wc*, %struct.ib_wc** %9, align 8
  %58 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %57, i32 1
  store %struct.ib_wc* %58, %struct.ib_wc** %9, align 8
  %59 = load i64, i64* %11, align 8
  %60 = add nsw i64 %59, 1
  store i64 %60, i64* %11, align 8
  br label %61

61:                                               ; preds = %74, %24
  %62 = load %struct.qedr_qp*, %struct.qedr_qp** %6, align 8
  %63 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %62, i32 0, i32 1
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = load %struct.qedr_qp*, %struct.qedr_qp** %6, align 8
  %66 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %71, -1
  store i32 %72, i32* %70, align 4
  %73 = icmp ne i32 %71, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %61
  %75 = load %struct.qedr_qp*, %struct.qedr_qp** %6, align 8
  %76 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 2
  %78 = call i32 @qed_chain_consume(i32* %77)
  br label %61

79:                                               ; preds = %61
  %80 = load %struct.qedr_qp*, %struct.qedr_qp** %6, align 8
  %81 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %80, i32 0, i32 0
  %82 = call i32 @qedr_inc_sw_cons(%struct.TYPE_4__* %81)
  br label %12

83:                                               ; preds = %22
  %84 = load i64, i64* %11, align 8
  %85 = trunc i64 %84 to i32
  ret i32 %85
}

declare dso_local i32 @qed_chain_consume(i32*) #1

declare dso_local i32 @qedr_inc_sw_cons(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
