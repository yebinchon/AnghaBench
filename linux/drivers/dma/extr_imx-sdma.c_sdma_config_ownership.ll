; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_imx-sdma.c_sdma_config_ownership.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_imx-sdma.c_sdma_config_ownership.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdma_channel = type { i32, %struct.sdma_engine* }
%struct.sdma_engine = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@SDMA_H_EVTOVR = common dso_local global i64 0, align 8
@SDMA_H_HOSTOVR = common dso_local global i64 0, align 8
@SDMA_H_DSPOVR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdma_channel*, i32, i32, i32)* @sdma_config_ownership to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdma_config_ownership(%struct.sdma_channel* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sdma_channel*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sdma_engine*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.sdma_channel* %0, %struct.sdma_channel** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load %struct.sdma_channel*, %struct.sdma_channel** %6, align 8
  %16 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %15, i32 0, i32 1
  %17 = load %struct.sdma_engine*, %struct.sdma_engine** %16, align 8
  store %struct.sdma_engine* %17, %struct.sdma_engine** %10, align 8
  %18 = load %struct.sdma_channel*, %struct.sdma_channel** %6, align 8
  %19 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %99

32:                                               ; preds = %26, %23, %4
  %33 = load %struct.sdma_engine*, %struct.sdma_engine** %10, align 8
  %34 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @SDMA_H_EVTOVR, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i64 @readl_relaxed(i64 %37)
  store i64 %38, i64* %12, align 8
  %39 = load %struct.sdma_engine*, %struct.sdma_engine** %10, align 8
  %40 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @SDMA_H_HOSTOVR, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i64 @readl_relaxed(i64 %43)
  store i64 %44, i64* %13, align 8
  %45 = load %struct.sdma_engine*, %struct.sdma_engine** %10, align 8
  %46 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @SDMA_H_DSPOVR, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i64 @readl_relaxed(i64 %49)
  store i64 %50, i64* %14, align 8
  %51 = load i32, i32* %9, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %32
  %54 = load i32, i32* %11, align 4
  %55 = call i32 @__clear_bit(i32 %54, i64* %14)
  br label %59

56:                                               ; preds = %32
  %57 = load i32, i32* %11, align 4
  %58 = call i32 @__set_bit(i32 %57, i64* %14)
  br label %59

59:                                               ; preds = %56, %53
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load i32, i32* %11, align 4
  %64 = call i32 @__clear_bit(i32 %63, i64* %12)
  br label %68

65:                                               ; preds = %59
  %66 = load i32, i32* %11, align 4
  %67 = call i32 @__set_bit(i32 %66, i64* %12)
  br label %68

68:                                               ; preds = %65, %62
  %69 = load i32, i32* %8, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load i32, i32* %11, align 4
  %73 = call i32 @__clear_bit(i32 %72, i64* %13)
  br label %77

74:                                               ; preds = %68
  %75 = load i32, i32* %11, align 4
  %76 = call i32 @__set_bit(i32 %75, i64* %13)
  br label %77

77:                                               ; preds = %74, %71
  %78 = load i64, i64* %12, align 8
  %79 = load %struct.sdma_engine*, %struct.sdma_engine** %10, align 8
  %80 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @SDMA_H_EVTOVR, align 8
  %83 = add nsw i64 %81, %82
  %84 = call i32 @writel_relaxed(i64 %78, i64 %83)
  %85 = load i64, i64* %13, align 8
  %86 = load %struct.sdma_engine*, %struct.sdma_engine** %10, align 8
  %87 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @SDMA_H_HOSTOVR, align 8
  %90 = add nsw i64 %88, %89
  %91 = call i32 @writel_relaxed(i64 %85, i64 %90)
  %92 = load i64, i64* %14, align 8
  %93 = load %struct.sdma_engine*, %struct.sdma_engine** %10, align 8
  %94 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @SDMA_H_DSPOVR, align 8
  %97 = add nsw i64 %95, %96
  %98 = call i32 @writel_relaxed(i64 %92, i64 %97)
  store i32 0, i32* %5, align 4
  br label %99

99:                                               ; preds = %77, %29
  %100 = load i32, i32* %5, align 4
  ret i32 %100
}

declare dso_local i64 @readl_relaxed(i64) #1

declare dso_local i32 @__clear_bit(i32, i64*) #1

declare dso_local i32 @__set_bit(i32, i64*) #1

declare dso_local i32 @writel_relaxed(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
