; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_verbs.c_rxe_poll_cq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_verbs.c_rxe_poll_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_cq = type { i32 }
%struct.ib_wc = type { i32 }
%struct.rxe_cq = type { i32, i32 }
%struct.rxe_cqe = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_cq*, i32, %struct.ib_wc*)* @rxe_poll_cq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rxe_poll_cq(%struct.ib_cq* %0, i32 %1, %struct.ib_wc* %2) #0 {
  %4 = alloca %struct.ib_cq*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_wc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.rxe_cq*, align 8
  %9 = alloca %struct.rxe_cqe*, align 8
  %10 = alloca i64, align 8
  store %struct.ib_cq* %0, %struct.ib_cq** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ib_wc* %2, %struct.ib_wc** %6, align 8
  %11 = load %struct.ib_cq*, %struct.ib_cq** %4, align 8
  %12 = call %struct.rxe_cq* @to_rcq(%struct.ib_cq* %11)
  store %struct.rxe_cq* %12, %struct.rxe_cq** %8, align 8
  %13 = load %struct.rxe_cq*, %struct.rxe_cq** %8, align 8
  %14 = getelementptr inbounds %struct.rxe_cq, %struct.rxe_cq* %13, i32 0, i32 0
  %15 = load i64, i64* %10, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %40, %3
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %43

21:                                               ; preds = %17
  %22 = load %struct.rxe_cq*, %struct.rxe_cq** %8, align 8
  %23 = getelementptr inbounds %struct.rxe_cq, %struct.rxe_cq* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.rxe_cqe* @queue_head(i32 %24)
  store %struct.rxe_cqe* %25, %struct.rxe_cqe** %9, align 8
  %26 = load %struct.rxe_cqe*, %struct.rxe_cqe** %9, align 8
  %27 = icmp ne %struct.rxe_cqe* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %21
  br label %43

29:                                               ; preds = %21
  %30 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %31 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %30, i32 1
  store %struct.ib_wc* %31, %struct.ib_wc** %6, align 8
  %32 = ptrtoint %struct.ib_wc* %30 to i32
  %33 = load %struct.rxe_cqe*, %struct.rxe_cqe** %9, align 8
  %34 = getelementptr inbounds %struct.rxe_cqe, %struct.rxe_cqe* %33, i32 0, i32 0
  %35 = call i32 @memcpy(i32 %32, i32* %34, i32 4)
  %36 = load %struct.rxe_cq*, %struct.rxe_cq** %8, align 8
  %37 = getelementptr inbounds %struct.rxe_cq, %struct.rxe_cq* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @advance_consumer(i32 %38)
  br label %40

40:                                               ; preds = %29
  %41 = load i32, i32* %7, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %7, align 4
  br label %17

43:                                               ; preds = %28, %17
  %44 = load %struct.rxe_cq*, %struct.rxe_cq** %8, align 8
  %45 = getelementptr inbounds %struct.rxe_cq, %struct.rxe_cq* %44, i32 0, i32 0
  %46 = load i64, i64* %10, align 8
  %47 = call i32 @spin_unlock_irqrestore(i32* %45, i64 %46)
  %48 = load i32, i32* %7, align 4
  ret i32 %48
}

declare dso_local %struct.rxe_cq* @to_rcq(%struct.ib_cq*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.rxe_cqe* @queue_head(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @advance_consumer(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
