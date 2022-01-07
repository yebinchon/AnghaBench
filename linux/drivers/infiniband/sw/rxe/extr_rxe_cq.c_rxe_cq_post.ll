; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_cq.c_rxe_cq_post.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_cq.c_rxe_cq_post.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxe_cq = type { i64, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 (%struct.ib_event*, i32)*, i32 }
%struct.ib_event = type opaque
%struct.rxe_cqe = type { i32 }
%struct.ib_event.0 = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }

@IB_EVENT_CQ_ERR = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@IB_CQ_NEXT_COMP = common dso_local global i64 0, align 8
@IB_CQ_SOLICITED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rxe_cq_post(%struct.rxe_cq* %0, %struct.rxe_cqe* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rxe_cq*, align 8
  %6 = alloca %struct.rxe_cqe*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ib_event.0, align 8
  %9 = alloca i64, align 8
  store %struct.rxe_cq* %0, %struct.rxe_cq** %5, align 8
  store %struct.rxe_cqe* %1, %struct.rxe_cqe** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.rxe_cq*, %struct.rxe_cq** %5, align 8
  %11 = getelementptr inbounds %struct.rxe_cq, %struct.rxe_cq* %10, i32 0, i32 2
  %12 = load i64, i64* %9, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.rxe_cq*, %struct.rxe_cq** %5, align 8
  %15 = getelementptr inbounds %struct.rxe_cq, %struct.rxe_cq* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @queue_full(i32 %16)
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %55

20:                                               ; preds = %3
  %21 = load %struct.rxe_cq*, %struct.rxe_cq** %5, align 8
  %22 = getelementptr inbounds %struct.rxe_cq, %struct.rxe_cq* %21, i32 0, i32 2
  %23 = load i64, i64* %9, align 8
  %24 = call i32 @spin_unlock_irqrestore(i32* %22, i64 %23)
  %25 = load %struct.rxe_cq*, %struct.rxe_cq** %5, align 8
  %26 = getelementptr inbounds %struct.rxe_cq, %struct.rxe_cq* %25, i32 0, i32 4
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i32 (%struct.ib_event*, i32)*, i32 (%struct.ib_event*, i32)** %27, align 8
  %29 = icmp ne i32 (%struct.ib_event*, i32)* %28, null
  br i1 %29, label %30, label %52

30:                                               ; preds = %20
  %31 = load %struct.rxe_cq*, %struct.rxe_cq** %5, align 8
  %32 = getelementptr inbounds %struct.rxe_cq, %struct.rxe_cq* %31, i32 0, i32 4
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = getelementptr inbounds %struct.ib_event.0, %struct.ib_event.0* %8, i32 0, i32 2
  store i32 %34, i32* %35, align 8
  %36 = load %struct.rxe_cq*, %struct.rxe_cq** %5, align 8
  %37 = getelementptr inbounds %struct.rxe_cq, %struct.rxe_cq* %36, i32 0, i32 4
  %38 = getelementptr inbounds %struct.ib_event.0, %struct.ib_event.0* %8, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  store %struct.TYPE_4__* %37, %struct.TYPE_4__** %39, align 8
  %40 = load i32, i32* @IB_EVENT_CQ_ERR, align 4
  %41 = getelementptr inbounds %struct.ib_event.0, %struct.ib_event.0* %8, i32 0, i32 0
  store i32 %40, i32* %41, align 8
  %42 = load %struct.rxe_cq*, %struct.rxe_cq** %5, align 8
  %43 = getelementptr inbounds %struct.rxe_cq, %struct.rxe_cq* %42, i32 0, i32 4
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i32 (%struct.ib_event*, i32)*, i32 (%struct.ib_event*, i32)** %44, align 8
  %46 = bitcast %struct.ib_event.0* %8 to %struct.ib_event*
  %47 = load %struct.rxe_cq*, %struct.rxe_cq** %5, align 8
  %48 = getelementptr inbounds %struct.rxe_cq, %struct.rxe_cq* %47, i32 0, i32 4
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 %45(%struct.ib_event* %46, i32 %50)
  br label %52

52:                                               ; preds = %30, %20
  %53 = load i32, i32* @EBUSY, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  br label %92

55:                                               ; preds = %3
  %56 = load %struct.rxe_cq*, %struct.rxe_cq** %5, align 8
  %57 = getelementptr inbounds %struct.rxe_cq, %struct.rxe_cq* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @producer_addr(i32 %58)
  %60 = load %struct.rxe_cqe*, %struct.rxe_cqe** %6, align 8
  %61 = call i32 @memcpy(i32 %59, %struct.rxe_cqe* %60, i32 4)
  %62 = call i32 (...) @smp_wmb()
  %63 = load %struct.rxe_cq*, %struct.rxe_cq** %5, align 8
  %64 = getelementptr inbounds %struct.rxe_cq, %struct.rxe_cq* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @advance_producer(i32 %65)
  %67 = load %struct.rxe_cq*, %struct.rxe_cq** %5, align 8
  %68 = getelementptr inbounds %struct.rxe_cq, %struct.rxe_cq* %67, i32 0, i32 2
  %69 = load i64, i64* %9, align 8
  %70 = call i32 @spin_unlock_irqrestore(i32* %68, i64 %69)
  %71 = load %struct.rxe_cq*, %struct.rxe_cq** %5, align 8
  %72 = getelementptr inbounds %struct.rxe_cq, %struct.rxe_cq* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @IB_CQ_NEXT_COMP, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %85, label %76

76:                                               ; preds = %55
  %77 = load %struct.rxe_cq*, %struct.rxe_cq** %5, align 8
  %78 = getelementptr inbounds %struct.rxe_cq, %struct.rxe_cq* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @IB_CQ_SOLICITED, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %91

82:                                               ; preds = %76
  %83 = load i32, i32* %7, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %82, %55
  %86 = load %struct.rxe_cq*, %struct.rxe_cq** %5, align 8
  %87 = getelementptr inbounds %struct.rxe_cq, %struct.rxe_cq* %86, i32 0, i32 0
  store i64 0, i64* %87, align 8
  %88 = load %struct.rxe_cq*, %struct.rxe_cq** %5, align 8
  %89 = getelementptr inbounds %struct.rxe_cq, %struct.rxe_cq* %88, i32 0, i32 1
  %90 = call i32 @tasklet_schedule(i32* %89)
  br label %91

91:                                               ; preds = %85, %82, %76
  store i32 0, i32* %4, align 4
  br label %92

92:                                               ; preds = %91, %52
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @queue_full(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @memcpy(i32, %struct.rxe_cqe*, i32) #1

declare dso_local i32 @producer_addr(i32) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @advance_producer(i32) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
