; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_verbs.c_rxe_post_srq_recv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_verbs.c_rxe_post_srq_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_srq = type { i32 }
%struct.ib_recv_wr = type { %struct.ib_recv_wr* }
%struct.rxe_srq = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_srq*, %struct.ib_recv_wr*, %struct.ib_recv_wr**)* @rxe_post_srq_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rxe_post_srq_recv(%struct.ib_srq* %0, %struct.ib_recv_wr* %1, %struct.ib_recv_wr** %2) #0 {
  %4 = alloca %struct.ib_srq*, align 8
  %5 = alloca %struct.ib_recv_wr*, align 8
  %6 = alloca %struct.ib_recv_wr**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.rxe_srq*, align 8
  store %struct.ib_srq* %0, %struct.ib_srq** %4, align 8
  store %struct.ib_recv_wr* %1, %struct.ib_recv_wr** %5, align 8
  store %struct.ib_recv_wr** %2, %struct.ib_recv_wr*** %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.ib_srq*, %struct.ib_srq** %4, align 8
  %11 = call %struct.rxe_srq* @to_rsrq(%struct.ib_srq* %10)
  store %struct.rxe_srq* %11, %struct.rxe_srq** %9, align 8
  %12 = load %struct.rxe_srq*, %struct.rxe_srq** %9, align 8
  %13 = getelementptr inbounds %struct.rxe_srq, %struct.rxe_srq* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %8, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  br label %17

17:                                               ; preds = %29, %3
  %18 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %19 = icmp ne %struct.ib_recv_wr* %18, null
  br i1 %19, label %20, label %33

20:                                               ; preds = %17
  %21 = load %struct.rxe_srq*, %struct.rxe_srq** %9, align 8
  %22 = getelementptr inbounds %struct.rxe_srq, %struct.rxe_srq* %21, i32 0, i32 0
  %23 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %24 = call i32 @post_one_recv(%struct.TYPE_2__* %22, %struct.ib_recv_wr* %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  br label %33

29:                                               ; preds = %20
  %30 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %31 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %30, i32 0, i32 0
  %32 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %31, align 8
  store %struct.ib_recv_wr* %32, %struct.ib_recv_wr** %5, align 8
  br label %17

33:                                               ; preds = %28, %17
  %34 = load %struct.rxe_srq*, %struct.rxe_srq** %9, align 8
  %35 = getelementptr inbounds %struct.rxe_srq, %struct.rxe_srq* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %8, align 8
  %38 = call i32 @spin_unlock_irqrestore(i32* %36, i64 %37)
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %33
  %42 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %43 = load %struct.ib_recv_wr**, %struct.ib_recv_wr*** %6, align 8
  store %struct.ib_recv_wr* %42, %struct.ib_recv_wr** %43, align 8
  br label %44

44:                                               ; preds = %41, %33
  %45 = load i32, i32* %7, align 4
  ret i32 %45
}

declare dso_local %struct.rxe_srq* @to_rsrq(%struct.ib_srq*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @post_one_recv(%struct.TYPE_2__*, %struct.ib_recv_wr*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
