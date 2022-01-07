; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_twl6030-gpadc.c_twl6030_calibrate_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_twl6030-gpadc.c_twl6030_calibrate_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.twl6030_gpadc_data = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32, %struct.twl6030_ideal_code* }
%struct.twl6030_ideal_code = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"GPADC d1   for Chn: %d = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"GPADC d2   for Chn: %d = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"GPADC x1   for Chn: %d = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"GPADC x2   for Chn: %d = %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"GPADC Gain for Chn: %d = %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"GPADC k    for Chn: %d = %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"GPADC b    for Chn: %d = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.twl6030_gpadc_data*, i32, i32, i32)* @twl6030_calibrate_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @twl6030_calibrate_channel(%struct.twl6030_gpadc_data* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.twl6030_gpadc_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.twl6030_ideal_code*, align 8
  store %struct.twl6030_gpadc_data* %0, %struct.twl6030_gpadc_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %16 = load %struct.twl6030_gpadc_data*, %struct.twl6030_gpadc_data** %5, align 8
  %17 = getelementptr inbounds %struct.twl6030_gpadc_data, %struct.twl6030_gpadc_data* %16, i32 0, i32 2
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load %struct.twl6030_ideal_code*, %struct.twl6030_ideal_code** %19, align 8
  store %struct.twl6030_ideal_code* %20, %struct.twl6030_ideal_code** %15, align 8
  %21 = load %struct.twl6030_ideal_code*, %struct.twl6030_ideal_code** %15, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.twl6030_gpadc_data*, %struct.twl6030_gpadc_data** %5, align 8
  %24 = getelementptr inbounds %struct.twl6030_gpadc_data, %struct.twl6030_gpadc_data* %23, i32 0, i32 2
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @twl6030_gpadc_lookup(%struct.twl6030_ideal_code* %21, i32 %22, i32 %27)
  store i32 %28, i32* %14, align 4
  %29 = load %struct.twl6030_ideal_code*, %struct.twl6030_ideal_code** %15, align 8
  %30 = load i32, i32* %14, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.twl6030_ideal_code, %struct.twl6030_ideal_code* %29, i64 %31
  %33 = getelementptr inbounds %struct.twl6030_ideal_code, %struct.twl6030_ideal_code* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.twl6030_ideal_code*, %struct.twl6030_ideal_code** %15, align 8
  %36 = load i32, i32* %14, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.twl6030_ideal_code, %struct.twl6030_ideal_code* %35, i64 %37
  %39 = getelementptr inbounds %struct.twl6030_ideal_code, %struct.twl6030_ideal_code* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = sub nsw i32 %34, %40
  %42 = mul nsw i32 %41, 1000
  %43 = load %struct.twl6030_ideal_code*, %struct.twl6030_ideal_code** %15, align 8
  %44 = load i32, i32* %14, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.twl6030_ideal_code, %struct.twl6030_ideal_code* %43, i64 %45
  %47 = getelementptr inbounds %struct.twl6030_ideal_code, %struct.twl6030_ideal_code* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.twl6030_ideal_code*, %struct.twl6030_ideal_code** %15, align 8
  %50 = load i32, i32* %14, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.twl6030_ideal_code, %struct.twl6030_ideal_code* %49, i64 %51
  %53 = getelementptr inbounds %struct.twl6030_ideal_code, %struct.twl6030_ideal_code* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = sub nsw i32 %48, %54
  %56 = sdiv i32 %42, %55
  store i32 %56, i32* %11, align 4
  %57 = load %struct.twl6030_ideal_code*, %struct.twl6030_ideal_code** %15, align 8
  %58 = load i32, i32* %14, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.twl6030_ideal_code, %struct.twl6030_ideal_code* %57, i64 %59
  %61 = getelementptr inbounds %struct.twl6030_ideal_code, %struct.twl6030_ideal_code* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %12, align 4
  %63 = load %struct.twl6030_ideal_code*, %struct.twl6030_ideal_code** %15, align 8
  %64 = load i32, i32* %14, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.twl6030_ideal_code, %struct.twl6030_ideal_code* %63, i64 %65
  %67 = getelementptr inbounds %struct.twl6030_ideal_code, %struct.twl6030_ideal_code* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %13, align 4
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %7, align 4
  %71 = sub nsw i32 %69, %70
  %72 = mul nsw i32 %71, 1000
  %73 = load i32, i32* %13, align 4
  %74 = load i32, i32* %12, align 4
  %75 = sub nsw i32 %73, %74
  %76 = sdiv i32 %72, %75
  %77 = add nsw i32 1000, %76
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %7, align 4
  %79 = mul nsw i32 %78, 1000
  %80 = load i32, i32* %10, align 4
  %81 = sub nsw i32 %80, 1000
  %82 = load i32, i32* %12, align 4
  %83 = mul nsw i32 %81, %82
  %84 = sub nsw i32 %79, %83
  store i32 %84, i32* %9, align 4
  %85 = load i32, i32* %11, align 4
  %86 = load %struct.twl6030_gpadc_data*, %struct.twl6030_gpadc_data** %5, align 8
  %87 = getelementptr inbounds %struct.twl6030_gpadc_data, %struct.twl6030_gpadc_data* %86, i32 0, i32 1
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = load i32, i32* %14, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  store i32 %85, i32* %92, align 4
  %93 = load i32, i32* %10, align 4
  %94 = load %struct.twl6030_gpadc_data*, %struct.twl6030_gpadc_data** %5, align 8
  %95 = getelementptr inbounds %struct.twl6030_gpadc_data, %struct.twl6030_gpadc_data* %94, i32 0, i32 1
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = load i32, i32* %14, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 1
  store i32 %93, i32* %100, align 4
  %101 = load i32, i32* %9, align 4
  %102 = load %struct.twl6030_gpadc_data*, %struct.twl6030_gpadc_data** %5, align 8
  %103 = getelementptr inbounds %struct.twl6030_gpadc_data, %struct.twl6030_gpadc_data* %102, i32 0, i32 1
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = load i32, i32* %14, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 2
  store i32 %101, i32* %108, align 4
  %109 = load %struct.twl6030_gpadc_data*, %struct.twl6030_gpadc_data** %5, align 8
  %110 = getelementptr inbounds %struct.twl6030_gpadc_data, %struct.twl6030_gpadc_data* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* %6, align 4
  %113 = load i32, i32* %7, align 4
  %114 = call i32 @dev_dbg(i32 %111, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %112, i32 %113)
  %115 = load %struct.twl6030_gpadc_data*, %struct.twl6030_gpadc_data** %5, align 8
  %116 = getelementptr inbounds %struct.twl6030_gpadc_data, %struct.twl6030_gpadc_data* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* %6, align 4
  %119 = load i32, i32* %8, align 4
  %120 = call i32 @dev_dbg(i32 %117, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %118, i32 %119)
  %121 = load %struct.twl6030_gpadc_data*, %struct.twl6030_gpadc_data** %5, align 8
  %122 = getelementptr inbounds %struct.twl6030_gpadc_data, %struct.twl6030_gpadc_data* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* %6, align 4
  %125 = load i32, i32* %12, align 4
  %126 = call i32 @dev_dbg(i32 %123, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %124, i32 %125)
  %127 = load %struct.twl6030_gpadc_data*, %struct.twl6030_gpadc_data** %5, align 8
  %128 = getelementptr inbounds %struct.twl6030_gpadc_data, %struct.twl6030_gpadc_data* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* %6, align 4
  %131 = load i32, i32* %13, align 4
  %132 = call i32 @dev_dbg(i32 %129, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %130, i32 %131)
  %133 = load %struct.twl6030_gpadc_data*, %struct.twl6030_gpadc_data** %5, align 8
  %134 = getelementptr inbounds %struct.twl6030_gpadc_data, %struct.twl6030_gpadc_data* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* %6, align 4
  %137 = load i32, i32* %11, align 4
  %138 = call i32 @dev_dbg(i32 %135, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %136, i32 %137)
  %139 = load %struct.twl6030_gpadc_data*, %struct.twl6030_gpadc_data** %5, align 8
  %140 = getelementptr inbounds %struct.twl6030_gpadc_data, %struct.twl6030_gpadc_data* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* %6, align 4
  %143 = load i32, i32* %10, align 4
  %144 = call i32 @dev_dbg(i32 %141, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %142, i32 %143)
  %145 = load %struct.twl6030_gpadc_data*, %struct.twl6030_gpadc_data** %5, align 8
  %146 = getelementptr inbounds %struct.twl6030_gpadc_data, %struct.twl6030_gpadc_data* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* %6, align 4
  %149 = load i32, i32* %9, align 4
  %150 = call i32 @dev_dbg(i32 %147, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 %148, i32 %149)
  ret void
}

declare dso_local i32 @twl6030_gpadc_lookup(%struct.twl6030_ideal_code*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
