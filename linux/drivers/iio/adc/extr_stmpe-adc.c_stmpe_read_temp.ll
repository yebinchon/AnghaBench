; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_stmpe-adc.c_stmpe_read_temp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_stmpe-adc.c_stmpe_read_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stmpe_adc = type { i64, i64, i32, i32, i32 }
%struct.iio_chan_spec = type { i64 }

@STMPE_TEMP_CHANNEL = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@STMPE_REG_TEMP_CTRL = common dso_local global i32 0, align 4
@STMPE_START_ONE_TEMP_CONV = common dso_local global i32 0, align 4
@STMPE_ADC_TIMEOUT = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stmpe_adc*, %struct.iio_chan_spec*, i32*)* @stmpe_read_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stmpe_read_temp(%struct.stmpe_adc* %0, %struct.iio_chan_spec* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.stmpe_adc*, align 8
  %6 = alloca %struct.iio_chan_spec*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  store %struct.stmpe_adc* %0, %struct.stmpe_adc** %5, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load %struct.stmpe_adc*, %struct.stmpe_adc** %5, align 8
  %10 = getelementptr inbounds %struct.stmpe_adc, %struct.stmpe_adc* %9, i32 0, i32 2
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.stmpe_adc*, %struct.stmpe_adc** %5, align 8
  %13 = getelementptr inbounds %struct.stmpe_adc, %struct.stmpe_adc* %12, i32 0, i32 3
  %14 = call i32 @reinit_completion(i32* %13)
  %15 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  %16 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.stmpe_adc*, %struct.stmpe_adc** %5, align 8
  %19 = getelementptr inbounds %struct.stmpe_adc, %struct.stmpe_adc* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 8
  %20 = load %struct.stmpe_adc*, %struct.stmpe_adc** %5, align 8
  %21 = getelementptr inbounds %struct.stmpe_adc, %struct.stmpe_adc* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @STMPE_TEMP_CHANNEL, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %3
  %26 = load %struct.stmpe_adc*, %struct.stmpe_adc** %5, align 8
  %27 = getelementptr inbounds %struct.stmpe_adc, %struct.stmpe_adc* %26, i32 0, i32 2
  %28 = call i32 @mutex_unlock(i32* %27)
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %62

31:                                               ; preds = %3
  %32 = load %struct.stmpe_adc*, %struct.stmpe_adc** %5, align 8
  %33 = getelementptr inbounds %struct.stmpe_adc, %struct.stmpe_adc* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @STMPE_REG_TEMP_CTRL, align 4
  %36 = load i32, i32* @STMPE_START_ONE_TEMP_CONV, align 4
  %37 = call i32 @stmpe_reg_write(i32 %34, i32 %35, i32 %36)
  %38 = load %struct.stmpe_adc*, %struct.stmpe_adc** %5, align 8
  %39 = getelementptr inbounds %struct.stmpe_adc, %struct.stmpe_adc* %38, i32 0, i32 3
  %40 = load i32, i32* @STMPE_ADC_TIMEOUT, align 4
  %41 = call i64 @wait_for_completion_timeout(i32* %39, i32 %40)
  store i64 %41, i64* %8, align 8
  %42 = load i64, i64* %8, align 8
  %43 = icmp sle i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %31
  %45 = load %struct.stmpe_adc*, %struct.stmpe_adc** %5, align 8
  %46 = getelementptr inbounds %struct.stmpe_adc, %struct.stmpe_adc* %45, i32 0, i32 2
  %47 = call i32 @mutex_unlock(i32* %46)
  %48 = load i32, i32* @ETIMEDOUT, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %62

50:                                               ; preds = %31
  %51 = load %struct.stmpe_adc*, %struct.stmpe_adc** %5, align 8
  %52 = getelementptr inbounds %struct.stmpe_adc, %struct.stmpe_adc* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = mul nsw i64 449960, %53
  %55 = sdiv i64 %54, 1024
  %56 = sub nsw i64 %55, 273150
  %57 = trunc i64 %56 to i32
  %58 = load i32*, i32** %7, align 8
  store i32 %57, i32* %58, align 4
  %59 = load %struct.stmpe_adc*, %struct.stmpe_adc** %5, align 8
  %60 = getelementptr inbounds %struct.stmpe_adc, %struct.stmpe_adc* %59, i32 0, i32 2
  %61 = call i32 @mutex_unlock(i32* %60)
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %50, %44, %25
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @stmpe_reg_write(i32, i32, i32) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
