; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/qcom/extr_hidma_ll.c_hidma_ll_setup_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/qcom/extr_hidma_ll.c_hidma_ll_setup_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hidma_lldev = type { i32, i64 }

@HIDMA_EVCA_IRQ_CLR_REG = common dso_local global i64 0, align 8
@HIDMA_EVCA_IRQ_EN_REG = common dso_local global i64 0, align 8
@HIDMA_EVCA_INTCTRL_REG = common dso_local global i64 0, align 8
@ENABLE_IRQS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hidma_ll_setup_irq(%struct.hidma_lldev* %0, i32 %1) #0 {
  %3 = alloca %struct.hidma_lldev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.hidma_lldev* %0, %struct.hidma_lldev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.hidma_lldev*, %struct.hidma_lldev** %3, align 8
  %8 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %7, i32 0, i32 0
  store i32 %6, i32* %8, align 8
  %9 = load %struct.hidma_lldev*, %struct.hidma_lldev** %3, align 8
  %10 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @HIDMA_EVCA_IRQ_CLR_REG, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @writel(i32 0, i64 %13)
  %15 = load %struct.hidma_lldev*, %struct.hidma_lldev** %3, align 8
  %16 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @HIDMA_EVCA_IRQ_EN_REG, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @writel(i32 0, i64 %19)
  %21 = load %struct.hidma_lldev*, %struct.hidma_lldev** %3, align 8
  %22 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @HIDMA_EVCA_INTCTRL_REG, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @readl(i64 %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = and i32 %27, -16
  store i32 %28, i32* %5, align 4
  %29 = load %struct.hidma_lldev*, %struct.hidma_lldev** %3, align 8
  %30 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %2
  %34 = load i32, i32* %5, align 4
  %35 = or i32 %34, 1
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %33, %2
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.hidma_lldev*, %struct.hidma_lldev** %3, align 8
  %39 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @HIDMA_EVCA_INTCTRL_REG, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @writel(i32 %37, i64 %42)
  %44 = load i32, i32* @ENABLE_IRQS, align 4
  %45 = load %struct.hidma_lldev*, %struct.hidma_lldev** %3, align 8
  %46 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @HIDMA_EVCA_IRQ_CLR_REG, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @writel(i32 %44, i64 %49)
  %51 = load i32, i32* @ENABLE_IRQS, align 4
  %52 = load %struct.hidma_lldev*, %struct.hidma_lldev** %3, align 8
  %53 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @HIDMA_EVCA_IRQ_EN_REG, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @writel(i32 %51, i64 %56)
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
