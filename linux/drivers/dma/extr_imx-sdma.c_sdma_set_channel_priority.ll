; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_imx-sdma.c_sdma_set_channel_priority.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_imx-sdma.c_sdma_set_channel_priority.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdma_channel = type { i32, %struct.sdma_engine* }
%struct.sdma_engine = type { i64 }

@MXC_SDMA_MIN_PRIORITY = common dso_local global i32 0, align 4
@MXC_SDMA_MAX_PRIORITY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SDMA_CHNPRI_0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdma_channel*, i32)* @sdma_set_channel_priority to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdma_set_channel_priority(%struct.sdma_channel* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sdma_channel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sdma_engine*, align 8
  %7 = alloca i32, align 4
  store %struct.sdma_channel* %0, %struct.sdma_channel** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.sdma_channel*, %struct.sdma_channel** %4, align 8
  %9 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %8, i32 0, i32 1
  %10 = load %struct.sdma_engine*, %struct.sdma_engine** %9, align 8
  store %struct.sdma_engine* %10, %struct.sdma_engine** %6, align 8
  %11 = load %struct.sdma_channel*, %struct.sdma_channel** %4, align 8
  %12 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @MXC_SDMA_MIN_PRIORITY, align 4
  %16 = icmp ult i32 %14, %15
  br i1 %16, label %21, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @MXC_SDMA_MAX_PRIORITY, align 4
  %20 = icmp ugt i32 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %17, %2
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %36

24:                                               ; preds = %17
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.sdma_engine*, %struct.sdma_engine** %6, align 8
  %27 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @SDMA_CHNPRI_0, align 8
  %30 = add nsw i64 %28, %29
  %31 = load i32, i32* %7, align 4
  %32 = mul nsw i32 4, %31
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %30, %33
  %35 = call i32 @writel_relaxed(i32 %25, i64 %34)
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %24, %21
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @writel_relaxed(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
