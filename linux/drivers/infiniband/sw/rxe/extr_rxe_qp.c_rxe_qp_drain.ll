; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_qp.c_rxe_qp_drain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_qp.c_rxe_qp_drain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxe_qp = type { %struct.TYPE_5__, %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i64 }

@QP_STATE_DRAINED = common dso_local global i64 0, align 8
@QP_STATE_DRAIN = common dso_local global i64 0, align 8
@IB_QPT_RC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rxe_qp*)* @rxe_qp_drain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rxe_qp_drain(%struct.rxe_qp* %0) #0 {
  %2 = alloca %struct.rxe_qp*, align 8
  store %struct.rxe_qp* %0, %struct.rxe_qp** %2, align 8
  %3 = load %struct.rxe_qp*, %struct.rxe_qp** %2, align 8
  %4 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %3, i32 0, i32 2
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %40

8:                                                ; preds = %1
  %9 = load %struct.rxe_qp*, %struct.rxe_qp** %2, align 8
  %10 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @QP_STATE_DRAINED, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %39

15:                                               ; preds = %8
  %16 = load i64, i64* @QP_STATE_DRAIN, align 8
  %17 = load %struct.rxe_qp*, %struct.rxe_qp** %2, align 8
  %18 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  store i64 %16, i64* %19, align 8
  %20 = load %struct.rxe_qp*, %struct.rxe_qp** %2, align 8
  %21 = call i64 @qp_type(%struct.rxe_qp* %20)
  %22 = load i64, i64* @IB_QPT_RC, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %15
  %25 = load %struct.rxe_qp*, %struct.rxe_qp** %2, align 8
  %26 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = call i32 @rxe_run_task(i32* %27, i32 1)
  br label %34

29:                                               ; preds = %15
  %30 = load %struct.rxe_qp*, %struct.rxe_qp** %2, align 8
  %31 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = call i32 @__rxe_do_task(i32* %32)
  br label %34

34:                                               ; preds = %29, %24
  %35 = load %struct.rxe_qp*, %struct.rxe_qp** %2, align 8
  %36 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = call i32 @rxe_run_task(i32* %37, i32 1)
  br label %39

39:                                               ; preds = %34, %8
  br label %40

40:                                               ; preds = %39, %1
  ret void
}

declare dso_local i64 @qp_type(%struct.rxe_qp*) #1

declare dso_local i32 @rxe_run_task(i32*, i32) #1

declare dso_local i32 @__rxe_do_task(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
