; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_si1133.c_si1133_get_lux.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_si1133.c_si1133_get_lux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32* }
%struct.si1133_data = type { i32 }

@SI1133_LUX_BUFFER_SIZE = common dso_local global i32 0, align 4
@SI1133_LUX_ADC_MASK = common dso_local global i32 0, align 4
@SI1133_ADC_THRESHOLD = common dso_local global i32 0, align 4
@SI1133_INPUT_FRACTION_HIGH = common dso_local global i32 0, align 4
@lux_coeff = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@SI1133_INPUT_FRACTION_LOW = common dso_local global i32 0, align 4
@SI1133_LUX_OUTPUT_FRACTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.si1133_data*, i32*)* @si1133_get_lux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si1133_get_lux(%struct.si1133_data* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.si1133_data*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.si1133_data* %0, %struct.si1133_data** %4, align 8
  store i32* %1, i32** %5, align 8
  %14 = load i32, i32* @SI1133_LUX_BUFFER_SIZE, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %11, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %12, align 8
  %18 = load %struct.si1133_data*, %struct.si1133_data** %4, align 8
  %19 = load i32, i32* @SI1133_LUX_ADC_MASK, align 4
  %20 = call i32 @si1133_set_chlist(%struct.si1133_data* %18, i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %96

25:                                               ; preds = %2
  %26 = load %struct.si1133_data*, %struct.si1133_data** %4, align 8
  %27 = call i32 @SI1133_REG_HOSTOUT(i32 0)
  %28 = load i32, i32* @SI1133_LUX_BUFFER_SIZE, align 4
  %29 = call i32 @si1133_bulk_read(%struct.si1133_data* %26, i32 %27, i32 %28, i32* %17)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %96

34:                                               ; preds = %25
  %35 = getelementptr inbounds i32, i32* %17, i64 0
  %36 = load i32, i32* %35, align 16
  %37 = shl i32 %36, 16
  %38 = getelementptr inbounds i32, i32* %17, i64 1
  %39 = load i32, i32* %38, align 4
  %40 = shl i32 %39, 8
  %41 = or i32 %37, %40
  %42 = getelementptr inbounds i32, i32* %17, i64 2
  %43 = load i32, i32* %42, align 8
  %44 = or i32 %41, %43
  store i32 %44, i32* %8, align 4
  %45 = getelementptr inbounds i32, i32* %17, i64 3
  %46 = load i32, i32* %45, align 4
  %47 = shl i32 %46, 16
  %48 = getelementptr inbounds i32, i32* %17, i64 4
  %49 = load i32, i32* %48, align 16
  %50 = shl i32 %49, 8
  %51 = or i32 %47, %50
  %52 = getelementptr inbounds i32, i32* %17, i64 5
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %51, %53
  store i32 %54, i32* %9, align 4
  %55 = getelementptr inbounds i32, i32* %17, i64 6
  %56 = load i32, i32* %55, align 8
  %57 = shl i32 %56, 16
  %58 = getelementptr inbounds i32, i32* %17, i64 7
  %59 = load i32, i32* %58, align 4
  %60 = shl i32 %59, 8
  %61 = or i32 %57, %60
  %62 = getelementptr inbounds i32, i32* %17, i64 8
  %63 = load i32, i32* %62, align 16
  %64 = or i32 %61, %63
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* @SI1133_ADC_THRESHOLD, align 4
  %67 = icmp sgt i32 %65, %66
  br i1 %67, label %72, label %68

68:                                               ; preds = %34
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* @SI1133_ADC_THRESHOLD, align 4
  %71 = icmp sgt i32 %69, %70
  br i1 %71, label %72, label %81

72:                                               ; preds = %68, %34
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* @SI1133_INPUT_FRACTION_HIGH, align 4
  %76 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @lux_coeff, i32 0, i32 1), align 8
  %77 = call i32 @ARRAY_SIZE(i32* %76)
  %78 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @lux_coeff, i32 0, i32 1), align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  %80 = call i32 @si1133_calc_polynomial(i32 %73, i32 %74, i32 %75, i32 %77, i32* %79)
  store i32 %80, i32* %7, align 4
  br label %90

81:                                               ; preds = %68
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* @SI1133_INPUT_FRACTION_LOW, align 4
  %85 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @lux_coeff, i32 0, i32 0), align 8
  %86 = call i32 @ARRAY_SIZE(i32* %85)
  %87 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @lux_coeff, i32 0, i32 0), align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  %89 = call i32 @si1133_calc_polynomial(i32 %82, i32 %83, i32 %84, i32 %86, i32* %88)
  store i32 %89, i32* %7, align 4
  br label %90

90:                                               ; preds = %81, %72
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* @SI1133_LUX_OUTPUT_FRACTION, align 4
  %93 = ashr i32 %91, %92
  %94 = load i32*, i32** %5, align 8
  store i32 %93, i32* %94, align 4
  %95 = load i32, i32* %6, align 4
  store i32 %95, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %96

96:                                               ; preds = %90, %32, %23
  %97 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %97)
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @si1133_set_chlist(%struct.si1133_data*, i32) #2

declare dso_local i32 @si1133_bulk_read(%struct.si1133_data*, i32, i32, i32*) #2

declare dso_local i32 @SI1133_REG_HOSTOUT(i32) #2

declare dso_local i32 @si1133_calc_polynomial(i32, i32, i32, i32, i32*) #2

declare dso_local i32 @ARRAY_SIZE(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
