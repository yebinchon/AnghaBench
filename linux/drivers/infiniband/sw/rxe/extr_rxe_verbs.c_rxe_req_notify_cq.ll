; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_verbs.c_rxe_req_notify_cq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_verbs.c_rxe_req_notify_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_cq = type { i32 }
%struct.rxe_cq = type { i32, i32, i32 }

@IB_CQ_NEXT_COMP = common dso_local global i32 0, align 4
@IB_CQ_SOLICITED_MASK = common dso_local global i32 0, align 4
@IB_CQ_REPORT_MISSED_EVENTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_cq*, i32)* @rxe_req_notify_cq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rxe_req_notify_cq(%struct.ib_cq* %0, i32 %1) #0 {
  %3 = alloca %struct.ib_cq*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rxe_cq*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.ib_cq* %0, %struct.ib_cq** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.ib_cq*, %struct.ib_cq** %3, align 8
  %9 = call %struct.rxe_cq* @to_rcq(%struct.ib_cq* %8)
  store %struct.rxe_cq* %9, %struct.rxe_cq** %5, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.rxe_cq*, %struct.rxe_cq** %5, align 8
  %11 = getelementptr inbounds %struct.rxe_cq, %struct.rxe_cq* %10, i32 0, i32 1
  %12 = load i64, i64* %6, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.rxe_cq*, %struct.rxe_cq** %5, align 8
  %15 = getelementptr inbounds %struct.rxe_cq, %struct.rxe_cq* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @IB_CQ_NEXT_COMP, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %2
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @IB_CQ_SOLICITED_MASK, align 4
  %22 = and i32 %20, %21
  %23 = load %struct.rxe_cq*, %struct.rxe_cq** %5, align 8
  %24 = getelementptr inbounds %struct.rxe_cq, %struct.rxe_cq* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  br label %25

25:                                               ; preds = %19, %2
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @IB_CQ_REPORT_MISSED_EVENTS, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %25
  %31 = load %struct.rxe_cq*, %struct.rxe_cq** %5, align 8
  %32 = getelementptr inbounds %struct.rxe_cq, %struct.rxe_cq* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @queue_empty(i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %30
  store i32 1, i32* %7, align 4
  br label %37

37:                                               ; preds = %36, %30, %25
  %38 = load %struct.rxe_cq*, %struct.rxe_cq** %5, align 8
  %39 = getelementptr inbounds %struct.rxe_cq, %struct.rxe_cq* %38, i32 0, i32 1
  %40 = load i64, i64* %6, align 8
  %41 = call i32 @spin_unlock_irqrestore(i32* %39, i64 %40)
  %42 = load i32, i32* %7, align 4
  ret i32 %42
}

declare dso_local %struct.rxe_cq* @to_rcq(%struct.ib_cq*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @queue_empty(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
