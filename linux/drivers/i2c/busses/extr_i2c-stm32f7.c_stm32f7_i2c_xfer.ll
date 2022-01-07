; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-stm32f7.c_stm32f7_i2c_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-stm32f7.c_stm32f7_i2c_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i32 }
%struct.stm32f7_i2c_dev = type { i32, i32, i64, %struct.i2c_msg*, %struct.TYPE_2__, i32, i64, %struct.stm32_i2c_dma*, %struct.stm32f7_i2c_msg }
%struct.TYPE_2__ = type { i32 }
%struct.stm32_i2c_dma = type { i32 }
%struct.stm32f7_i2c_msg = type { i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"Access to slave 0x%x timed out\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @stm32f7_i2c_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32f7_i2c_xfer(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.i2c_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.stm32f7_i2c_dev*, align 8
  %9 = alloca %struct.stm32f7_i2c_msg*, align 8
  %10 = alloca %struct.stm32_i2c_dma*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %5, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %14 = call %struct.stm32f7_i2c_dev* @i2c_get_adapdata(%struct.i2c_adapter* %13)
  store %struct.stm32f7_i2c_dev* %14, %struct.stm32f7_i2c_dev** %8, align 8
  %15 = load %struct.stm32f7_i2c_dev*, %struct.stm32f7_i2c_dev** %8, align 8
  %16 = getelementptr inbounds %struct.stm32f7_i2c_dev, %struct.stm32f7_i2c_dev* %15, i32 0, i32 8
  store %struct.stm32f7_i2c_msg* %16, %struct.stm32f7_i2c_msg** %9, align 8
  %17 = load %struct.stm32f7_i2c_dev*, %struct.stm32f7_i2c_dev** %8, align 8
  %18 = getelementptr inbounds %struct.stm32f7_i2c_dev, %struct.stm32f7_i2c_dev* %17, i32 0, i32 7
  %19 = load %struct.stm32_i2c_dma*, %struct.stm32_i2c_dma** %18, align 8
  store %struct.stm32_i2c_dma* %19, %struct.stm32_i2c_dma** %10, align 8
  %20 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %21 = load %struct.stm32f7_i2c_dev*, %struct.stm32f7_i2c_dev** %8, align 8
  %22 = getelementptr inbounds %struct.stm32f7_i2c_dev, %struct.stm32f7_i2c_dev* %21, i32 0, i32 3
  store %struct.i2c_msg* %20, %struct.i2c_msg** %22, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.stm32f7_i2c_dev*, %struct.stm32f7_i2c_dev** %8, align 8
  %25 = getelementptr inbounds %struct.stm32f7_i2c_dev, %struct.stm32f7_i2c_dev* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.stm32f7_i2c_dev*, %struct.stm32f7_i2c_dev** %8, align 8
  %27 = getelementptr inbounds %struct.stm32f7_i2c_dev, %struct.stm32f7_i2c_dev* %26, i32 0, i32 6
  store i64 0, i64* %27, align 8
  %28 = load %struct.stm32f7_i2c_msg*, %struct.stm32f7_i2c_msg** %9, align 8
  %29 = getelementptr inbounds %struct.stm32f7_i2c_msg, %struct.stm32f7_i2c_msg* %28, i32 0, i32 0
  store i32 0, i32* %29, align 4
  %30 = load %struct.stm32f7_i2c_dev*, %struct.stm32f7_i2c_dev** %8, align 8
  %31 = getelementptr inbounds %struct.stm32f7_i2c_dev, %struct.stm32f7_i2c_dev* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @pm_runtime_get_sync(i32 %32)
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %12, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %3
  %37 = load i32, i32* %12, align 4
  store i32 %37, i32* %4, align 4
  br label %100

38:                                               ; preds = %3
  %39 = load %struct.stm32f7_i2c_dev*, %struct.stm32f7_i2c_dev** %8, align 8
  %40 = call i32 @stm32f7_i2c_wait_free_bus(%struct.stm32f7_i2c_dev* %39)
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %12, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %83

44:                                               ; preds = %38
  %45 = load %struct.stm32f7_i2c_dev*, %struct.stm32f7_i2c_dev** %8, align 8
  %46 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %47 = call i32 @stm32f7_i2c_xfer_msg(%struct.stm32f7_i2c_dev* %45, %struct.i2c_msg* %46)
  %48 = load %struct.stm32f7_i2c_dev*, %struct.stm32f7_i2c_dev** %8, align 8
  %49 = getelementptr inbounds %struct.stm32f7_i2c_dev, %struct.stm32f7_i2c_dev* %48, i32 0, i32 5
  %50 = load %struct.stm32f7_i2c_dev*, %struct.stm32f7_i2c_dev** %8, align 8
  %51 = getelementptr inbounds %struct.stm32f7_i2c_dev, %struct.stm32f7_i2c_dev* %50, i32 0, i32 4
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i64 @wait_for_completion_timeout(i32* %49, i32 %53)
  store i64 %54, i64* %11, align 8
  %55 = load %struct.stm32f7_i2c_msg*, %struct.stm32f7_i2c_msg** %9, align 8
  %56 = getelementptr inbounds %struct.stm32f7_i2c_msg, %struct.stm32f7_i2c_msg* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %12, align 4
  %58 = load i64, i64* %11, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %82, label %60

60:                                               ; preds = %44
  %61 = load %struct.stm32f7_i2c_dev*, %struct.stm32f7_i2c_dev** %8, align 8
  %62 = getelementptr inbounds %struct.stm32f7_i2c_dev, %struct.stm32f7_i2c_dev* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.stm32f7_i2c_dev*, %struct.stm32f7_i2c_dev** %8, align 8
  %65 = getelementptr inbounds %struct.stm32f7_i2c_dev, %struct.stm32f7_i2c_dev* %64, i32 0, i32 3
  %66 = load %struct.i2c_msg*, %struct.i2c_msg** %65, align 8
  %67 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @dev_dbg(i32 %63, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %68)
  %70 = load %struct.stm32f7_i2c_dev*, %struct.stm32f7_i2c_dev** %8, align 8
  %71 = getelementptr inbounds %struct.stm32f7_i2c_dev, %struct.stm32f7_i2c_dev* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %60
  %75 = load %struct.stm32_i2c_dma*, %struct.stm32_i2c_dma** %10, align 8
  %76 = getelementptr inbounds %struct.stm32_i2c_dma, %struct.stm32_i2c_dma* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @dmaengine_terminate_all(i32 %77)
  br label %79

79:                                               ; preds = %74, %60
  %80 = load i32, i32* @ETIMEDOUT, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %12, align 4
  br label %82

82:                                               ; preds = %79, %44
  br label %83

83:                                               ; preds = %82, %43
  %84 = load %struct.stm32f7_i2c_dev*, %struct.stm32f7_i2c_dev** %8, align 8
  %85 = getelementptr inbounds %struct.stm32f7_i2c_dev, %struct.stm32f7_i2c_dev* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @pm_runtime_mark_last_busy(i32 %86)
  %88 = load %struct.stm32f7_i2c_dev*, %struct.stm32f7_i2c_dev** %8, align 8
  %89 = getelementptr inbounds %struct.stm32f7_i2c_dev, %struct.stm32f7_i2c_dev* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @pm_runtime_put_autosuspend(i32 %90)
  %92 = load i32, i32* %12, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %83
  %95 = load i32, i32* %12, align 4
  br label %98

96:                                               ; preds = %83
  %97 = load i32, i32* %7, align 4
  br label %98

98:                                               ; preds = %96, %94
  %99 = phi i32 [ %95, %94 ], [ %97, %96 ]
  store i32 %99, i32* %4, align 4
  br label %100

100:                                              ; preds = %98, %36
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

declare dso_local %struct.stm32f7_i2c_dev* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @stm32f7_i2c_wait_free_bus(%struct.stm32f7_i2c_dev*) #1

declare dso_local i32 @stm32f7_i2c_xfer_msg(%struct.stm32f7_i2c_dev*, %struct.i2c_msg*) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @dmaengine_terminate_all(i32) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
