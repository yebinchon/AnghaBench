; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_at91-sama5d2_adc.c_at91_adc_trigger_handler_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_at91-sama5d2_adc.c_at91_adc_trigger_handler_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.at91_adc_state = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i64, i32* }

@AT91_SAMA5D2_ISR = common dso_local global i32 0, align 4
@AT91_SAMA5D2_IER_GOVRE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"%s: conversion overrun detected\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iio_dev*)* @at91_adc_trigger_handler_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @at91_adc_trigger_handler_dma(%struct.iio_dev* %0) #0 {
  %2 = alloca %struct.iio_dev*, align 8
  %3 = alloca %struct.at91_adc_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %2, align 8
  %11 = load %struct.iio_dev*, %struct.iio_dev** %2, align 8
  %12 = call %struct.at91_adc_state* @iio_priv(%struct.iio_dev* %11)
  store %struct.at91_adc_state* %12, %struct.at91_adc_state** %3, align 8
  %13 = load %struct.at91_adc_state*, %struct.at91_adc_state** %3, align 8
  %14 = call i32 @at91_adc_dma_size_done(%struct.at91_adc_state* %13)
  store i32 %14, i32* %4, align 4
  %15 = load %struct.iio_dev*, %struct.iio_dev** %2, align 8
  %16 = call i8* @iio_get_time_ns(%struct.iio_dev* %15)
  %17 = ptrtoint i8* %16 to i32
  store i32 %17, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %18 = load %struct.at91_adc_state*, %struct.at91_adc_state** %3, align 8
  %19 = load i32, i32* @AT91_SAMA5D2_ISR, align 4
  %20 = call i32 @at91_adc_readl(%struct.at91_adc_state* %18, i32 %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* @AT91_SAMA5D2_IER_GOVRE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %1
  %26 = load %struct.iio_dev*, %struct.iio_dev** %2, align 8
  %27 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @pr_info_ratelimited(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %28)
  br label %30

30:                                               ; preds = %25, %1
  %31 = load %struct.at91_adc_state*, %struct.at91_adc_state** %3, align 8
  %32 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.at91_adc_state*, %struct.at91_adc_state** %3, align 8
  %36 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @div_s64(i32 %34, i32 %38)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @div_s64(i32 %40, i32 %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %5, align 4
  %44 = load %struct.at91_adc_state*, %struct.at91_adc_state** %3, align 8
  %45 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = sub nsw i32 %43, %47
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @div_s64(i32 %48, i32 %49)
  store i32 %50, i32* %6, align 4
  br label %51

51:                                               ; preds = %111, %30
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp sge i32 %52, %53
  br i1 %54, label %55, label %114

55:                                               ; preds = %51
  %56 = load %struct.at91_adc_state*, %struct.at91_adc_state** %3, align 8
  %57 = load %struct.at91_adc_state*, %struct.at91_adc_state** %3, align 8
  %58 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 4
  %60 = load i32*, i32** %59, align 8
  %61 = load %struct.at91_adc_state*, %struct.at91_adc_state** %3, align 8
  %62 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds i32, i32* %60, i64 %64
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @at91_adc_adjust_val_osr_array(%struct.at91_adc_state* %56, i32* %65, i32 %66)
  %68 = load %struct.iio_dev*, %struct.iio_dev** %2, align 8
  %69 = load %struct.at91_adc_state*, %struct.at91_adc_state** %3, align 8
  %70 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 4
  %72 = load i32*, i32** %71, align 8
  %73 = load %struct.at91_adc_state*, %struct.at91_adc_state** %3, align 8
  %74 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = getelementptr inbounds i32, i32* %72, i64 %76
  %78 = load %struct.at91_adc_state*, %struct.at91_adc_state** %3, align 8
  %79 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* %7, align 4
  %84 = mul nsw i32 %82, %83
  %85 = add nsw i32 %81, %84
  %86 = call i32 @iio_push_to_buffers_with_timestamp(%struct.iio_dev* %68, i32* %77, i32 %85)
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* %4, align 4
  %89 = sub nsw i32 %88, %87
  store i32 %89, i32* %4, align 4
  %90 = load i32, i32* %9, align 4
  %91 = sext i32 %90 to i64
  %92 = load %struct.at91_adc_state*, %struct.at91_adc_state** %3, align 8
  %93 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 3
  %95 = load i64, i64* %94, align 8
  %96 = add i64 %95, %91
  store i64 %96, i64* %94, align 8
  %97 = load %struct.at91_adc_state*, %struct.at91_adc_state** %3, align 8
  %98 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.at91_adc_state*, %struct.at91_adc_state** %3, align 8
  %102 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = sext i32 %104 to i64
  %106 = icmp uge i64 %100, %105
  br i1 %106, label %107, label %111

107:                                              ; preds = %55
  %108 = load %struct.at91_adc_state*, %struct.at91_adc_state** %3, align 8
  %109 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 3
  store i64 0, i64* %110, align 8
  br label %111

111:                                              ; preds = %107, %55
  %112 = load i32, i32* %7, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %7, align 4
  br label %51

114:                                              ; preds = %51
  %115 = load %struct.iio_dev*, %struct.iio_dev** %2, align 8
  %116 = call i8* @iio_get_time_ns(%struct.iio_dev* %115)
  %117 = ptrtoint i8* %116 to i32
  %118 = load %struct.at91_adc_state*, %struct.at91_adc_state** %3, align 8
  %119 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 2
  store i32 %117, i32* %120, align 8
  ret void
}

declare dso_local %struct.at91_adc_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @at91_adc_dma_size_done(%struct.at91_adc_state*) #1

declare dso_local i8* @iio_get_time_ns(%struct.iio_dev*) #1

declare dso_local i32 @at91_adc_readl(%struct.at91_adc_state*, i32) #1

declare dso_local i32 @pr_info_ratelimited(i8*, i32) #1

declare dso_local i32 @div_s64(i32, i32) #1

declare dso_local i32 @at91_adc_adjust_val_osr_array(%struct.at91_adc_state*, i32*, i32) #1

declare dso_local i32 @iio_push_to_buffers_with_timestamp(%struct.iio_dev*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
