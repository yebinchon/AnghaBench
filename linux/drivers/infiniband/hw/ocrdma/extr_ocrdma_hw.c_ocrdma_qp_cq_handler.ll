; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_qp_cq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_qp_cq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_dev = type { %struct.ocrdma_cq** }
%struct.ocrdma_cq = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 (%struct.TYPE_2__*, i32)* }

@OCRDMA_MAX_CQ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocrdma_dev*, i64)* @ocrdma_qp_cq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocrdma_qp_cq_handler(%struct.ocrdma_dev* %0, i64 %1) #0 {
  %3 = alloca %struct.ocrdma_dev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ocrdma_cq*, align 8
  store %struct.ocrdma_dev* %0, %struct.ocrdma_dev** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i64, i64* %4, align 8
  %8 = load i64, i64* @OCRDMA_MAX_CQ, align 8
  %9 = icmp uge i64 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = call i32 (...) @BUG()
  br label %12

12:                                               ; preds = %10, %2
  %13 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %14 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %13, i32 0, i32 0
  %15 = load %struct.ocrdma_cq**, %struct.ocrdma_cq*** %14, align 8
  %16 = load i64, i64* %4, align 8
  %17 = getelementptr inbounds %struct.ocrdma_cq*, %struct.ocrdma_cq** %15, i64 %16
  %18 = load %struct.ocrdma_cq*, %struct.ocrdma_cq** %17, align 8
  store %struct.ocrdma_cq* %18, %struct.ocrdma_cq** %6, align 8
  %19 = load %struct.ocrdma_cq*, %struct.ocrdma_cq** %6, align 8
  %20 = icmp eq %struct.ocrdma_cq* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %12
  br label %52

22:                                               ; preds = %12
  %23 = load %struct.ocrdma_cq*, %struct.ocrdma_cq** %6, align 8
  %24 = getelementptr inbounds %struct.ocrdma_cq, %struct.ocrdma_cq* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32 (%struct.TYPE_2__*, i32)*, i32 (%struct.TYPE_2__*, i32)** %25, align 8
  %27 = icmp ne i32 (%struct.TYPE_2__*, i32)* %26, null
  br i1 %27, label %28, label %48

28:                                               ; preds = %22
  %29 = load %struct.ocrdma_cq*, %struct.ocrdma_cq** %6, align 8
  %30 = getelementptr inbounds %struct.ocrdma_cq, %struct.ocrdma_cq* %29, i32 0, i32 0
  %31 = load i64, i64* %5, align 8
  %32 = call i32 @spin_lock_irqsave(i32* %30, i64 %31)
  %33 = load %struct.ocrdma_cq*, %struct.ocrdma_cq** %6, align 8
  %34 = getelementptr inbounds %struct.ocrdma_cq, %struct.ocrdma_cq* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32 (%struct.TYPE_2__*, i32)*, i32 (%struct.TYPE_2__*, i32)** %35, align 8
  %37 = load %struct.ocrdma_cq*, %struct.ocrdma_cq** %6, align 8
  %38 = getelementptr inbounds %struct.ocrdma_cq, %struct.ocrdma_cq* %37, i32 0, i32 1
  %39 = load %struct.ocrdma_cq*, %struct.ocrdma_cq** %6, align 8
  %40 = getelementptr inbounds %struct.ocrdma_cq, %struct.ocrdma_cq* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 %36(%struct.TYPE_2__* %38, i32 %42)
  %44 = load %struct.ocrdma_cq*, %struct.ocrdma_cq** %6, align 8
  %45 = getelementptr inbounds %struct.ocrdma_cq, %struct.ocrdma_cq* %44, i32 0, i32 0
  %46 = load i64, i64* %5, align 8
  %47 = call i32 @spin_unlock_irqrestore(i32* %45, i64 %46)
  br label %48

48:                                               ; preds = %28, %22
  %49 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %50 = load %struct.ocrdma_cq*, %struct.ocrdma_cq** %6, align 8
  %51 = call i32 @ocrdma_qp_buddy_cq_handler(%struct.ocrdma_dev* %49, %struct.ocrdma_cq* %50)
  br label %52

52:                                               ; preds = %48, %21
  ret void
}

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ocrdma_qp_buddy_cq_handler(%struct.ocrdma_dev*, %struct.ocrdma_cq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
