; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/qcom/extr_hidma_ll.c_hidma_ll_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/qcom/extr_hidma_ll.c_hidma_ll_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hidma_lldev = type { i64, i64, i64, i32, i64 }

@HIDMA_TRCA_CTRLSTS_REG = common dso_local global i64 0, align 8
@HIDMA_CH_CONTROL_MASK = common dso_local global i32 0, align 4
@HIDMA_CH_RESET = common dso_local global i32 0, align 4
@HIDMA_CH_DISABLED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"transfer channel did not reset\0A\00", align 1
@HIDMA_EVCA_CTRLSTS_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hidma_lldev*)* @hidma_ll_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hidma_ll_reset(%struct.hidma_lldev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hidma_lldev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.hidma_lldev* %0, %struct.hidma_lldev** %3, align 8
  %6 = load %struct.hidma_lldev*, %struct.hidma_lldev** %3, align 8
  %7 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %6, i32 0, i32 4
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @HIDMA_TRCA_CTRLSTS_REG, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @readl(i64 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* @HIDMA_CH_CONTROL_MASK, align 4
  %13 = shl i32 %12, 16
  %14 = xor i32 %13, -1
  %15 = load i32, i32* %4, align 4
  %16 = and i32 %15, %14
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* @HIDMA_CH_RESET, align 4
  %18 = shl i32 %17, 16
  %19 = load i32, i32* %4, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.hidma_lldev*, %struct.hidma_lldev** %3, align 8
  %23 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %22, i32 0, i32 4
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @HIDMA_TRCA_CTRLSTS_REG, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @writel(i32 %21, i64 %26)
  %28 = load %struct.hidma_lldev*, %struct.hidma_lldev** %3, align 8
  %29 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %28, i32 0, i32 4
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @HIDMA_TRCA_CTRLSTS_REG, align 8
  %32 = add nsw i64 %30, %31
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i64 @HIDMA_CH_STATE(i32 %34)
  %36 = load i64, i64* @HIDMA_CH_DISABLED, align 8
  %37 = icmp eq i64 %35, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 @readl_poll_timeout(i64 %32, i32 %33, i32 %38, i32 1000, i32 10000)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %1
  %43 = load %struct.hidma_lldev*, %struct.hidma_lldev** %3, align 8
  %44 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @dev_err(i32 %45, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %47 = load i32, i32* %5, align 4
  store i32 %47, i32* %2, align 4
  br label %94

48:                                               ; preds = %1
  %49 = load %struct.hidma_lldev*, %struct.hidma_lldev** %3, align 8
  %50 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @HIDMA_EVCA_CTRLSTS_REG, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @readl(i64 %53)
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* @HIDMA_CH_CONTROL_MASK, align 4
  %56 = shl i32 %55, 16
  %57 = xor i32 %56, -1
  %58 = load i32, i32* %4, align 4
  %59 = and i32 %58, %57
  store i32 %59, i32* %4, align 4
  %60 = load i32, i32* @HIDMA_CH_RESET, align 4
  %61 = shl i32 %60, 16
  %62 = load i32, i32* %4, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %4, align 4
  %64 = load i32, i32* %4, align 4
  %65 = load %struct.hidma_lldev*, %struct.hidma_lldev** %3, align 8
  %66 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @HIDMA_EVCA_CTRLSTS_REG, align 8
  %69 = add nsw i64 %67, %68
  %70 = call i32 @writel(i32 %64, i64 %69)
  %71 = load %struct.hidma_lldev*, %struct.hidma_lldev** %3, align 8
  %72 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @HIDMA_EVCA_CTRLSTS_REG, align 8
  %75 = add nsw i64 %73, %74
  %76 = load i32, i32* %4, align 4
  %77 = load i32, i32* %4, align 4
  %78 = call i64 @HIDMA_CH_STATE(i32 %77)
  %79 = load i64, i64* @HIDMA_CH_DISABLED, align 8
  %80 = icmp eq i64 %78, %79
  %81 = zext i1 %80 to i32
  %82 = call i32 @readl_poll_timeout(i64 %75, i32 %76, i32 %81, i32 1000, i32 10000)
  store i32 %82, i32* %5, align 4
  %83 = load i32, i32* %5, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %48
  %86 = load i32, i32* %5, align 4
  store i32 %86, i32* %2, align 4
  br label %94

87:                                               ; preds = %48
  %88 = load i64, i64* @HIDMA_CH_DISABLED, align 8
  %89 = load %struct.hidma_lldev*, %struct.hidma_lldev** %3, align 8
  %90 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %89, i32 0, i32 1
  store i64 %88, i64* %90, align 8
  %91 = load i64, i64* @HIDMA_CH_DISABLED, align 8
  %92 = load %struct.hidma_lldev*, %struct.hidma_lldev** %3, align 8
  %93 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %92, i32 0, i32 0
  store i64 %91, i64* %93, align 8
  store i32 0, i32* %2, align 4
  br label %94

94:                                               ; preds = %87, %85, %42
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl_poll_timeout(i64, i32, i32, i32, i32) #1

declare dso_local i64 @HIDMA_CH_STATE(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
