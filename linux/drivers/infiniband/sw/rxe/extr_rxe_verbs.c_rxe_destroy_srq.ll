; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_verbs.c_rxe_destroy_srq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_verbs.c_rxe_destroy_srq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_srq = type { i32 }
%struct.ib_udata = type { i32 }
%struct.rxe_srq = type { %struct.rxe_srq*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_srq*, %struct.ib_udata*)* @rxe_destroy_srq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rxe_destroy_srq(%struct.ib_srq* %0, %struct.ib_udata* %1) #0 {
  %3 = alloca %struct.ib_srq*, align 8
  %4 = alloca %struct.ib_udata*, align 8
  %5 = alloca %struct.rxe_srq*, align 8
  store %struct.ib_srq* %0, %struct.ib_srq** %3, align 8
  store %struct.ib_udata* %1, %struct.ib_udata** %4, align 8
  %6 = load %struct.ib_srq*, %struct.ib_srq** %3, align 8
  %7 = call %struct.rxe_srq* @to_rsrq(%struct.ib_srq* %6)
  store %struct.rxe_srq* %7, %struct.rxe_srq** %5, align 8
  %8 = load %struct.rxe_srq*, %struct.rxe_srq** %5, align 8
  %9 = getelementptr inbounds %struct.rxe_srq, %struct.rxe_srq* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load %struct.rxe_srq*, %struct.rxe_srq** %5, align 8
  %15 = getelementptr inbounds %struct.rxe_srq, %struct.rxe_srq* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @rxe_queue_cleanup(i64 %17)
  br label %19

19:                                               ; preds = %13, %2
  %20 = load %struct.rxe_srq*, %struct.rxe_srq** %5, align 8
  %21 = getelementptr inbounds %struct.rxe_srq, %struct.rxe_srq* %20, i32 0, i32 0
  %22 = load %struct.rxe_srq*, %struct.rxe_srq** %21, align 8
  %23 = call i32 @rxe_drop_ref(%struct.rxe_srq* %22)
  %24 = load %struct.rxe_srq*, %struct.rxe_srq** %5, align 8
  %25 = call i32 @rxe_drop_ref(%struct.rxe_srq* %24)
  ret void
}

declare dso_local %struct.rxe_srq* @to_rsrq(%struct.ib_srq*) #1

declare dso_local i32 @rxe_queue_cleanup(i64) #1

declare dso_local i32 @rxe_drop_ref(%struct.rxe_srq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
