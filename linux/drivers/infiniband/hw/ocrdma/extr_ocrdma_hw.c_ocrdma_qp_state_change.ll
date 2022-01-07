; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_qp_state_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_qp_state_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_qp = type { i32, i32 }

@OCRDMA_QPS_INIT = common dso_local global i32 0, align 4
@OCRDMA_QPS_ERR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocrdma_qp_state_change(%struct.ocrdma_qp* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ocrdma_qp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.ocrdma_qp* %0, %struct.ocrdma_qp** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @get_ocrdma_qp_state(i32 %10)
  store i32 %11, i32* %9, align 4
  %12 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %5, align 8
  %13 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %12, i32 0, i32 1
  %14 = load i64, i64* %8, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load i32*, i32** %7, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %3
  %19 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %5, align 8
  %20 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @get_ibqp_state(i32 %21)
  %23 = load i32*, i32** %7, align 8
  store i32 %22, i32* %23, align 4
  br label %24

24:                                               ; preds = %18, %3
  %25 = load i32, i32* %9, align 4
  %26 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %5, align 8
  %27 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %25, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %24
  %31 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %5, align 8
  %32 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %31, i32 0, i32 1
  %33 = load i64, i64* %8, align 8
  %34 = call i32 @spin_unlock_irqrestore(i32* %32, i64 %33)
  store i32 1, i32* %4, align 4
  br label %60

35:                                               ; preds = %24
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @OCRDMA_QPS_INIT, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %5, align 8
  %41 = call i32 @ocrdma_init_hwq_ptr(%struct.ocrdma_qp* %40)
  %42 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %5, align 8
  %43 = call i32 @ocrdma_del_flush_qp(%struct.ocrdma_qp* %42)
  br label %52

44:                                               ; preds = %35
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @OCRDMA_QPS_ERR, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %5, align 8
  %50 = call i32 @ocrdma_flush_qp(%struct.ocrdma_qp* %49)
  br label %51

51:                                               ; preds = %48, %44
  br label %52

52:                                               ; preds = %51, %39
  %53 = load i32, i32* %9, align 4
  %54 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %5, align 8
  %55 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  %56 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %5, align 8
  %57 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %56, i32 0, i32 1
  %58 = load i64, i64* %8, align 8
  %59 = call i32 @spin_unlock_irqrestore(i32* %57, i64 %58)
  store i32 0, i32* %4, align 4
  br label %60

60:                                               ; preds = %52, %30
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i32 @get_ocrdma_qp_state(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @get_ibqp_state(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ocrdma_init_hwq_ptr(%struct.ocrdma_qp*) #1

declare dso_local i32 @ocrdma_del_flush_qp(%struct.ocrdma_qp*) #1

declare dso_local i32 @ocrdma_flush_qp(%struct.ocrdma_qp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
