; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_qp.c_rxe_qp_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_qp.c_rxe_qp_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxe_qp = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, i32, i32, %struct.TYPE_5__, i64, i64 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32 }

@IB_QPT_RC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rxe_qp_destroy(%struct.rxe_qp* %0) #0 {
  %2 = alloca %struct.rxe_qp*, align 8
  store %struct.rxe_qp* %0, %struct.rxe_qp** %2, align 8
  %3 = load %struct.rxe_qp*, %struct.rxe_qp** %2, align 8
  %4 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %3, i32 0, i32 7
  store i64 0, i64* %4, align 8
  %5 = load %struct.rxe_qp*, %struct.rxe_qp** %2, align 8
  %6 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %5, i32 0, i32 6
  store i64 0, i64* %6, align 8
  %7 = load %struct.rxe_qp*, %struct.rxe_qp** %2, align 8
  %8 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %7, i32 0, i32 5
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = call i32 @rxe_cleanup_task(i32* %9)
  %11 = load %struct.rxe_qp*, %struct.rxe_qp** %2, align 8
  %12 = call i64 @qp_type(%struct.rxe_qp* %11)
  %13 = load i64, i64* @IB_QPT_RC, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %22

15:                                               ; preds = %1
  %16 = load %struct.rxe_qp*, %struct.rxe_qp** %2, align 8
  %17 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %16, i32 0, i32 4
  %18 = call i32 @del_timer_sync(i32* %17)
  %19 = load %struct.rxe_qp*, %struct.rxe_qp** %2, align 8
  %20 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %19, i32 0, i32 3
  %21 = call i32 @del_timer_sync(i32* %20)
  br label %22

22:                                               ; preds = %15, %1
  %23 = load %struct.rxe_qp*, %struct.rxe_qp** %2, align 8
  %24 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = call i32 @rxe_cleanup_task(i32* %25)
  %27 = load %struct.rxe_qp*, %struct.rxe_qp** %2, align 8
  %28 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = call i32 @rxe_cleanup_task(i32* %29)
  %31 = load %struct.rxe_qp*, %struct.rxe_qp** %2, align 8
  %32 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = call i32 @__rxe_do_task(i32* %33)
  %35 = load %struct.rxe_qp*, %struct.rxe_qp** %2, align 8
  %36 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %22
  %41 = load %struct.rxe_qp*, %struct.rxe_qp** %2, align 8
  %42 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = call i32 @__rxe_do_task(i32* %43)
  %45 = load %struct.rxe_qp*, %struct.rxe_qp** %2, align 8
  %46 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = call i32 @__rxe_do_task(i32* %47)
  br label %49

49:                                               ; preds = %40, %22
  ret void
}

declare dso_local i32 @rxe_cleanup_task(i32*) #1

declare dso_local i64 @qp_type(%struct.rxe_qp*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @__rxe_do_task(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
