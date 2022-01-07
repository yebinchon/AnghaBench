; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/qcom/extr_hidma_ll.c_hidma_ll_uninit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/qcom/extr_hidma_ll.c_hidma_ll_uninit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hidma_lldev = type { i32, i64, i64, i32, i32*, i32, i64 }

@ENODEV = common dso_local global i32 0, align 4
@HIDMA_EVCA_IRQ_STAT_REG = common dso_local global i64 0, align 8
@HIDMA_EVCA_IRQ_CLR_REG = common dso_local global i64 0, align 8
@HIDMA_EVCA_IRQ_EN_REG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hidma_ll_uninit(%struct.hidma_lldev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hidma_lldev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.hidma_lldev* %0, %struct.hidma_lldev** %3, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.hidma_lldev*, %struct.hidma_lldev** %3, align 8
  %8 = icmp ne %struct.hidma_lldev* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENODEV, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %64

12:                                               ; preds = %1
  %13 = load %struct.hidma_lldev*, %struct.hidma_lldev** %3, align 8
  %14 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %13, i32 0, i32 6
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %64

18:                                               ; preds = %12
  %19 = load %struct.hidma_lldev*, %struct.hidma_lldev** %3, align 8
  %20 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %19, i32 0, i32 6
  store i64 0, i64* %20, align 8
  %21 = load %struct.hidma_lldev*, %struct.hidma_lldev** %3, align 8
  %22 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = mul i64 4, %24
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %4, align 4
  %27 = load %struct.hidma_lldev*, %struct.hidma_lldev** %3, align 8
  %28 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %27, i32 0, i32 5
  %29 = call i32 @tasklet_kill(i32* %28)
  %30 = load %struct.hidma_lldev*, %struct.hidma_lldev** %3, align 8
  %31 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %30, i32 0, i32 4
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @memset(i32* %32, i32 0, i32 %33)
  %35 = load %struct.hidma_lldev*, %struct.hidma_lldev** %3, align 8
  %36 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %35, i32 0, i32 4
  store i32* null, i32** %36, align 8
  %37 = load %struct.hidma_lldev*, %struct.hidma_lldev** %3, align 8
  %38 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %37, i32 0, i32 3
  %39 = call i32 @atomic_set(i32* %38, i32 0)
  %40 = load %struct.hidma_lldev*, %struct.hidma_lldev** %3, align 8
  %41 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %40, i32 0, i32 2
  store i64 0, i64* %41, align 8
  %42 = load %struct.hidma_lldev*, %struct.hidma_lldev** %3, align 8
  %43 = call i32 @hidma_ll_reset(%struct.hidma_lldev* %42)
  store i32 %43, i32* %5, align 4
  %44 = load %struct.hidma_lldev*, %struct.hidma_lldev** %3, align 8
  %45 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @HIDMA_EVCA_IRQ_STAT_REG, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @readl(i64 %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = load %struct.hidma_lldev*, %struct.hidma_lldev** %3, align 8
  %52 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @HIDMA_EVCA_IRQ_CLR_REG, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @writel(i32 %50, i64 %55)
  %57 = load %struct.hidma_lldev*, %struct.hidma_lldev** %3, align 8
  %58 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @HIDMA_EVCA_IRQ_EN_REG, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32 @writel(i32 0, i64 %61)
  %63 = load i32, i32* %5, align 4
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %18, %17, %9
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @hidma_ll_reset(%struct.hidma_lldev*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
