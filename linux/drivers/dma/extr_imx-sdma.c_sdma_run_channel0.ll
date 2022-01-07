; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_imx-sdma.c_sdma_run_channel0.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_imx-sdma.c_sdma_run_channel0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdma_engine = type { i64, i32 }

@SDMA_H_STATSTOP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"Timeout waiting for CH0 ready\0A\00", align 1
@SDMA_H_CONFIG = common dso_local global i64 0, align 8
@SDMA_H_CONFIG_CSM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdma_engine*)* @sdma_run_channel0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdma_run_channel0(%struct.sdma_engine* %0) #0 {
  %2 = alloca %struct.sdma_engine*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.sdma_engine* %0, %struct.sdma_engine** %2, align 8
  %5 = load %struct.sdma_engine*, %struct.sdma_engine** %2, align 8
  %6 = call i32 @sdma_enable_channel(%struct.sdma_engine* %5, i32 0)
  %7 = load %struct.sdma_engine*, %struct.sdma_engine** %2, align 8
  %8 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @SDMA_H_STATSTOP, align 8
  %11 = add nsw i64 %9, %10
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = and i32 %13, 1
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i32 @readl_relaxed_poll_timeout_atomic(i64 %11, i32 %12, i32 %17, i32 1, i32 500)
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %1
  %22 = load %struct.sdma_engine*, %struct.sdma_engine** %2, align 8
  %23 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @dev_err(i32 %24, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %21, %1
  %27 = load %struct.sdma_engine*, %struct.sdma_engine** %2, align 8
  %28 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @SDMA_H_CONFIG, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @readl(i64 %31)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @SDMA_H_CONFIG_CSM, align 4
  %35 = and i32 %33, %34
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %26
  %38 = load i32, i32* @SDMA_H_CONFIG_CSM, align 4
  %39 = load i32, i32* %4, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = load %struct.sdma_engine*, %struct.sdma_engine** %2, align 8
  %43 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @SDMA_H_CONFIG, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @writel_relaxed(i32 %41, i64 %46)
  br label %48

48:                                               ; preds = %37, %26
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @sdma_enable_channel(%struct.sdma_engine*, i32) #1

declare dso_local i32 @readl_relaxed_poll_timeout_atomic(i64, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
