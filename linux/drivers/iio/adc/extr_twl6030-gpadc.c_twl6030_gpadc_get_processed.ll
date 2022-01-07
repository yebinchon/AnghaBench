; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_twl6030-gpadc.c_twl6030_gpadc_get_processed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_twl6030-gpadc.c_twl6030_gpadc_get_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.twl6030_gpadc_data = type { i32, %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32, %struct.twl6030_ideal_code* }
%struct.twl6030_ideal_code = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"GPADC corrected code: %d\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"GPADC value: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.twl6030_gpadc_data*, i32, i32*)* @twl6030_gpadc_get_processed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl6030_gpadc_get_processed(%struct.twl6030_gpadc_data* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.twl6030_gpadc_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.twl6030_ideal_code*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.twl6030_gpadc_data* %0, %struct.twl6030_gpadc_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %13 = load %struct.twl6030_gpadc_data*, %struct.twl6030_gpadc_data** %5, align 8
  %14 = getelementptr inbounds %struct.twl6030_gpadc_data, %struct.twl6030_gpadc_data* %13, i32 0, i32 2
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load %struct.twl6030_ideal_code*, %struct.twl6030_ideal_code** %16, align 8
  store %struct.twl6030_ideal_code* %17, %struct.twl6030_ideal_code** %8, align 8
  %18 = load %struct.twl6030_gpadc_data*, %struct.twl6030_gpadc_data** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @twl6030_gpadc_get_raw(%struct.twl6030_gpadc_data* %18, i32 %19, i32* %9)
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* %12, align 4
  store i32 %24, i32* %4, align 4
  br label %59

25:                                               ; preds = %3
  %26 = load %struct.twl6030_ideal_code*, %struct.twl6030_ideal_code** %8, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.twl6030_gpadc_data*, %struct.twl6030_gpadc_data** %5, align 8
  %29 = getelementptr inbounds %struct.twl6030_gpadc_data, %struct.twl6030_gpadc_data* %28, i32 0, i32 2
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @twl6030_gpadc_lookup(%struct.twl6030_ideal_code* %26, i32 %27, i32 %32)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load %struct.twl6030_gpadc_data*, %struct.twl6030_gpadc_data** %5, align 8
  %36 = getelementptr inbounds %struct.twl6030_gpadc_data, %struct.twl6030_gpadc_data* %35, i32 0, i32 1
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = load i32, i32* %11, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = mul nsw i32 %34, %42
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = sdiv i32 %44, 1000
  store i32 %45, i32* %10, align 4
  %46 = load %struct.twl6030_gpadc_data*, %struct.twl6030_gpadc_data** %5, align 8
  %47 = getelementptr inbounds %struct.twl6030_gpadc_data, %struct.twl6030_gpadc_data* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @dev_dbg(i32 %48, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %49)
  %51 = load %struct.twl6030_gpadc_data*, %struct.twl6030_gpadc_data** %5, align 8
  %52 = getelementptr inbounds %struct.twl6030_gpadc_data, %struct.twl6030_gpadc_data* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @dev_dbg(i32 %53, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* %10, align 4
  %57 = load i32*, i32** %7, align 8
  store i32 %56, i32* %57, align 4
  %58 = load i32, i32* %12, align 4
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %25, %23
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @twl6030_gpadc_get_raw(%struct.twl6030_gpadc_data*, i32, i32*) #1

declare dso_local i32 @twl6030_gpadc_lookup(%struct.twl6030_ideal_code*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
