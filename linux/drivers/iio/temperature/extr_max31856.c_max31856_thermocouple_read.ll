; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/temperature/extr_max31856.c_max31856_thermocouple_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/temperature/extr_max31856.c_max31856_thermocouple_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max31856_data = type { i32 }
%struct.iio_chan_spec = type { i32 }

@MAX31856_LTCBH_REG = common dso_local global i32 0, align 4
@MAX31856_CJTO_REG = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MAX31856_SR_REG = common dso_local global i32 0, align 4
@MAX31856_FAULT_OVUV = common dso_local global i32 0, align 4
@MAX31856_FAULT_OPEN = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.max31856_data*, %struct.iio_chan_spec*, i32*)* @max31856_thermocouple_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max31856_thermocouple_read(%struct.max31856_data* %0, %struct.iio_chan_spec* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.max31856_data*, align 8
  %6 = alloca %struct.iio_chan_spec*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [3 x i32], align 4
  store %struct.max31856_data* %0, %struct.max31856_data** %5, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  %12 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %78 [
    i32 128, label %14
    i32 129, label %45
  ]

14:                                               ; preds = %3
  %15 = load %struct.max31856_data*, %struct.max31856_data** %5, align 8
  %16 = load i32, i32* @MAX31856_LTCBH_REG, align 4
  %17 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %18 = call i32 @max31856_read(%struct.max31856_data* %15, i32 %16, i32* %17, i32 3)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %4, align 4
  br label %103

23:                                               ; preds = %14
  %24 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = shl i32 %25, 16
  %27 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 1
  %28 = load i32, i32* %27, align 4
  %29 = shl i32 %28, 8
  %30 = or i32 %26, %29
  %31 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 2
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %30, %32
  %34 = ashr i32 %33, 5
  %35 = load i32*, i32** %7, align 8
  store i32 %34, i32* %35, align 4
  %36 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, 128
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %23
  %41 = load i32*, i32** %7, align 8
  %42 = load i32, i32* %41, align 4
  %43 = sub nsw i32 %42, 524288
  store i32 %43, i32* %41, align 4
  br label %44

44:                                               ; preds = %40, %23
  br label %81

45:                                               ; preds = %3
  %46 = load %struct.max31856_data*, %struct.max31856_data** %5, align 8
  %47 = load i32, i32* @MAX31856_CJTO_REG, align 4
  %48 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %49 = call i32 @max31856_read(%struct.max31856_data* %46, i32 %47, i32* %48, i32 3)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = load i32, i32* %8, align 4
  store i32 %53, i32* %4, align 4
  br label %103

54:                                               ; preds = %45
  %55 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %9, align 4
  %57 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 1
  %58 = load i32, i32* %57, align 4
  %59 = shl i32 %58, 8
  %60 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 2
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %59, %61
  %63 = ashr i32 %62, 2
  %64 = load i32*, i32** %7, align 8
  store i32 %63, i32* %64, align 4
  %65 = load i32, i32* %9, align 4
  %66 = load i32*, i32** %7, align 8
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %67, %65
  store i32 %68, i32* %66, align 4
  %69 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 1
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %70, 128
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %54
  %74 = load i32*, i32** %7, align 8
  %75 = load i32, i32* %74, align 4
  %76 = sub nsw i32 %75, 16384
  store i32 %76, i32* %74, align 4
  br label %77

77:                                               ; preds = %73, %54
  br label %81

78:                                               ; preds = %3
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %4, align 4
  br label %103

81:                                               ; preds = %77, %44
  %82 = load %struct.max31856_data*, %struct.max31856_data** %5, align 8
  %83 = load i32, i32* @MAX31856_SR_REG, align 4
  %84 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %85 = call i32 @max31856_read(%struct.max31856_data* %82, i32 %83, i32* %84, i32 1)
  store i32 %85, i32* %8, align 4
  %86 = load i32, i32* %8, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %81
  %89 = load i32, i32* %8, align 4
  store i32 %89, i32* %4, align 4
  br label %103

90:                                               ; preds = %81
  %91 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @MAX31856_FAULT_OVUV, align 4
  %94 = load i32, i32* @MAX31856_FAULT_OPEN, align 4
  %95 = or i32 %93, %94
  %96 = and i32 %92, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %90
  %99 = load i32, i32* @EIO, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %4, align 4
  br label %103

101:                                              ; preds = %90
  %102 = load i32, i32* %8, align 4
  store i32 %102, i32* %4, align 4
  br label %103

103:                                              ; preds = %101, %98, %88, %78, %52, %21
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local i32 @max31856_read(%struct.max31856_data*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
