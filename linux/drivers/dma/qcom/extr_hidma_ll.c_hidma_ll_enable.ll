; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/qcom/extr_hidma_ll.c_hidma_ll_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/qcom/extr_hidma_ll.c_hidma_ll_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hidma_lldev = type { i64, i8*, i8*, i32, i64 }

@HIDMA_EVCA_CTRLSTS_REG = common dso_local global i64 0, align 8
@HIDMA_CH_CONTROL_MASK = common dso_local global i32 0, align 4
@HIDMA_CH_ENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"event channel did not get enabled\0A\00", align 1
@HIDMA_TRCA_CTRLSTS_REG = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"transfer channel did not get enabled\0A\00", align 1
@HIDMA_CH_ENABLED = common dso_local global i8* null, align 8
@ENABLE_IRQS = common dso_local global i32 0, align 4
@HIDMA_EVCA_IRQ_EN_REG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hidma_ll_enable(%struct.hidma_lldev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hidma_lldev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.hidma_lldev* %0, %struct.hidma_lldev** %3, align 8
  %6 = load %struct.hidma_lldev*, %struct.hidma_lldev** %3, align 8
  %7 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @HIDMA_EVCA_CTRLSTS_REG, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @readl(i64 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* @HIDMA_CH_CONTROL_MASK, align 4
  %13 = shl i32 %12, 16
  %14 = xor i32 %13, -1
  %15 = load i32, i32* %4, align 4
  %16 = and i32 %15, %14
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* @HIDMA_CH_ENABLE, align 4
  %18 = shl i32 %17, 16
  %19 = load i32, i32* %4, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.hidma_lldev*, %struct.hidma_lldev** %3, align 8
  %23 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @HIDMA_EVCA_CTRLSTS_REG, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @writel(i32 %21, i64 %26)
  %28 = load %struct.hidma_lldev*, %struct.hidma_lldev** %3, align 8
  %29 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @HIDMA_EVCA_CTRLSTS_REG, align 8
  %32 = add nsw i64 %30, %31
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @HIDMA_CH_STATE(i32 %34)
  %36 = call i32 @hidma_is_chan_enabled(i32 %35)
  %37 = call i32 @readl_poll_timeout(i64 %32, i32 %33, i32 %36, i32 1000, i32 10000)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %1
  %41 = load %struct.hidma_lldev*, %struct.hidma_lldev** %3, align 8
  %42 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @dev_err(i32 %43, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* %5, align 4
  store i32 %45, i32* %2, align 4
  br label %101

46:                                               ; preds = %1
  %47 = load %struct.hidma_lldev*, %struct.hidma_lldev** %3, align 8
  %48 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %47, i32 0, i32 4
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @HIDMA_TRCA_CTRLSTS_REG, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @readl(i64 %51)
  store i32 %52, i32* %4, align 4
  %53 = load i32, i32* @HIDMA_CH_CONTROL_MASK, align 4
  %54 = shl i32 %53, 16
  %55 = xor i32 %54, -1
  %56 = load i32, i32* %4, align 4
  %57 = and i32 %56, %55
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* @HIDMA_CH_ENABLE, align 4
  %59 = shl i32 %58, 16
  %60 = load i32, i32* %4, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %4, align 4
  %62 = load i32, i32* %4, align 4
  %63 = load %struct.hidma_lldev*, %struct.hidma_lldev** %3, align 8
  %64 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %63, i32 0, i32 4
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @HIDMA_TRCA_CTRLSTS_REG, align 8
  %67 = add nsw i64 %65, %66
  %68 = call i32 @writel(i32 %62, i64 %67)
  %69 = load %struct.hidma_lldev*, %struct.hidma_lldev** %3, align 8
  %70 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %69, i32 0, i32 4
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @HIDMA_TRCA_CTRLSTS_REG, align 8
  %73 = add nsw i64 %71, %72
  %74 = load i32, i32* %4, align 4
  %75 = load i32, i32* %4, align 4
  %76 = call i32 @HIDMA_CH_STATE(i32 %75)
  %77 = call i32 @hidma_is_chan_enabled(i32 %76)
  %78 = call i32 @readl_poll_timeout(i64 %73, i32 %74, i32 %77, i32 1000, i32 10000)
  store i32 %78, i32* %5, align 4
  %79 = load i32, i32* %5, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %46
  %82 = load %struct.hidma_lldev*, %struct.hidma_lldev** %3, align 8
  %83 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @dev_err(i32 %84, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %86 = load i32, i32* %5, align 4
  store i32 %86, i32* %2, align 4
  br label %101

87:                                               ; preds = %46
  %88 = load i8*, i8** @HIDMA_CH_ENABLED, align 8
  %89 = load %struct.hidma_lldev*, %struct.hidma_lldev** %3, align 8
  %90 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %89, i32 0, i32 2
  store i8* %88, i8** %90, align 8
  %91 = load i8*, i8** @HIDMA_CH_ENABLED, align 8
  %92 = load %struct.hidma_lldev*, %struct.hidma_lldev** %3, align 8
  %93 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %92, i32 0, i32 1
  store i8* %91, i8** %93, align 8
  %94 = load i32, i32* @ENABLE_IRQS, align 4
  %95 = load %struct.hidma_lldev*, %struct.hidma_lldev** %3, align 8
  %96 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @HIDMA_EVCA_IRQ_EN_REG, align 8
  %99 = add nsw i64 %97, %98
  %100 = call i32 @writel(i32 %94, i64 %99)
  store i32 0, i32* %2, align 4
  br label %101

101:                                              ; preds = %87, %81, %40
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl_poll_timeout(i64, i32, i32, i32, i32) #1

declare dso_local i32 @hidma_is_chan_enabled(i32) #1

declare dso_local i32 @HIDMA_CH_STATE(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
