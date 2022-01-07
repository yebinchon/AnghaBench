; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7780.c_ad7780_postprocess_sample.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7780.c_ad7780_postprocess_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad_sigma_delta = type { i32 }
%struct.ad7780_state = type { i32, i32, %struct.ad7780_chip_info* }
%struct.ad7780_chip_info = type { i32, i32, i64 }

@AD7780_ERR = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ad778x_gain = common dso_local global i32* null, align 8
@AD7780_GAIN = common dso_local global i32 0, align 4
@ad778x_odr_avail = common dso_local global i32* null, align 8
@AD7780_FILTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ad_sigma_delta*, i32)* @ad7780_postprocess_sample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7780_postprocess_sample(%struct.ad_sigma_delta* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ad_sigma_delta*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ad7780_state*, align 8
  %7 = alloca %struct.ad7780_chip_info*, align 8
  store %struct.ad_sigma_delta* %0, %struct.ad_sigma_delta** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.ad_sigma_delta*, %struct.ad_sigma_delta** %4, align 8
  %9 = call %struct.ad7780_state* @ad_sigma_delta_to_ad7780(%struct.ad_sigma_delta* %8)
  store %struct.ad7780_state* %9, %struct.ad7780_state** %6, align 8
  %10 = load %struct.ad7780_state*, %struct.ad7780_state** %6, align 8
  %11 = getelementptr inbounds %struct.ad7780_state, %struct.ad7780_state* %10, i32 0, i32 2
  %12 = load %struct.ad7780_chip_info*, %struct.ad7780_chip_info** %11, align 8
  store %struct.ad7780_chip_info* %12, %struct.ad7780_chip_info** %7, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @AD7780_ERR, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %27, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.ad7780_chip_info*, %struct.ad7780_chip_info** %7, align 8
  %20 = getelementptr inbounds %struct.ad7780_chip_info, %struct.ad7780_chip_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = and i32 %18, %21
  %23 = load %struct.ad7780_chip_info*, %struct.ad7780_chip_info** %7, align 8
  %24 = getelementptr inbounds %struct.ad7780_chip_info, %struct.ad7780_chip_info* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %22, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %17, %2
  %28 = load i32, i32* @EIO, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %55

30:                                               ; preds = %17
  %31 = load %struct.ad7780_chip_info*, %struct.ad7780_chip_info** %7, align 8
  %32 = getelementptr inbounds %struct.ad7780_chip_info, %struct.ad7780_chip_info* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %54

35:                                               ; preds = %30
  %36 = load i32*, i32** @ad778x_gain, align 8
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @AD7780_GAIN, align 4
  %39 = and i32 %37, %38
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %36, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.ad7780_state*, %struct.ad7780_state** %6, align 8
  %44 = getelementptr inbounds %struct.ad7780_state, %struct.ad7780_state* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load i32*, i32** @ad778x_odr_avail, align 8
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @AD7780_FILTER, align 4
  %48 = and i32 %46, %47
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %45, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.ad7780_state*, %struct.ad7780_state** %6, align 8
  %53 = getelementptr inbounds %struct.ad7780_state, %struct.ad7780_state* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  br label %54

54:                                               ; preds = %35, %30
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %54, %27
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local %struct.ad7780_state* @ad_sigma_delta_to_ad7780(%struct.ad_sigma_delta*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
