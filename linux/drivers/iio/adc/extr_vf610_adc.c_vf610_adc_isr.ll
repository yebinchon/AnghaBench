; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_vf610_adc.c_vf610_adc_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_vf610_adc.c_vf610_adc_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.vf610_adc = type { i32, i32*, i32, i64 }

@VF610_REG_ADC_HS = common dso_local global i64 0, align 8
@VF610_ADC_HS_COCO0 = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @vf610_adc_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vf610_adc_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca %struct.vf610_adc*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.iio_dev*
  store %struct.iio_dev* %9, %struct.iio_dev** %5, align 8
  %10 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %11 = call %struct.vf610_adc* @iio_priv(%struct.iio_dev* %10)
  store %struct.vf610_adc* %11, %struct.vf610_adc** %6, align 8
  %12 = load %struct.vf610_adc*, %struct.vf610_adc** %6, align 8
  %13 = getelementptr inbounds %struct.vf610_adc, %struct.vf610_adc* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @VF610_REG_ADC_HS, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @readl(i64 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @VF610_ADC_HS_COCO0, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %54

22:                                               ; preds = %2
  %23 = load %struct.vf610_adc*, %struct.vf610_adc** %6, align 8
  %24 = call i32 @vf610_adc_read_data(%struct.vf610_adc* %23)
  %25 = load %struct.vf610_adc*, %struct.vf610_adc** %6, align 8
  %26 = getelementptr inbounds %struct.vf610_adc, %struct.vf610_adc* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 8
  %27 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %28 = call i64 @iio_buffer_enabled(%struct.iio_dev* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %49

30:                                               ; preds = %22
  %31 = load %struct.vf610_adc*, %struct.vf610_adc** %6, align 8
  %32 = getelementptr inbounds %struct.vf610_adc, %struct.vf610_adc* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.vf610_adc*, %struct.vf610_adc** %6, align 8
  %35 = getelementptr inbounds %struct.vf610_adc, %struct.vf610_adc* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  store i32 %33, i32* %37, align 4
  %38 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %39 = load %struct.vf610_adc*, %struct.vf610_adc** %6, align 8
  %40 = getelementptr inbounds %struct.vf610_adc, %struct.vf610_adc* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %43 = call i32 @iio_get_time_ns(%struct.iio_dev* %42)
  %44 = call i32 @iio_push_to_buffers_with_timestamp(%struct.iio_dev* %38, i32* %41, i32 %43)
  %45 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %46 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @iio_trigger_notify_done(i32 %47)
  br label %53

49:                                               ; preds = %22
  %50 = load %struct.vf610_adc*, %struct.vf610_adc** %6, align 8
  %51 = getelementptr inbounds %struct.vf610_adc, %struct.vf610_adc* %50, i32 0, i32 0
  %52 = call i32 @complete(i32* %51)
  br label %53

53:                                               ; preds = %49, %30
  br label %54

54:                                               ; preds = %53, %2
  %55 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %55
}

declare dso_local %struct.vf610_adc* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @vf610_adc_read_data(%struct.vf610_adc*) #1

declare dso_local i64 @iio_buffer_enabled(%struct.iio_dev*) #1

declare dso_local i32 @iio_push_to_buffers_with_timestamp(%struct.iio_dev*, i32*, i32) #1

declare dso_local i32 @iio_get_time_ns(%struct.iio_dev*) #1

declare dso_local i32 @iio_trigger_notify_done(i32) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
