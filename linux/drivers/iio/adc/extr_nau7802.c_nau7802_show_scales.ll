; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_nau7802.c_nau7802_show_scales.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_nau7802.c_nau7802_show_scales.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.nau7802_state = type { i32* }

@PAGE_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"0.%09d \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @nau7802_show_scales to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nau7802_show_scales(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.nau7802_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call i32 @dev_to_iio_dev(%struct.device* %10)
  %12 = call %struct.nau7802_state* @iio_priv(i32 %11)
  store %struct.nau7802_state* %12, %struct.nau7802_state** %7, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %13

13:                                               ; preds = %41, %3
  %14 = load i32, i32* %8, align 4
  %15 = load %struct.nau7802_state*, %struct.nau7802_state** %7, align 8
  %16 = getelementptr inbounds %struct.nau7802_state, %struct.nau7802_state* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @ARRAY_SIZE(i32* %17)
  %19 = icmp slt i32 %14, %18
  br i1 %19, label %20, label %44

20:                                               ; preds = %13
  %21 = load i8*, i8** %6, align 8
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %21, i64 %23
  %25 = load i64, i64* @PAGE_SIZE, align 8
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = sub nsw i64 %25, %27
  %29 = load %struct.nau7802_state*, %struct.nau7802_state** %7, align 8
  %30 = getelementptr inbounds %struct.nau7802_state, %struct.nau7802_state* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @scnprintf(i8* %24, i64 %28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %38, %36
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %9, align 4
  br label %41

41:                                               ; preds = %20
  %42 = load i32, i32* %8, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %8, align 4
  br label %13

44:                                               ; preds = %13
  %45 = load i8*, i8** %6, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sub nsw i32 %46, 1
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %45, i64 %48
  store i8 10, i8* %49, align 1
  %50 = load i32, i32* %9, align 4
  ret i32 %50
}

declare dso_local %struct.nau7802_state* @iio_priv(i32) #1

declare dso_local i32 @dev_to_iio_dev(%struct.device*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i64 @scnprintf(i8*, i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
