; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_flush_qp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_flush_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_qp = type { %struct.TYPE_6__*, i32, i32, %struct.TYPE_5__*, i32, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.ocrdma_dev = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ocrdma_flush_qp(%struct.ocrdma_qp* %0) #0 {
  %2 = alloca %struct.ocrdma_qp*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.ocrdma_dev*, align 8
  store %struct.ocrdma_qp* %0, %struct.ocrdma_qp** %2, align 8
  %6 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %2, align 8
  %7 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.ocrdma_dev* @get_ocrdma_dev(i32 %9)
  store %struct.ocrdma_dev* %10, %struct.ocrdma_dev** %5, align 8
  %11 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %5, align 8
  %12 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %11, i32 0, i32 0
  %13 = load i64, i64* %4, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %2, align 8
  %16 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %15, i32 0, i32 3
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %2, align 8
  %19 = call i32 @ocrdma_is_qp_in_sq_flushlist(%struct.TYPE_5__* %17, %struct.ocrdma_qp* %18)
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %1
  %23 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %2, align 8
  %24 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %23, i32 0, i32 4
  %25 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %2, align 8
  %26 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %25, i32 0, i32 3
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = call i32 @list_add_tail(i32* %24, i32* %28)
  br label %30

30:                                               ; preds = %22, %1
  %31 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %2, align 8
  %32 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %52, label %35

35:                                               ; preds = %30
  %36 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %2, align 8
  %37 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %36, i32 0, i32 0
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %2, align 8
  %40 = call i32 @ocrdma_is_qp_in_rq_flushlist(%struct.TYPE_6__* %38, %struct.ocrdma_qp* %39)
  store i32 %40, i32* %3, align 4
  %41 = load i32, i32* %3, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %51, label %43

43:                                               ; preds = %35
  %44 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %2, align 8
  %45 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %44, i32 0, i32 1
  %46 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %2, align 8
  %47 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %46, i32 0, i32 0
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = call i32 @list_add_tail(i32* %45, i32* %49)
  br label %51

51:                                               ; preds = %43, %35
  br label %52

52:                                               ; preds = %51, %30
  %53 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %5, align 8
  %54 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %53, i32 0, i32 0
  %55 = load i64, i64* %4, align 8
  %56 = call i32 @spin_unlock_irqrestore(i32* %54, i64 %55)
  ret void
}

declare dso_local %struct.ocrdma_dev* @get_ocrdma_dev(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ocrdma_is_qp_in_sq_flushlist(%struct.TYPE_5__*, %struct.ocrdma_qp*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @ocrdma_is_qp_in_rq_flushlist(%struct.TYPE_6__*, %struct.ocrdma_qp*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
