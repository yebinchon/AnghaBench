; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_ms5611_spi.c_ms5611_spi_read_adc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_ms5611_spi.c_ms5611_spi_read_adc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.ms5611_state = type { i32 }

@MS5611_READ_ADC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32*)* @ms5611_spi_read_adc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ms5611_spi_read_adc(%struct.device* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [3 x i32], align 4
  %8 = alloca %struct.ms5611_state*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %10 = load i32, i32* @MS5611_READ_ADC, align 4
  store i32 %10, i32* %9, align 4
  %11 = getelementptr inbounds i32, i32* %9, i64 1
  %12 = getelementptr inbounds i32, i32* %9, i64 3
  br label %13

13:                                               ; preds = %13, %2
  %14 = phi i32* [ %11, %2 ], [ %15, %13 ]
  store i32 0, i32* %14, align 4
  %15 = getelementptr inbounds i32, i32* %14, i64 1
  %16 = icmp eq i32* %15, %12
  br i1 %16, label %17, label %13

17:                                               ; preds = %13
  %18 = load %struct.device*, %struct.device** %4, align 8
  %19 = call i32 @dev_to_iio_dev(%struct.device* %18)
  %20 = call %struct.ms5611_state* @iio_priv(i32 %19)
  store %struct.ms5611_state* %20, %struct.ms5611_state** %8, align 8
  %21 = load %struct.ms5611_state*, %struct.ms5611_state** %8, align 8
  %22 = getelementptr inbounds %struct.ms5611_state, %struct.ms5611_state* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %25 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %26 = call i32 @spi_write_then_read(i32 %23, i32* %24, i32 1, i32* %25, i32 3)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %17
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %3, align 4
  br label %43

31:                                               ; preds = %17
  %32 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = shl i32 %33, 16
  %35 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 1
  %36 = load i32, i32* %35, align 4
  %37 = shl i32 %36, 8
  %38 = or i32 %34, %37
  %39 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 2
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %38, %40
  %42 = load i32*, i32** %5, align 8
  store i32 %41, i32* %42, align 4
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %31, %29
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local %struct.ms5611_state* @iio_priv(i32) #1

declare dso_local i32 @dev_to_iio_dev(%struct.device*) #1

declare dso_local i32 @spi_write_then_read(i32, i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
