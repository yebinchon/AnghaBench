; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_si1133.c_si1133_set_integration_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_si1133.c_si1133_set_integration_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.si1133_data = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.si1133_data*, i64, i32, i32)* @si1133_set_integration_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si1133_set_integration_time(%struct.si1133_data* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.si1133_data*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.si1133_data* %0, %struct.si1133_data** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %8, align 4
  %12 = load i32, i32* %9, align 4
  %13 = call i32 @si1133_get_int_time_index(i32 %11, i32 %12)
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load i32, i32* %10, align 4
  store i32 %17, i32* %5, align 4
  br label %43

18:                                               ; preds = %4
  %19 = load %struct.si1133_data*, %struct.si1133_data** %6, align 8
  %20 = getelementptr inbounds %struct.si1133_data, %struct.si1133_data* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i64, i64* %7, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, 240
  store i32 %25, i32* %23, align 4
  %26 = load i32, i32* %10, align 4
  %27 = load %struct.si1133_data*, %struct.si1133_data** %6, align 8
  %28 = getelementptr inbounds %struct.si1133_data, %struct.si1133_data* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i64, i64* %7, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %26
  store i32 %33, i32* %31, align 4
  %34 = load %struct.si1133_data*, %struct.si1133_data** %6, align 8
  %35 = call i32 @SI1133_PARAM_REG_ADCSENS(i32 0)
  %36 = load %struct.si1133_data*, %struct.si1133_data** %6, align 8
  %37 = getelementptr inbounds %struct.si1133_data, %struct.si1133_data* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i64, i64* %7, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @si1133_param_set(%struct.si1133_data* %34, i32 %35, i32 %41)
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %18, %16
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local i32 @si1133_get_int_time_index(i32, i32) #1

declare dso_local i32 @si1133_param_set(%struct.si1133_data*, i32, i32) #1

declare dso_local i32 @SI1133_PARAM_REG_ADCSENS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
