; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/qcom/extr_hidma_ll.c_hidma_ll_int_handler_internal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/qcom/extr_hidma_ll.c_hidma_ll_int_handler_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hidma_lldev = type { i32, i64, i32 }

@HIDMA_ERR_INT_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"error 0x%x, disabling...\0A\00", align 1
@HIDMA_EVCA_IRQ_CLR_REG = common dso_local global i64 0, align 8
@HIDMA_EVRE_STATUS_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hidma_lldev*, i32)* @hidma_ll_int_handler_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hidma_ll_int_handler_internal(%struct.hidma_lldev* %0, i32 %1) #0 {
  %3 = alloca %struct.hidma_lldev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.hidma_lldev* %0, %struct.hidma_lldev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @HIDMA_ERR_INT_MASK, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %28

10:                                               ; preds = %2
  %11 = load %struct.hidma_lldev*, %struct.hidma_lldev** %3, align 8
  %12 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @dev_err(i32 %13, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.hidma_lldev*, %struct.hidma_lldev** %3, align 8
  %18 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @HIDMA_EVCA_IRQ_CLR_REG, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @writel(i32 %16, i64 %21)
  %23 = load %struct.hidma_lldev*, %struct.hidma_lldev** %3, align 8
  %24 = call i32 @hidma_ll_disable(%struct.hidma_lldev* %23)
  %25 = load %struct.hidma_lldev*, %struct.hidma_lldev** %3, align 8
  %26 = load i32, i32* @HIDMA_EVRE_STATUS_ERROR, align 4
  %27 = call i32 @hidma_cleanup_pending_tre(%struct.hidma_lldev* %25, i32 255, i32 %26)
  br label %46

28:                                               ; preds = %2
  %29 = load %struct.hidma_lldev*, %struct.hidma_lldev** %3, align 8
  %30 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %29, i32 0, i32 0
  %31 = load i64, i64* %5, align 8
  %32 = call i32 @spin_lock_irqsave(i32* %30, i64 %31)
  %33 = load i32, i32* %4, align 4
  %34 = load %struct.hidma_lldev*, %struct.hidma_lldev** %3, align 8
  %35 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @HIDMA_EVCA_IRQ_CLR_REG, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @writel_relaxed(i32 %33, i64 %38)
  %40 = load %struct.hidma_lldev*, %struct.hidma_lldev** %3, align 8
  %41 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %40, i32 0, i32 0
  %42 = load i64, i64* %5, align 8
  %43 = call i32 @spin_unlock_irqrestore(i32* %41, i64 %42)
  %44 = load %struct.hidma_lldev*, %struct.hidma_lldev** %3, align 8
  %45 = call i32 @hidma_handle_tre_completion(%struct.hidma_lldev* %44)
  br label %46

46:                                               ; preds = %28, %10
  ret void
}

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @hidma_ll_disable(%struct.hidma_lldev*) #1

declare dso_local i32 @hidma_cleanup_pending_tre(%struct.hidma_lldev*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @hidma_handle_tre_completion(%struct.hidma_lldev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
