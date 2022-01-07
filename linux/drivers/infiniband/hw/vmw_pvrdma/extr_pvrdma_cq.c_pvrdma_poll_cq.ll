; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/vmw_pvrdma/extr_pvrdma_cq.c_pvrdma_poll_cq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/vmw_pvrdma/extr_pvrdma_cq.c_pvrdma_poll_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_cq = type { i32 }
%struct.ib_wc = type { i32 }
%struct.pvrdma_cq = type { i32 }
%struct.pvrdma_qp = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pvrdma_poll_cq(%struct.ib_cq* %0, i32 %1, %struct.ib_wc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_cq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ib_wc*, align 8
  %8 = alloca %struct.pvrdma_cq*, align 8
  %9 = alloca %struct.pvrdma_qp*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.ib_cq* %0, %struct.ib_cq** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ib_wc* %2, %struct.ib_wc** %7, align 8
  %12 = load %struct.ib_cq*, %struct.ib_cq** %5, align 8
  %13 = call %struct.pvrdma_cq* @to_vcq(%struct.ib_cq* %12)
  store %struct.pvrdma_cq* %13, %struct.pvrdma_cq** %8, align 8
  store %struct.pvrdma_qp* null, %struct.pvrdma_qp** %9, align 8
  %14 = load i32, i32* %6, align 4
  %15 = icmp slt i32 %14, 1
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load %struct.ib_wc*, %struct.ib_wc** %7, align 8
  %18 = icmp eq %struct.ib_wc* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %16, %3
  store i32 0, i32* %4, align 4
  br label %48

20:                                               ; preds = %16
  %21 = load %struct.pvrdma_cq*, %struct.pvrdma_cq** %8, align 8
  %22 = getelementptr inbounds %struct.pvrdma_cq, %struct.pvrdma_cq* %21, i32 0, i32 0
  %23 = load i64, i64* %10, align 8
  %24 = call i32 @spin_lock_irqsave(i32* %22, i64 %23)
  store i32 0, i32* %11, align 4
  br label %25

25:                                               ; preds = %39, %20
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %42

29:                                               ; preds = %25
  %30 = load %struct.pvrdma_cq*, %struct.pvrdma_cq** %8, align 8
  %31 = load %struct.ib_wc*, %struct.ib_wc** %7, align 8
  %32 = load i32, i32* %11, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %31, i64 %33
  %35 = call i64 @pvrdma_poll_one(%struct.pvrdma_cq* %30, %struct.pvrdma_qp** %9, %struct.ib_wc* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  br label %42

38:                                               ; preds = %29
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %11, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %11, align 4
  br label %25

42:                                               ; preds = %37, %25
  %43 = load %struct.pvrdma_cq*, %struct.pvrdma_cq** %8, align 8
  %44 = getelementptr inbounds %struct.pvrdma_cq, %struct.pvrdma_cq* %43, i32 0, i32 0
  %45 = load i64, i64* %10, align 8
  %46 = call i32 @spin_unlock_irqrestore(i32* %44, i64 %45)
  %47 = load i32, i32* %11, align 4
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %42, %19
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local %struct.pvrdma_cq* @to_vcq(%struct.ib_cq*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @pvrdma_poll_one(%struct.pvrdma_cq*, %struct.pvrdma_qp**, %struct.ib_wc*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
