; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/qcom/extr_hidma_ll.c_hidma_ll_inthandler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/qcom/extr_hidma_ll.c_hidma_ll_inthandler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hidma_lldev = type { i64 }

@HIDMA_EVCA_IRQ_STAT_REG = common dso_local global i64 0, align 8
@HIDMA_EVCA_IRQ_EN_REG = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hidma_ll_inthandler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.hidma_lldev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.hidma_lldev*
  store %struct.hidma_lldev* %10, %struct.hidma_lldev** %5, align 8
  %11 = load %struct.hidma_lldev*, %struct.hidma_lldev** %5, align 8
  %12 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @HIDMA_EVCA_IRQ_STAT_REG, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @readl_relaxed(i64 %15)
  store i32 %16, i32* %6, align 4
  %17 = load %struct.hidma_lldev*, %struct.hidma_lldev** %5, align 8
  %18 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @HIDMA_EVCA_IRQ_EN_REG, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @readl_relaxed(i64 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %7, align 4
  %25 = and i32 %23, %24
  store i32 %25, i32* %8, align 4
  br label %26

26:                                               ; preds = %29, %2
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %48

29:                                               ; preds = %26
  %30 = load %struct.hidma_lldev*, %struct.hidma_lldev** %5, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @hidma_ll_int_handler_internal(%struct.hidma_lldev* %30, i32 %31)
  %33 = load %struct.hidma_lldev*, %struct.hidma_lldev** %5, align 8
  %34 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @HIDMA_EVCA_IRQ_STAT_REG, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @readl_relaxed(i64 %37)
  store i32 %38, i32* %6, align 4
  %39 = load %struct.hidma_lldev*, %struct.hidma_lldev** %5, align 8
  %40 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @HIDMA_EVCA_IRQ_EN_REG, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @readl_relaxed(i64 %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %7, align 4
  %47 = and i32 %45, %46
  store i32 %47, i32* %8, align 4
  br label %26

48:                                               ; preds = %26
  %49 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %49
}

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @hidma_ll_int_handler_internal(%struct.hidma_lldev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
