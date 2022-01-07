; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_ms5611_spi.c_ms5611_spi_read_adc_temp_and_pressure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_ms5611_spi.c_ms5611_spi_read_adc_temp_and_pressure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.ms5611_state = type { i32, %struct.ms5611_osr*, %struct.ms5611_osr* }
%struct.ms5611_osr = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32*, i32*)* @ms5611_spi_read_adc_temp_and_pressure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ms5611_spi_read_adc_temp_and_pressure(%struct.device* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ms5611_state*, align 8
  %10 = alloca %struct.ms5611_osr*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = call i32 @dev_to_iio_dev(%struct.device* %11)
  %13 = call %struct.ms5611_state* @iio_priv(i32 %12)
  store %struct.ms5611_state* %13, %struct.ms5611_state** %9, align 8
  %14 = load %struct.ms5611_state*, %struct.ms5611_state** %9, align 8
  %15 = getelementptr inbounds %struct.ms5611_state, %struct.ms5611_state* %14, i32 0, i32 2
  %16 = load %struct.ms5611_osr*, %struct.ms5611_osr** %15, align 8
  store %struct.ms5611_osr* %16, %struct.ms5611_osr** %10, align 8
  %17 = load %struct.ms5611_state*, %struct.ms5611_state** %9, align 8
  %18 = getelementptr inbounds %struct.ms5611_state, %struct.ms5611_state* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.ms5611_osr*, %struct.ms5611_osr** %10, align 8
  %21 = getelementptr inbounds %struct.ms5611_osr, %struct.ms5611_osr* %20, i32 0, i32 1
  %22 = call i32 @spi_write_then_read(i32 %19, i32* %21, i32 1, i32* null, i32 0)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %4, align 4
  br label %77

27:                                               ; preds = %3
  %28 = load %struct.ms5611_osr*, %struct.ms5611_osr** %10, align 8
  %29 = getelementptr inbounds %struct.ms5611_osr, %struct.ms5611_osr* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.ms5611_osr*, %struct.ms5611_osr** %10, align 8
  %32 = getelementptr inbounds %struct.ms5611_osr, %struct.ms5611_osr* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.ms5611_osr*, %struct.ms5611_osr** %10, align 8
  %35 = getelementptr inbounds %struct.ms5611_osr, %struct.ms5611_osr* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = udiv i64 %36, 10
  %38 = add i64 %33, %37
  %39 = call i32 @usleep_range(i64 %30, i64 %38)
  %40 = load %struct.device*, %struct.device** %5, align 8
  %41 = load i32*, i32** %6, align 8
  %42 = call i32 @ms5611_spi_read_adc(%struct.device* %40, i32* %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %27
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %4, align 4
  br label %77

47:                                               ; preds = %27
  %48 = load %struct.ms5611_state*, %struct.ms5611_state** %9, align 8
  %49 = getelementptr inbounds %struct.ms5611_state, %struct.ms5611_state* %48, i32 0, i32 1
  %50 = load %struct.ms5611_osr*, %struct.ms5611_osr** %49, align 8
  store %struct.ms5611_osr* %50, %struct.ms5611_osr** %10, align 8
  %51 = load %struct.ms5611_state*, %struct.ms5611_state** %9, align 8
  %52 = getelementptr inbounds %struct.ms5611_state, %struct.ms5611_state* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.ms5611_osr*, %struct.ms5611_osr** %10, align 8
  %55 = getelementptr inbounds %struct.ms5611_osr, %struct.ms5611_osr* %54, i32 0, i32 1
  %56 = call i32 @spi_write_then_read(i32 %53, i32* %55, i32 1, i32* null, i32 0)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %47
  %60 = load i32, i32* %8, align 4
  store i32 %60, i32* %4, align 4
  br label %77

61:                                               ; preds = %47
  %62 = load %struct.ms5611_osr*, %struct.ms5611_osr** %10, align 8
  %63 = getelementptr inbounds %struct.ms5611_osr, %struct.ms5611_osr* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.ms5611_osr*, %struct.ms5611_osr** %10, align 8
  %66 = getelementptr inbounds %struct.ms5611_osr, %struct.ms5611_osr* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.ms5611_osr*, %struct.ms5611_osr** %10, align 8
  %69 = getelementptr inbounds %struct.ms5611_osr, %struct.ms5611_osr* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = udiv i64 %70, 10
  %72 = add i64 %67, %71
  %73 = call i32 @usleep_range(i64 %64, i64 %72)
  %74 = load %struct.device*, %struct.device** %5, align 8
  %75 = load i32*, i32** %7, align 8
  %76 = call i32 @ms5611_spi_read_adc(%struct.device* %74, i32* %75)
  store i32 %76, i32* %4, align 4
  br label %77

77:                                               ; preds = %61, %59, %45, %25
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local %struct.ms5611_state* @iio_priv(i32) #1

declare dso_local i32 @dev_to_iio_dev(%struct.device*) #1

declare dso_local i32 @spi_write_then_read(i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @usleep_range(i64, i64) #1

declare dso_local i32 @ms5611_spi_read_adc(%struct.device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
