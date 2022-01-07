; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_lv0104cs.c_lv0104cs_get_lux.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_lv0104cs.c_lv0104cs_get_lux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.lv0104cs_private = type { i64, i64, i32 }

@LV0104CS_REGVAL_MEASURE = common dso_local global i32 0, align 4
@lv0104cs_scales = common dso_local global %struct.TYPE_3__* null, align 8
@lv0104cs_int_times = common dso_local global %struct.TYPE_4__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@LV0104CS_REGVAL_SLEEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lv0104cs_private*, i32*, i32*)* @lv0104cs_get_lux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lv0104cs_get_lux(%struct.lv0104cs_private* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lv0104cs_private*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.lv0104cs_private* %0, %struct.lv0104cs_private** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i32, i32* @LV0104CS_REGVAL_MEASURE, align 4
  store i32 %11, i32* %8, align 4
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** @lv0104cs_scales, align 8
  %13 = load %struct.lv0104cs_private*, %struct.lv0104cs_private** %5, align 8
  %14 = getelementptr inbounds %struct.lv0104cs_private, %struct.lv0104cs_private* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %8, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %8, align 4
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** @lv0104cs_int_times, align 8
  %22 = load %struct.lv0104cs_private*, %struct.lv0104cs_private** %5, align 8
  %23 = getelementptr inbounds %struct.lv0104cs_private, %struct.lv0104cs_private* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %8, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %8, align 4
  %30 = load %struct.lv0104cs_private*, %struct.lv0104cs_private** %5, align 8
  %31 = getelementptr inbounds %struct.lv0104cs_private, %struct.lv0104cs_private* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @lv0104cs_write_reg(i32 %32, i32 %33)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %3
  %38 = load i32, i32* %10, align 4
  store i32 %38, i32* %4, align 4
  br label %103

39:                                               ; preds = %3
  %40 = load %struct.lv0104cs_private*, %struct.lv0104cs_private** %5, align 8
  %41 = getelementptr inbounds %struct.lv0104cs_private, %struct.lv0104cs_private* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  switch i64 %42, label %49 [
    i64 133, label %43
    i64 134, label %45
    i64 132, label %47
  ]

43:                                               ; preds = %39
  %44 = call i32 @msleep(i32 50)
  br label %52

45:                                               ; preds = %39
  %46 = call i32 @msleep(i32 150)
  br label %52

47:                                               ; preds = %39
  %48 = call i32 @msleep(i32 250)
  br label %52

49:                                               ; preds = %39
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %103

52:                                               ; preds = %47, %45, %43
  %53 = load %struct.lv0104cs_private*, %struct.lv0104cs_private** %5, align 8
  %54 = getelementptr inbounds %struct.lv0104cs_private, %struct.lv0104cs_private* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @lv0104cs_read_adc(i32 %55, i32* %9)
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %52
  %60 = load i32, i32* %10, align 4
  store i32 %60, i32* %4, align 4
  br label %103

61:                                               ; preds = %52
  %62 = load %struct.lv0104cs_private*, %struct.lv0104cs_private** %5, align 8
  %63 = getelementptr inbounds %struct.lv0104cs_private, %struct.lv0104cs_private* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @LV0104CS_REGVAL_SLEEP, align 4
  %66 = call i32 @lv0104cs_write_reg(i32 %64, i32 %65)
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %10, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %61
  %70 = load i32, i32* %10, align 4
  store i32 %70, i32* %4, align 4
  br label %103

71:                                               ; preds = %61
  %72 = load %struct.lv0104cs_private*, %struct.lv0104cs_private** %5, align 8
  %73 = getelementptr inbounds %struct.lv0104cs_private, %struct.lv0104cs_private* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  switch i64 %74, label %100 [
    i64 131, label %75
    i64 130, label %80
    i64 129, label %84
    i64 128, label %92
  ]

75:                                               ; preds = %71
  %76 = load i32, i32* %9, align 4
  %77 = mul nsw i32 %76, 4
  %78 = load i32*, i32** %6, align 8
  store i32 %77, i32* %78, align 4
  %79 = load i32*, i32** %7, align 8
  store i32 0, i32* %79, align 4
  store i32 0, i32* %4, align 4
  br label %103

80:                                               ; preds = %71
  %81 = load i32, i32* %9, align 4
  %82 = load i32*, i32** %6, align 8
  store i32 %81, i32* %82, align 4
  %83 = load i32*, i32** %7, align 8
  store i32 0, i32* %83, align 4
  store i32 0, i32* %4, align 4
  br label %103

84:                                               ; preds = %71
  %85 = load i32, i32* %9, align 4
  %86 = sdiv i32 %85, 2
  %87 = load i32*, i32** %6, align 8
  store i32 %86, i32* %87, align 4
  %88 = load i32, i32* %9, align 4
  %89 = srem i32 %88, 2
  %90 = mul nsw i32 %89, 500000
  %91 = load i32*, i32** %7, align 8
  store i32 %90, i32* %91, align 4
  store i32 0, i32* %4, align 4
  br label %103

92:                                               ; preds = %71
  %93 = load i32, i32* %9, align 4
  %94 = sdiv i32 %93, 8
  %95 = load i32*, i32** %6, align 8
  store i32 %94, i32* %95, align 4
  %96 = load i32, i32* %9, align 4
  %97 = srem i32 %96, 8
  %98 = mul nsw i32 %97, 125000
  %99 = load i32*, i32** %7, align 8
  store i32 %98, i32* %99, align 4
  store i32 0, i32* %4, align 4
  br label %103

100:                                              ; preds = %71
  %101 = load i32, i32* @EINVAL, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %4, align 4
  br label %103

103:                                              ; preds = %100, %92, %84, %80, %75, %69, %59, %49, %37
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local i32 @lv0104cs_write_reg(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @lv0104cs_read_adc(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
