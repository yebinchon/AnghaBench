; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_vf610_adc.c_vf610_show_samp_freq_avail.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_vf610_adc.c_vf610_show_samp_freq_avail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.vf610_adc = type { i32* }

@PAGE_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"%u \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*)* @vf610_show_samp_freq_avail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @vf610_show_samp_freq_avail(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.vf610_adc*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call i32 @dev_to_iio_dev(%struct.device* %10)
  %12 = call %struct.vf610_adc* @iio_priv(i32 %11)
  store %struct.vf610_adc* %12, %struct.vf610_adc** %7, align 8
  store i64 0, i64* %8, align 8
  store i32 0, i32* %9, align 4
  br label %13

13:                                               ; preds = %37, %3
  %14 = load i32, i32* %9, align 4
  %15 = load %struct.vf610_adc*, %struct.vf610_adc** %7, align 8
  %16 = getelementptr inbounds %struct.vf610_adc, %struct.vf610_adc* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @ARRAY_SIZE(i32* %17)
  %19 = icmp slt i32 %14, %18
  br i1 %19, label %20, label %40

20:                                               ; preds = %13
  %21 = load i8*, i8** %6, align 8
  %22 = load i64, i64* %8, align 8
  %23 = getelementptr inbounds i8, i8* %21, i64 %22
  %24 = load i64, i64* @PAGE_SIZE, align 8
  %25 = load i64, i64* %8, align 8
  %26 = sub i64 %24, %25
  %27 = load %struct.vf610_adc*, %struct.vf610_adc** %7, align 8
  %28 = getelementptr inbounds %struct.vf610_adc, %struct.vf610_adc* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @scnprintf(i8* %23, i64 %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load i64, i64* %8, align 8
  %36 = add i64 %35, %34
  store i64 %36, i64* %8, align 8
  br label %37

37:                                               ; preds = %20
  %38 = load i32, i32* %9, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %9, align 4
  br label %13

40:                                               ; preds = %13
  %41 = load i8*, i8** %6, align 8
  %42 = load i64, i64* %8, align 8
  %43 = sub i64 %42, 1
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  store i8 10, i8* %44, align 1
  %45 = load i64, i64* %8, align 8
  ret i64 %45
}

declare dso_local %struct.vf610_adc* @iio_priv(i32) #1

declare dso_local i32 @dev_to_iio_dev(%struct.device*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i64 @scnprintf(i8*, i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
