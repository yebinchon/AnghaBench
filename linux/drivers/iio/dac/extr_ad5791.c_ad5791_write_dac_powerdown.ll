; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5791.c_ad5791_write_dac_powerdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5791.c_ad5791_write_dac_powerdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.ad5791_state = type { i32, i64, i32 }

@AD5791_CTRL_OPGND = common dso_local global i32 0, align 4
@AD5791_CTRL_DACTRI = common dso_local global i32 0, align 4
@AD5791_DAC_PWRDN_6K = common dso_local global i64 0, align 8
@AD5791_DAC_PWRDN_3STATE = common dso_local global i64 0, align 8
@AD5791_ADDR_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, i64, %struct.iio_chan_spec*, i8*, i64)* @ad5791_write_dac_powerdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad5791_write_dac_powerdown(%struct.iio_dev* %0, i64 %1, %struct.iio_chan_spec* %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.iio_chan_spec*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ad5791_state*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store i64 %1, i64* %8, align 8
  store %struct.iio_chan_spec* %2, %struct.iio_chan_spec** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %16 = call %struct.ad5791_state* @iio_priv(%struct.iio_dev* %15)
  store %struct.ad5791_state* %16, %struct.ad5791_state** %14, align 8
  %17 = load i8*, i8** %10, align 8
  %18 = call i32 @strtobool(i8* %17, i32* %12)
  store i32 %18, i32* %13, align 4
  %19 = load i32, i32* %13, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %5
  %22 = load i32, i32* %13, align 4
  store i32 %22, i32* %6, align 4
  br label %81

23:                                               ; preds = %5
  %24 = load i32, i32* %12, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %35, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* @AD5791_CTRL_OPGND, align 4
  %28 = load i32, i32* @AD5791_CTRL_DACTRI, align 4
  %29 = or i32 %27, %28
  %30 = xor i32 %29, -1
  %31 = load %struct.ad5791_state*, %struct.ad5791_state** %14, align 8
  %32 = getelementptr inbounds %struct.ad5791_state, %struct.ad5791_state* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = and i32 %33, %30
  store i32 %34, i32* %32, align 8
  br label %61

35:                                               ; preds = %23
  %36 = load %struct.ad5791_state*, %struct.ad5791_state** %14, align 8
  %37 = getelementptr inbounds %struct.ad5791_state, %struct.ad5791_state* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @AD5791_DAC_PWRDN_6K, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %35
  %42 = load i32, i32* @AD5791_CTRL_OPGND, align 4
  %43 = load %struct.ad5791_state*, %struct.ad5791_state** %14, align 8
  %44 = getelementptr inbounds %struct.ad5791_state, %struct.ad5791_state* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 8
  br label %60

47:                                               ; preds = %35
  %48 = load %struct.ad5791_state*, %struct.ad5791_state** %14, align 8
  %49 = getelementptr inbounds %struct.ad5791_state, %struct.ad5791_state* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @AD5791_DAC_PWRDN_3STATE, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %47
  %54 = load i32, i32* @AD5791_CTRL_DACTRI, align 4
  %55 = load %struct.ad5791_state*, %struct.ad5791_state** %14, align 8
  %56 = getelementptr inbounds %struct.ad5791_state, %struct.ad5791_state* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 8
  br label %59

59:                                               ; preds = %53, %47
  br label %60

60:                                               ; preds = %59, %41
  br label %61

61:                                               ; preds = %60, %26
  %62 = load i32, i32* %12, align 4
  %63 = load %struct.ad5791_state*, %struct.ad5791_state** %14, align 8
  %64 = getelementptr inbounds %struct.ad5791_state, %struct.ad5791_state* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 8
  %65 = load %struct.ad5791_state*, %struct.ad5791_state** %14, align 8
  %66 = load i32, i32* @AD5791_ADDR_CTRL, align 4
  %67 = load %struct.ad5791_state*, %struct.ad5791_state** %14, align 8
  %68 = getelementptr inbounds %struct.ad5791_state, %struct.ad5791_state* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @ad5791_spi_write(%struct.ad5791_state* %65, i32 %66, i32 %69)
  store i32 %70, i32* %13, align 4
  %71 = load i32, i32* %13, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %61
  %74 = load i32, i32* %13, align 4
  %75 = sext i32 %74 to i64
  br label %78

76:                                               ; preds = %61
  %77 = load i64, i64* %11, align 8
  br label %78

78:                                               ; preds = %76, %73
  %79 = phi i64 [ %75, %73 ], [ %77, %76 ]
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %6, align 4
  br label %81

81:                                               ; preds = %78, %21
  %82 = load i32, i32* %6, align 4
  ret i32 %82
}

declare dso_local %struct.ad5791_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @strtobool(i8*, i32*) #1

declare dso_local i32 @ad5791_spi_write(%struct.ad5791_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
