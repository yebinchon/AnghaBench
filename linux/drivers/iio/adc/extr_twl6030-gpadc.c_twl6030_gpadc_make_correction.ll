; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_twl6030-gpadc.c_twl6030_gpadc_make_correction.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_twl6030-gpadc.c_twl6030_gpadc_make_correction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.twl6030_gpadc_data = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, %struct.twl6030_ideal_code* }
%struct.twl6030_ideal_code = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.twl6030_gpadc_data*, i32, i32)* @twl6030_gpadc_make_correction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl6030_gpadc_make_correction(%struct.twl6030_gpadc_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.twl6030_gpadc_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.twl6030_ideal_code*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.twl6030_gpadc_data* %0, %struct.twl6030_gpadc_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.twl6030_gpadc_data*, %struct.twl6030_gpadc_data** %4, align 8
  %11 = getelementptr inbounds %struct.twl6030_gpadc_data, %struct.twl6030_gpadc_data* %10, i32 0, i32 1
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load %struct.twl6030_ideal_code*, %struct.twl6030_ideal_code** %13, align 8
  store %struct.twl6030_ideal_code* %14, %struct.twl6030_ideal_code** %7, align 8
  %15 = load %struct.twl6030_ideal_code*, %struct.twl6030_ideal_code** %7, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.twl6030_gpadc_data*, %struct.twl6030_gpadc_data** %4, align 8
  %18 = getelementptr inbounds %struct.twl6030_gpadc_data, %struct.twl6030_gpadc_data* %17, i32 0, i32 1
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @twl6030_gpadc_lookup(%struct.twl6030_ideal_code* %15, i32 %16, i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %6, align 4
  %24 = mul nsw i32 %23, 1000
  %25 = load %struct.twl6030_gpadc_data*, %struct.twl6030_gpadc_data** %4, align 8
  %26 = getelementptr inbounds %struct.twl6030_gpadc_data, %struct.twl6030_gpadc_data* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = sub nsw i32 %24, %32
  %34 = load %struct.twl6030_gpadc_data*, %struct.twl6030_gpadc_data** %4, align 8
  %35 = getelementptr inbounds %struct.twl6030_gpadc_data, %struct.twl6030_gpadc_data* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = sdiv i32 %33, %41
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  ret i32 %43
}

declare dso_local i32 @twl6030_gpadc_lookup(%struct.twl6030_ideal_code*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
