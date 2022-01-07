; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_stm32-dfsdm-adc.c_stm32_dfsdm_process_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_stm32-dfsdm-adc.c_stm32_dfsdm_process_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_dfsdm_adc = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.stm32_dfsdm_filter* }
%struct.stm32_dfsdm_filter = type { i64, %struct.stm32_dfsdm_filter_osr* }
%struct.stm32_dfsdm_filter_osr = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stm32_dfsdm_adc*, i32*)* @stm32_dfsdm_process_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stm32_dfsdm_process_data(%struct.stm32_dfsdm_adc* %0, i32* %1) #0 {
  %3 = alloca %struct.stm32_dfsdm_adc*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.stm32_dfsdm_filter*, align 8
  %6 = alloca %struct.stm32_dfsdm_filter_osr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.stm32_dfsdm_adc* %0, %struct.stm32_dfsdm_adc** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load %struct.stm32_dfsdm_adc*, %struct.stm32_dfsdm_adc** %3, align 8
  %10 = getelementptr inbounds %struct.stm32_dfsdm_adc, %struct.stm32_dfsdm_adc* %9, i32 0, i32 2
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.stm32_dfsdm_filter*, %struct.stm32_dfsdm_filter** %12, align 8
  %14 = load %struct.stm32_dfsdm_adc*, %struct.stm32_dfsdm_adc** %3, align 8
  %15 = getelementptr inbounds %struct.stm32_dfsdm_adc, %struct.stm32_dfsdm_adc* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.stm32_dfsdm_filter, %struct.stm32_dfsdm_filter* %13, i64 %16
  store %struct.stm32_dfsdm_filter* %17, %struct.stm32_dfsdm_filter** %5, align 8
  %18 = load %struct.stm32_dfsdm_filter*, %struct.stm32_dfsdm_filter** %5, align 8
  %19 = getelementptr inbounds %struct.stm32_dfsdm_filter, %struct.stm32_dfsdm_filter* %18, i32 0, i32 1
  %20 = load %struct.stm32_dfsdm_filter_osr*, %struct.stm32_dfsdm_filter_osr** %19, align 8
  %21 = load %struct.stm32_dfsdm_filter*, %struct.stm32_dfsdm_filter** %5, align 8
  %22 = getelementptr inbounds %struct.stm32_dfsdm_filter, %struct.stm32_dfsdm_filter* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.stm32_dfsdm_filter_osr, %struct.stm32_dfsdm_filter_osr* %20, i64 %23
  store %struct.stm32_dfsdm_filter_osr* %24, %struct.stm32_dfsdm_filter_osr** %6, align 8
  %25 = load %struct.stm32_dfsdm_adc*, %struct.stm32_dfsdm_adc** %3, align 8
  %26 = getelementptr inbounds %struct.stm32_dfsdm_adc, %struct.stm32_dfsdm_adc* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %7, align 4
  %28 = load i32*, i32** %4, align 8
  store i32* %28, i32** %8, align 8
  br label %29

29:                                               ; preds = %47, %2
  %30 = load i32, i32* %7, align 4
  %31 = add i32 %30, -1
  store i32 %31, i32* %7, align 4
  %32 = icmp ne i32 %30, 0
  br i1 %32, label %33, label %56

33:                                               ; preds = %29
  %34 = load i32*, i32** %8, align 8
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, -256
  store i32 %36, i32* %34, align 4
  %37 = load i32*, i32** %8, align 8
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.stm32_dfsdm_filter_osr*, %struct.stm32_dfsdm_filter_osr** %6, align 8
  %40 = getelementptr inbounds %struct.stm32_dfsdm_filter_osr, %struct.stm32_dfsdm_filter_osr* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp sgt i32 %38, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %33
  %44 = load i32*, i32** %8, align 8
  %45 = load i32, i32* %44, align 4
  %46 = sub nsw i32 %45, 1
  store i32 %46, i32* %44, align 4
  br label %47

47:                                               ; preds = %43, %33
  %48 = load %struct.stm32_dfsdm_filter_osr*, %struct.stm32_dfsdm_filter_osr** %6, align 8
  %49 = getelementptr inbounds %struct.stm32_dfsdm_filter_osr, %struct.stm32_dfsdm_filter_osr* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32*, i32** %8, align 8
  %52 = load i32, i32* %51, align 4
  %53 = shl i32 %52, %50
  store i32 %53, i32* %51, align 4
  %54 = load i32*, i32** %8, align 8
  %55 = getelementptr inbounds i32, i32* %54, i32 1
  store i32* %55, i32** %8, align 8
  br label %29

56:                                               ; preds = %29
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
