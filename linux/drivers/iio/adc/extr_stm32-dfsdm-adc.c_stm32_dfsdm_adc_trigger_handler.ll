; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_stm32-dfsdm-adc.c_stm32_dfsdm_adc_trigger_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_stm32-dfsdm-adc.c_stm32_dfsdm_adc_trigger_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_poll_func = type { i32, %struct.iio_dev* }
%struct.iio_dev = type { i32, i32 }
%struct.stm32_dfsdm_adc = type { i64, i64, i32* }

@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @stm32_dfsdm_adc_trigger_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_dfsdm_adc_trigger_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.iio_poll_func*, align 8
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.stm32_dfsdm_adc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.iio_poll_func*
  store %struct.iio_poll_func* %11, %struct.iio_poll_func** %5, align 8
  %12 = load %struct.iio_poll_func*, %struct.iio_poll_func** %5, align 8
  %13 = getelementptr inbounds %struct.iio_poll_func, %struct.iio_poll_func* %12, i32 0, i32 1
  %14 = load %struct.iio_dev*, %struct.iio_dev** %13, align 8
  store %struct.iio_dev* %14, %struct.iio_dev** %6, align 8
  %15 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %16 = call %struct.stm32_dfsdm_adc* @iio_priv(%struct.iio_dev* %15)
  store %struct.stm32_dfsdm_adc* %16, %struct.stm32_dfsdm_adc** %7, align 8
  %17 = load %struct.stm32_dfsdm_adc*, %struct.stm32_dfsdm_adc** %7, align 8
  %18 = call i32 @stm32_dfsdm_adc_dma_residue(%struct.stm32_dfsdm_adc* %17)
  store i32 %18, i32* %8, align 4
  br label %19

19:                                               ; preds = %65, %2
  %20 = load i32, i32* %8, align 4
  %21 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %22 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp sge i32 %20, %23
  br i1 %24, label %25, label %66

25:                                               ; preds = %19
  %26 = load %struct.stm32_dfsdm_adc*, %struct.stm32_dfsdm_adc** %7, align 8
  %27 = getelementptr inbounds %struct.stm32_dfsdm_adc, %struct.stm32_dfsdm_adc* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = load %struct.stm32_dfsdm_adc*, %struct.stm32_dfsdm_adc** %7, align 8
  %30 = getelementptr inbounds %struct.stm32_dfsdm_adc, %struct.stm32_dfsdm_adc* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds i32, i32* %28, i64 %31
  store i32* %32, i32** %9, align 8
  %33 = load %struct.stm32_dfsdm_adc*, %struct.stm32_dfsdm_adc** %7, align 8
  %34 = load i32*, i32** %9, align 8
  %35 = call i32 @stm32_dfsdm_process_data(%struct.stm32_dfsdm_adc* %33, i32* %34)
  %36 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %37 = load i32*, i32** %9, align 8
  %38 = load %struct.iio_poll_func*, %struct.iio_poll_func** %5, align 8
  %39 = getelementptr inbounds %struct.iio_poll_func, %struct.iio_poll_func* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @iio_push_to_buffers_with_timestamp(%struct.iio_dev* %36, i32* %37, i32 %40)
  %42 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %43 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %8, align 4
  %46 = sub nsw i32 %45, %44
  store i32 %46, i32* %8, align 4
  %47 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %48 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = sext i32 %49 to i64
  %51 = load %struct.stm32_dfsdm_adc*, %struct.stm32_dfsdm_adc** %7, align 8
  %52 = getelementptr inbounds %struct.stm32_dfsdm_adc, %struct.stm32_dfsdm_adc* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = add i64 %53, %50
  store i64 %54, i64* %52, align 8
  %55 = load %struct.stm32_dfsdm_adc*, %struct.stm32_dfsdm_adc** %7, align 8
  %56 = getelementptr inbounds %struct.stm32_dfsdm_adc, %struct.stm32_dfsdm_adc* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.stm32_dfsdm_adc*, %struct.stm32_dfsdm_adc** %7, align 8
  %59 = getelementptr inbounds %struct.stm32_dfsdm_adc, %struct.stm32_dfsdm_adc* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp uge i64 %57, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %25
  %63 = load %struct.stm32_dfsdm_adc*, %struct.stm32_dfsdm_adc** %7, align 8
  %64 = getelementptr inbounds %struct.stm32_dfsdm_adc, %struct.stm32_dfsdm_adc* %63, i32 0, i32 0
  store i64 0, i64* %64, align 8
  br label %65

65:                                               ; preds = %62, %25
  br label %19

66:                                               ; preds = %19
  %67 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %68 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @iio_trigger_notify_done(i32 %69)
  %71 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %71
}

declare dso_local %struct.stm32_dfsdm_adc* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @stm32_dfsdm_adc_dma_residue(%struct.stm32_dfsdm_adc*) #1

declare dso_local i32 @stm32_dfsdm_process_data(%struct.stm32_dfsdm_adc*, i32*) #1

declare dso_local i32 @iio_push_to_buffers_with_timestamp(%struct.iio_dev*, i32*, i32) #1

declare dso_local i32 @iio_trigger_notify_done(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
