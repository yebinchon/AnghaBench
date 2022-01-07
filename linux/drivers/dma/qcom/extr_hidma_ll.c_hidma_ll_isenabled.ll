; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/qcom/extr_hidma_ll.c_hidma_ll_isenabled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/qcom/extr_hidma_ll.c_hidma_ll_isenabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hidma_lldev = type { i8*, i8*, i64, i64 }

@HIDMA_TRCA_CTRLSTS_REG = common dso_local global i64 0, align 8
@HIDMA_EVCA_CTRLSTS_REG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hidma_ll_isenabled(%struct.hidma_lldev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hidma_lldev*, align 8
  %4 = alloca i32, align 4
  store %struct.hidma_lldev* %0, %struct.hidma_lldev** %3, align 8
  %5 = load %struct.hidma_lldev*, %struct.hidma_lldev** %3, align 8
  %6 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %5, i32 0, i32 3
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @HIDMA_TRCA_CTRLSTS_REG, align 8
  %9 = add nsw i64 %7, %8
  %10 = call i32 @readl(i64 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i8* @HIDMA_CH_STATE(i32 %11)
  %13 = load %struct.hidma_lldev*, %struct.hidma_lldev** %3, align 8
  %14 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %13, i32 0, i32 1
  store i8* %12, i8** %14, align 8
  %15 = load %struct.hidma_lldev*, %struct.hidma_lldev** %3, align 8
  %16 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @HIDMA_EVCA_CTRLSTS_REG, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @readl(i64 %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i8* @HIDMA_CH_STATE(i32 %21)
  %23 = load %struct.hidma_lldev*, %struct.hidma_lldev** %3, align 8
  %24 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %23, i32 0, i32 0
  store i8* %22, i8** %24, align 8
  %25 = load %struct.hidma_lldev*, %struct.hidma_lldev** %3, align 8
  %26 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %25, i32 0, i32 1
  %27 = load i8*, i8** %26, align 8
  %28 = call i64 @hidma_is_chan_enabled(i8* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %1
  %31 = load %struct.hidma_lldev*, %struct.hidma_lldev** %3, align 8
  %32 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = call i64 @hidma_is_chan_enabled(i8* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  store i32 1, i32* %2, align 4
  br label %38

37:                                               ; preds = %30, %1
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %37, %36
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @readl(i64) #1

declare dso_local i8* @HIDMA_CH_STATE(i32) #1

declare dso_local i64 @hidma_is_chan_enabled(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
