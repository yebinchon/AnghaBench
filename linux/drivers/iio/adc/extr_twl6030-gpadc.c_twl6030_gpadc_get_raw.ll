; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_twl6030-gpadc.c_twl6030_gpadc_get_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_twl6030-gpadc.c_twl6030_gpadc_get_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.twl6030_gpadc_data = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (i32)* }

@.str = private unnamed_addr constant [30 x i8] c"unable to read register 0x%X\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"GPADC raw code: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.twl6030_gpadc_data*, i32, i32*)* @twl6030_gpadc_get_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl6030_gpadc_get_raw(%struct.twl6030_gpadc_data* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.twl6030_gpadc_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.twl6030_gpadc_data* %0, %struct.twl6030_gpadc_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %12 = load %struct.twl6030_gpadc_data*, %struct.twl6030_gpadc_data** %5, align 8
  %13 = getelementptr inbounds %struct.twl6030_gpadc_data, %struct.twl6030_gpadc_data* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32 (i32)*, i32 (i32)** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 %16(i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @twl6030_gpadc_read(i32 %19, i32* %9)
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %3
  %24 = load %struct.twl6030_gpadc_data*, %struct.twl6030_gpadc_data** %5, align 8
  %25 = getelementptr inbounds %struct.twl6030_gpadc_data, %struct.twl6030_gpadc_data* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @dev_dbg(i32 %26, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* %11, align 4
  store i32 %29, i32* %4, align 4
  br label %55

30:                                               ; preds = %3
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @le16_to_cpu(i32 %31)
  store i32 %32, i32* %10, align 4
  %33 = load %struct.twl6030_gpadc_data*, %struct.twl6030_gpadc_data** %5, align 8
  %34 = getelementptr inbounds %struct.twl6030_gpadc_data, %struct.twl6030_gpadc_data* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @dev_dbg(i32 %35, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = load %struct.twl6030_gpadc_data*, %struct.twl6030_gpadc_data** %5, align 8
  %39 = getelementptr inbounds %struct.twl6030_gpadc_data, %struct.twl6030_gpadc_data* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call i64 @twl6030_channel_calibrated(%struct.TYPE_2__* %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %30
  %45 = load %struct.twl6030_gpadc_data*, %struct.twl6030_gpadc_data** %5, align 8
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @twl6030_gpadc_make_correction(%struct.twl6030_gpadc_data* %45, i32 %46, i32 %47)
  %49 = load i32*, i32** %7, align 8
  store i32 %48, i32* %49, align 4
  br label %53

50:                                               ; preds = %30
  %51 = load i32, i32* %10, align 4
  %52 = load i32*, i32** %7, align 8
  store i32 %51, i32* %52, align 4
  br label %53

53:                                               ; preds = %50, %44
  %54 = load i32, i32* %11, align 4
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %53, %23
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @twl6030_gpadc_read(i32, i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @twl6030_channel_calibrated(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @twl6030_gpadc_make_correction(%struct.twl6030_gpadc_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
