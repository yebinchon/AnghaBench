; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/qcom/extr_hidma_ll.c_hidma_ll_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/qcom/extr_hidma_ll.c_hidma_ll_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hidma_lldev = type { i64, i64, i64, i64 }

@HIDMA_TRCA_CTRLSTS_REG = common dso_local global i64 0, align 8
@HIDMA_CH_CONTROL_MASK = common dso_local global i32 0, align 4
@HIDMA_CH_SUSPEND = common dso_local global i32 0, align 4
@HIDMA_CH_SUSPENDED = common dso_local global i64 0, align 8
@HIDMA_EVCA_CTRLSTS_REG = common dso_local global i64 0, align 8
@HIDMA_EVCA_IRQ_EN_REG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hidma_ll_disable(%struct.hidma_lldev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hidma_lldev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.hidma_lldev* %0, %struct.hidma_lldev** %3, align 8
  %6 = load %struct.hidma_lldev*, %struct.hidma_lldev** %3, align 8
  %7 = call i32 @hidma_ll_isenabled(%struct.hidma_lldev* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %101

10:                                               ; preds = %1
  %11 = load %struct.hidma_lldev*, %struct.hidma_lldev** %3, align 8
  %12 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @HIDMA_TRCA_CTRLSTS_REG, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @readl(i64 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* @HIDMA_CH_CONTROL_MASK, align 4
  %18 = shl i32 %17, 16
  %19 = xor i32 %18, -1
  %20 = load i32, i32* %4, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* @HIDMA_CH_SUSPEND, align 4
  %23 = shl i32 %22, 16
  %24 = load i32, i32* %4, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.hidma_lldev*, %struct.hidma_lldev** %3, align 8
  %28 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @HIDMA_TRCA_CTRLSTS_REG, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @writel(i32 %26, i64 %31)
  %33 = load %struct.hidma_lldev*, %struct.hidma_lldev** %3, align 8
  %34 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @HIDMA_TRCA_CTRLSTS_REG, align 8
  %37 = add nsw i64 %35, %36
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = call i64 @HIDMA_CH_STATE(i32 %39)
  %41 = load i64, i64* @HIDMA_CH_SUSPENDED, align 8
  %42 = icmp eq i64 %40, %41
  %43 = zext i1 %42 to i32
  %44 = call i32 @readl_poll_timeout(i64 %37, i32 %38, i32 %43, i32 1000, i32 10000)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %10
  %48 = load i32, i32* %5, align 4
  store i32 %48, i32* %2, align 4
  br label %101

49:                                               ; preds = %10
  %50 = load %struct.hidma_lldev*, %struct.hidma_lldev** %3, align 8
  %51 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @HIDMA_EVCA_CTRLSTS_REG, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @readl(i64 %54)
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* @HIDMA_CH_CONTROL_MASK, align 4
  %57 = shl i32 %56, 16
  %58 = xor i32 %57, -1
  %59 = load i32, i32* %4, align 4
  %60 = and i32 %59, %58
  store i32 %60, i32* %4, align 4
  %61 = load i32, i32* @HIDMA_CH_SUSPEND, align 4
  %62 = shl i32 %61, 16
  %63 = load i32, i32* %4, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %4, align 4
  %65 = load i32, i32* %4, align 4
  %66 = load %struct.hidma_lldev*, %struct.hidma_lldev** %3, align 8
  %67 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @HIDMA_EVCA_CTRLSTS_REG, align 8
  %70 = add nsw i64 %68, %69
  %71 = call i32 @writel(i32 %65, i64 %70)
  %72 = load %struct.hidma_lldev*, %struct.hidma_lldev** %3, align 8
  %73 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @HIDMA_EVCA_CTRLSTS_REG, align 8
  %76 = add nsw i64 %74, %75
  %77 = load i32, i32* %4, align 4
  %78 = load i32, i32* %4, align 4
  %79 = call i64 @HIDMA_CH_STATE(i32 %78)
  %80 = load i64, i64* @HIDMA_CH_SUSPENDED, align 8
  %81 = icmp eq i64 %79, %80
  %82 = zext i1 %81 to i32
  %83 = call i32 @readl_poll_timeout(i64 %76, i32 %77, i32 %82, i32 1000, i32 10000)
  store i32 %83, i32* %5, align 4
  %84 = load i32, i32* %5, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %49
  %87 = load i32, i32* %5, align 4
  store i32 %87, i32* %2, align 4
  br label %101

88:                                               ; preds = %49
  %89 = load i64, i64* @HIDMA_CH_SUSPENDED, align 8
  %90 = load %struct.hidma_lldev*, %struct.hidma_lldev** %3, align 8
  %91 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %90, i32 0, i32 2
  store i64 %89, i64* %91, align 8
  %92 = load i64, i64* @HIDMA_CH_SUSPENDED, align 8
  %93 = load %struct.hidma_lldev*, %struct.hidma_lldev** %3, align 8
  %94 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %93, i32 0, i32 1
  store i64 %92, i64* %94, align 8
  %95 = load %struct.hidma_lldev*, %struct.hidma_lldev** %3, align 8
  %96 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @HIDMA_EVCA_IRQ_EN_REG, align 8
  %99 = add nsw i64 %97, %98
  %100 = call i32 @writel(i32 0, i64 %99)
  store i32 0, i32* %2, align 4
  br label %101

101:                                              ; preds = %88, %86, %47, %9
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local i32 @hidma_ll_isenabled(%struct.hidma_lldev*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl_poll_timeout(i64, i32, i32, i32, i32) #1

declare dso_local i64 @HIDMA_CH_STATE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
