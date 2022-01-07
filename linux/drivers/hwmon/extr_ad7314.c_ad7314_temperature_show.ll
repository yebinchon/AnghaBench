; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_ad7314.c_ad7314_temperature_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_ad7314.c_ad7314_temperature_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.ad7314_data = type { i32 }
%struct.TYPE_2__ = type { i32 }

@AD7314_TEMP_MASK = common dso_local global i32 0, align 4
@AD7314_TEMP_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@ADT7301_TEMP_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @ad7314_temperature_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7314_temperature_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ad7314_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = call %struct.ad7314_data* @dev_get_drvdata(%struct.device* %11)
  store %struct.ad7314_data* %12, %struct.ad7314_data** %8, align 8
  %13 = load %struct.ad7314_data*, %struct.ad7314_data** %8, align 8
  %14 = call i32 @ad7314_spi_read(%struct.ad7314_data* %13)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* %10, align 4
  store i32 %18, i32* %4, align 4
  br label %52

19:                                               ; preds = %3
  %20 = load %struct.ad7314_data*, %struct.ad7314_data** %8, align 8
  %21 = getelementptr inbounds %struct.ad7314_data, %struct.ad7314_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.TYPE_2__* @spi_get_device_id(i32 %22)
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %49 [
    i32 130, label %26
    i32 129, label %38
    i32 128, label %38
  ]

26:                                               ; preds = %19
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* @AD7314_TEMP_MASK, align 4
  %29 = and i32 %27, %28
  %30 = load i32, i32* @AD7314_TEMP_SHIFT, align 4
  %31 = ashr i32 %29, %30
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @sign_extend32(i32 %32, i32 9)
  store i32 %33, i32* %9, align 4
  %34 = load i8*, i8** %7, align 8
  %35 = load i32, i32* %9, align 4
  %36 = mul nsw i32 250, %35
  %37 = call i32 @sprintf(i8* %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %36)
  store i32 %37, i32* %4, align 4
  br label %52

38:                                               ; preds = %19, %19
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* @ADT7301_TEMP_MASK, align 4
  %41 = and i32 %39, %40
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @sign_extend32(i32 %42, i32 13)
  store i32 %43, i32* %9, align 4
  %44 = load i8*, i8** %7, align 8
  %45 = load i32, i32* %9, align 4
  %46 = mul nsw i32 %45, 3125
  %47 = call i32 @DIV_ROUND_CLOSEST(i32 %46, i32 100)
  %48 = call i32 @sprintf(i8* %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %47)
  store i32 %48, i32* %4, align 4
  br label %52

49:                                               ; preds = %19
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %49, %38, %26, %17
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local %struct.ad7314_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @ad7314_spi_read(%struct.ad7314_data*) #1

declare dso_local %struct.TYPE_2__* @spi_get_device_id(i32) #1

declare dso_local i32 @sign_extend32(i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
