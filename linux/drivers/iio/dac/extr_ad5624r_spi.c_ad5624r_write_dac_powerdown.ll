; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5624r_spi.c_ad5624r_write_dac_powerdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5624r_spi.c_ad5624r_write_dac_powerdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.ad5624r_state = type { i32, i32, i32 }

@AD5624R_CMD_POWERDOWN_DAC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, i64, %struct.iio_chan_spec*, i8*, i64)* @ad5624r_write_dac_powerdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad5624r_write_dac_powerdown(%struct.iio_dev* %0, i64 %1, %struct.iio_chan_spec* %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.iio_chan_spec*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ad5624r_state*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store i64 %1, i64* %8, align 8
  store %struct.iio_chan_spec* %2, %struct.iio_chan_spec** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %16 = call %struct.ad5624r_state* @iio_priv(%struct.iio_dev* %15)
  store %struct.ad5624r_state* %16, %struct.ad5624r_state** %14, align 8
  %17 = load i8*, i8** %10, align 8
  %18 = call i32 @strtobool(i8* %17, i32* %12)
  store i32 %18, i32* %13, align 4
  %19 = load i32, i32* %13, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %5
  %22 = load i32, i32* %13, align 4
  store i32 %22, i32* %6, align 4
  br label %69

23:                                               ; preds = %5
  %24 = load i32, i32* %12, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %23
  %27 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %9, align 8
  %28 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = shl i32 1, %29
  %31 = load %struct.ad5624r_state*, %struct.ad5624r_state** %14, align 8
  %32 = getelementptr inbounds %struct.ad5624r_state, %struct.ad5624r_state* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 4
  br label %45

35:                                               ; preds = %23
  %36 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %9, align 8
  %37 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = shl i32 1, %38
  %40 = xor i32 %39, -1
  %41 = load %struct.ad5624r_state*, %struct.ad5624r_state** %14, align 8
  %42 = getelementptr inbounds %struct.ad5624r_state, %struct.ad5624r_state* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, %40
  store i32 %44, i32* %42, align 4
  br label %45

45:                                               ; preds = %35, %26
  %46 = load %struct.ad5624r_state*, %struct.ad5624r_state** %14, align 8
  %47 = getelementptr inbounds %struct.ad5624r_state, %struct.ad5624r_state* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @AD5624R_CMD_POWERDOWN_DAC, align 4
  %50 = load %struct.ad5624r_state*, %struct.ad5624r_state** %14, align 8
  %51 = getelementptr inbounds %struct.ad5624r_state, %struct.ad5624r_state* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = shl i32 %52, 4
  %54 = load %struct.ad5624r_state*, %struct.ad5624r_state** %14, align 8
  %55 = getelementptr inbounds %struct.ad5624r_state, %struct.ad5624r_state* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %53, %56
  %58 = call i32 @ad5624r_spi_write(i32 %48, i32 %49, i32 0, i32 %57, i32 16)
  store i32 %58, i32* %13, align 4
  %59 = load i32, i32* %13, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %45
  %62 = load i32, i32* %13, align 4
  %63 = sext i32 %62 to i64
  br label %66

64:                                               ; preds = %45
  %65 = load i64, i64* %11, align 8
  br label %66

66:                                               ; preds = %64, %61
  %67 = phi i64 [ %63, %61 ], [ %65, %64 ]
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %6, align 4
  br label %69

69:                                               ; preds = %66, %21
  %70 = load i32, i32* %6, align 4
  ret i32 %70
}

declare dso_local %struct.ad5624r_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @strtobool(i8*, i32*) #1

declare dso_local i32 @ad5624r_spi_write(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
