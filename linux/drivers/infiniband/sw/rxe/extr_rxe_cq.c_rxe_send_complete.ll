; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_cq.c_rxe_send_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_cq.c_rxe_send_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxe_cq = type { %struct.TYPE_2__, i32, i64 }
%struct.TYPE_2__ = type { i32, i32 (%struct.TYPE_2__*, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @rxe_send_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rxe_send_complete(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.rxe_cq*, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = inttoptr i64 %5 to %struct.rxe_cq*
  store %struct.rxe_cq* %6, %struct.rxe_cq** %3, align 8
  %7 = load %struct.rxe_cq*, %struct.rxe_cq** %3, align 8
  %8 = getelementptr inbounds %struct.rxe_cq, %struct.rxe_cq* %7, i32 0, i32 1
  %9 = load i64, i64* %4, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.rxe_cq*, %struct.rxe_cq** %3, align 8
  %12 = getelementptr inbounds %struct.rxe_cq, %struct.rxe_cq* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.rxe_cq*, %struct.rxe_cq** %3, align 8
  %17 = getelementptr inbounds %struct.rxe_cq, %struct.rxe_cq* %16, i32 0, i32 1
  %18 = load i64, i64* %4, align 8
  %19 = call i32 @spin_unlock_irqrestore(i32* %17, i64 %18)
  br label %36

20:                                               ; preds = %1
  %21 = load %struct.rxe_cq*, %struct.rxe_cq** %3, align 8
  %22 = getelementptr inbounds %struct.rxe_cq, %struct.rxe_cq* %21, i32 0, i32 1
  %23 = load i64, i64* %4, align 8
  %24 = call i32 @spin_unlock_irqrestore(i32* %22, i64 %23)
  %25 = load %struct.rxe_cq*, %struct.rxe_cq** %3, align 8
  %26 = getelementptr inbounds %struct.rxe_cq, %struct.rxe_cq* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32 (%struct.TYPE_2__*, i32)*, i32 (%struct.TYPE_2__*, i32)** %27, align 8
  %29 = load %struct.rxe_cq*, %struct.rxe_cq** %3, align 8
  %30 = getelementptr inbounds %struct.rxe_cq, %struct.rxe_cq* %29, i32 0, i32 0
  %31 = load %struct.rxe_cq*, %struct.rxe_cq** %3, align 8
  %32 = getelementptr inbounds %struct.rxe_cq, %struct.rxe_cq* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 %28(%struct.TYPE_2__* %30, i32 %34)
  br label %36

36:                                               ; preds = %20, %15
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
