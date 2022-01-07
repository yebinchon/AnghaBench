; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_qp_buddy_cq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_qp_buddy_cq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_dev = type { i32 }
%struct.ocrdma_cq = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 (%struct.TYPE_2__*, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocrdma_dev*, %struct.ocrdma_cq*)* @ocrdma_qp_buddy_cq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocrdma_qp_buddy_cq_handler(%struct.ocrdma_dev* %0, %struct.ocrdma_cq* %1) #0 {
  %3 = alloca %struct.ocrdma_dev*, align 8
  %4 = alloca %struct.ocrdma_cq*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ocrdma_cq*, align 8
  store %struct.ocrdma_dev* %0, %struct.ocrdma_dev** %3, align 8
  store %struct.ocrdma_cq* %1, %struct.ocrdma_cq** %4, align 8
  store %struct.ocrdma_cq* null, %struct.ocrdma_cq** %6, align 8
  %7 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %8 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %7, i32 0, i32 0
  %9 = load i64, i64* %5, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %12 = load %struct.ocrdma_cq*, %struct.ocrdma_cq** %4, align 8
  %13 = call %struct.ocrdma_cq* @_ocrdma_qp_buddy_cq_handler(%struct.ocrdma_dev* %11, %struct.ocrdma_cq* %12, i32 1)
  store %struct.ocrdma_cq* %13, %struct.ocrdma_cq** %6, align 8
  %14 = load %struct.ocrdma_cq*, %struct.ocrdma_cq** %6, align 8
  %15 = icmp eq %struct.ocrdma_cq* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %18 = load %struct.ocrdma_cq*, %struct.ocrdma_cq** %4, align 8
  %19 = call %struct.ocrdma_cq* @_ocrdma_qp_buddy_cq_handler(%struct.ocrdma_dev* %17, %struct.ocrdma_cq* %18, i32 0)
  store %struct.ocrdma_cq* %19, %struct.ocrdma_cq** %6, align 8
  br label %20

20:                                               ; preds = %16, %2
  %21 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %22 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %21, i32 0, i32 0
  %23 = load i64, i64* %5, align 8
  %24 = call i32 @spin_unlock_irqrestore(i32* %22, i64 %23)
  %25 = load %struct.ocrdma_cq*, %struct.ocrdma_cq** %6, align 8
  %26 = icmp ne %struct.ocrdma_cq* %25, null
  br i1 %26, label %27, label %53

27:                                               ; preds = %20
  %28 = load %struct.ocrdma_cq*, %struct.ocrdma_cq** %6, align 8
  %29 = getelementptr inbounds %struct.ocrdma_cq, %struct.ocrdma_cq* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32 (%struct.TYPE_2__*, i32)*, i32 (%struct.TYPE_2__*, i32)** %30, align 8
  %32 = icmp ne i32 (%struct.TYPE_2__*, i32)* %31, null
  br i1 %32, label %33, label %53

33:                                               ; preds = %27
  %34 = load %struct.ocrdma_cq*, %struct.ocrdma_cq** %6, align 8
  %35 = getelementptr inbounds %struct.ocrdma_cq, %struct.ocrdma_cq* %34, i32 0, i32 0
  %36 = load i64, i64* %5, align 8
  %37 = call i32 @spin_lock_irqsave(i32* %35, i64 %36)
  %38 = load %struct.ocrdma_cq*, %struct.ocrdma_cq** %6, align 8
  %39 = getelementptr inbounds %struct.ocrdma_cq, %struct.ocrdma_cq* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32 (%struct.TYPE_2__*, i32)*, i32 (%struct.TYPE_2__*, i32)** %40, align 8
  %42 = load %struct.ocrdma_cq*, %struct.ocrdma_cq** %6, align 8
  %43 = getelementptr inbounds %struct.ocrdma_cq, %struct.ocrdma_cq* %42, i32 0, i32 1
  %44 = load %struct.ocrdma_cq*, %struct.ocrdma_cq** %6, align 8
  %45 = getelementptr inbounds %struct.ocrdma_cq, %struct.ocrdma_cq* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 %41(%struct.TYPE_2__* %43, i32 %47)
  %49 = load %struct.ocrdma_cq*, %struct.ocrdma_cq** %6, align 8
  %50 = getelementptr inbounds %struct.ocrdma_cq, %struct.ocrdma_cq* %49, i32 0, i32 0
  %51 = load i64, i64* %5, align 8
  %52 = call i32 @spin_unlock_irqrestore(i32* %50, i64 %51)
  br label %53

53:                                               ; preds = %33, %27, %20
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.ocrdma_cq* @_ocrdma_qp_buddy_cq_handler(%struct.ocrdma_dev*, %struct.ocrdma_cq*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
