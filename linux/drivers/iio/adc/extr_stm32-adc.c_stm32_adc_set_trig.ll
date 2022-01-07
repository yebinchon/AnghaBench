; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_stm32-adc.c_stm32_adc_set_trig.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_stm32-adc.c_stm32_adc_set_trig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_trigger = type { i32 }
%struct.stm32_adc = type { i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@STM32_EXTEN_SWTRIG = common dso_local global i32 0, align 4
@STM32_EXTEN_HWTRIG_RISING_EDGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_trigger*)* @stm32_adc_set_trig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_adc_set_trig(%struct.iio_dev* %0, %struct.iio_trigger* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iio_dev*, align 8
  %5 = alloca %struct.iio_trigger*, align 8
  %6 = alloca %struct.stm32_adc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %4, align 8
  store %struct.iio_trigger* %1, %struct.iio_trigger** %5, align 8
  %12 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %13 = call %struct.stm32_adc* @iio_priv(%struct.iio_dev* %12)
  store %struct.stm32_adc* %13, %struct.stm32_adc** %6, align 8
  store i32 0, i32* %8, align 4
  %14 = load i32, i32* @STM32_EXTEN_SWTRIG, align 4
  store i32 %14, i32* %9, align 4
  %15 = load %struct.iio_trigger*, %struct.iio_trigger** %5, align 8
  %16 = icmp ne %struct.iio_trigger* %15, null
  br i1 %16, label %17, label %32

17:                                               ; preds = %2
  %18 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %19 = load %struct.iio_trigger*, %struct.iio_trigger** %5, align 8
  %20 = call i32 @stm32_adc_get_trig_extsel(%struct.iio_dev* %18, %struct.iio_trigger* %19)
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i32, i32* %11, align 4
  store i32 %24, i32* %3, align 4
  br label %106

25:                                               ; preds = %17
  %26 = load i32, i32* %11, align 4
  store i32 %26, i32* %8, align 4
  %27 = load %struct.stm32_adc*, %struct.stm32_adc** %6, align 8
  %28 = getelementptr inbounds %struct.stm32_adc, %struct.stm32_adc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @STM32_EXTEN_HWTRIG_RISING_EDGE, align 4
  %31 = add nsw i32 %29, %30
  store i32 %31, i32* %9, align 4
  br label %32

32:                                               ; preds = %25, %2
  %33 = load %struct.stm32_adc*, %struct.stm32_adc** %6, align 8
  %34 = getelementptr inbounds %struct.stm32_adc, %struct.stm32_adc* %33, i32 0, i32 1
  %35 = load i64, i64* %10, align 8
  %36 = call i32 @spin_lock_irqsave(i32* %34, i64 %35)
  %37 = load %struct.stm32_adc*, %struct.stm32_adc** %6, align 8
  %38 = load %struct.stm32_adc*, %struct.stm32_adc** %6, align 8
  %39 = getelementptr inbounds %struct.stm32_adc, %struct.stm32_adc* %38, i32 0, i32 2
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @stm32_adc_readl(%struct.stm32_adc* %37, i32 %45)
  store i32 %46, i32* %7, align 4
  %47 = load %struct.stm32_adc*, %struct.stm32_adc** %6, align 8
  %48 = getelementptr inbounds %struct.stm32_adc, %struct.stm32_adc* %47, i32 0, i32 2
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.stm32_adc*, %struct.stm32_adc** %6, align 8
  %56 = getelementptr inbounds %struct.stm32_adc, %struct.stm32_adc* %55, i32 0, i32 2
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %54, %62
  %64 = xor i32 %63, -1
  %65 = load i32, i32* %7, align 4
  %66 = and i32 %65, %64
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %9, align 4
  %68 = load %struct.stm32_adc*, %struct.stm32_adc** %6, align 8
  %69 = getelementptr inbounds %struct.stm32_adc, %struct.stm32_adc* %68, i32 0, i32 2
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = shl i32 %67, %75
  %77 = load i32, i32* %7, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* %8, align 4
  %80 = load %struct.stm32_adc*, %struct.stm32_adc** %6, align 8
  %81 = getelementptr inbounds %struct.stm32_adc, %struct.stm32_adc* %80, i32 0, i32 2
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = shl i32 %79, %87
  %89 = load i32, i32* %7, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %7, align 4
  %91 = load %struct.stm32_adc*, %struct.stm32_adc** %6, align 8
  %92 = load %struct.stm32_adc*, %struct.stm32_adc** %6, align 8
  %93 = getelementptr inbounds %struct.stm32_adc, %struct.stm32_adc* %92, i32 0, i32 2
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %7, align 4
  %101 = call i32 @stm32_adc_writel(%struct.stm32_adc* %91, i32 %99, i32 %100)
  %102 = load %struct.stm32_adc*, %struct.stm32_adc** %6, align 8
  %103 = getelementptr inbounds %struct.stm32_adc, %struct.stm32_adc* %102, i32 0, i32 1
  %104 = load i64, i64* %10, align 8
  %105 = call i32 @spin_unlock_irqrestore(i32* %103, i64 %104)
  store i32 0, i32* %3, align 4
  br label %106

106:                                              ; preds = %32, %23
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local %struct.stm32_adc* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @stm32_adc_get_trig_extsel(%struct.iio_dev*, %struct.iio_trigger*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @stm32_adc_readl(%struct.stm32_adc*, i32) #1

declare dso_local i32 @stm32_adc_writel(%struct.stm32_adc*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
