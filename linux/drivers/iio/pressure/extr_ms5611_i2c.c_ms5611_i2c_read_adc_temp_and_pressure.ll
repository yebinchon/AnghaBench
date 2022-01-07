; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_ms5611_i2c.c_ms5611_i2c_read_adc_temp_and_pressure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_ms5611_i2c.c_ms5611_i2c_read_adc_temp_and_pressure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.ms5611_state = type { i32, %struct.ms5611_osr*, %struct.ms5611_osr* }
%struct.ms5611_osr = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32*, i32*)* @ms5611_i2c_read_adc_temp_and_pressure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ms5611_i2c_read_adc_temp_and_pressure(%struct.device* %0, i32* %1, i32* %2) #0 {
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
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @i2c_smbus_write_byte(i32 %19, i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %3
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %4, align 4
  br label %79

28:                                               ; preds = %3
  %29 = load %struct.ms5611_osr*, %struct.ms5611_osr** %10, align 8
  %30 = getelementptr inbounds %struct.ms5611_osr, %struct.ms5611_osr* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.ms5611_osr*, %struct.ms5611_osr** %10, align 8
  %33 = getelementptr inbounds %struct.ms5611_osr, %struct.ms5611_osr* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.ms5611_osr*, %struct.ms5611_osr** %10, align 8
  %36 = getelementptr inbounds %struct.ms5611_osr, %struct.ms5611_osr* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = udiv i64 %37, 10
  %39 = add i64 %34, %38
  %40 = call i32 @usleep_range(i64 %31, i64 %39)
  %41 = load %struct.ms5611_state*, %struct.ms5611_state** %9, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = call i32 @ms5611_i2c_read_adc(%struct.ms5611_state* %41, i32* %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %28
  %47 = load i32, i32* %8, align 4
  store i32 %47, i32* %4, align 4
  br label %79

48:                                               ; preds = %28
  %49 = load %struct.ms5611_state*, %struct.ms5611_state** %9, align 8
  %50 = getelementptr inbounds %struct.ms5611_state, %struct.ms5611_state* %49, i32 0, i32 1
  %51 = load %struct.ms5611_osr*, %struct.ms5611_osr** %50, align 8
  store %struct.ms5611_osr* %51, %struct.ms5611_osr** %10, align 8
  %52 = load %struct.ms5611_state*, %struct.ms5611_state** %9, align 8
  %53 = getelementptr inbounds %struct.ms5611_state, %struct.ms5611_state* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.ms5611_osr*, %struct.ms5611_osr** %10, align 8
  %56 = getelementptr inbounds %struct.ms5611_osr, %struct.ms5611_osr* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @i2c_smbus_write_byte(i32 %54, i32 %57)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %48
  %62 = load i32, i32* %8, align 4
  store i32 %62, i32* %4, align 4
  br label %79

63:                                               ; preds = %48
  %64 = load %struct.ms5611_osr*, %struct.ms5611_osr** %10, align 8
  %65 = getelementptr inbounds %struct.ms5611_osr, %struct.ms5611_osr* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.ms5611_osr*, %struct.ms5611_osr** %10, align 8
  %68 = getelementptr inbounds %struct.ms5611_osr, %struct.ms5611_osr* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.ms5611_osr*, %struct.ms5611_osr** %10, align 8
  %71 = getelementptr inbounds %struct.ms5611_osr, %struct.ms5611_osr* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = udiv i64 %72, 10
  %74 = add i64 %69, %73
  %75 = call i32 @usleep_range(i64 %66, i64 %74)
  %76 = load %struct.ms5611_state*, %struct.ms5611_state** %9, align 8
  %77 = load i32*, i32** %7, align 8
  %78 = call i32 @ms5611_i2c_read_adc(%struct.ms5611_state* %76, i32* %77)
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %63, %61, %46, %26
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local %struct.ms5611_state* @iio_priv(i32) #1

declare dso_local i32 @dev_to_iio_dev(%struct.device*) #1

declare dso_local i32 @i2c_smbus_write_byte(i32, i32) #1

declare dso_local i32 @usleep_range(i64, i64) #1

declare dso_local i32 @ms5611_i2c_read_adc(%struct.ms5611_state*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
