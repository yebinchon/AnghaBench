; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7793.c_ad7793_check_platform_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7793.c_ad7793_check_platform_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad7793_state = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ad7793_platform_data = type { i64, i64, i64, i64, i64 }

@AD7793_IEXEC1_IEXEC2_IOUT1 = common dso_local global i64 0, align 8
@AD7793_IEXEC1_IEXEC2_IOUT2 = common dso_local global i64 0, align 8
@AD7793_IX_10uA = common dso_local global i64 0, align 8
@AD7793_IX_210uA = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@AD7793_FLAG_HAS_CLKSEL = common dso_local global i32 0, align 4
@AD7793_CLK_SRC_INT = common dso_local global i64 0, align 8
@AD7793_FLAG_HAS_REFSEL = common dso_local global i32 0, align 4
@AD7793_REFSEL_REFIN1 = common dso_local global i64 0, align 8
@AD7793_FLAG_HAS_VBIAS = common dso_local global i32 0, align 4
@AD7793_BIAS_VOLTAGE_DISABLED = common dso_local global i64 0, align 8
@AD7793_HAS_EXITATION_CURRENT = common dso_local global i32 0, align 4
@AD7793_IX_DISABLED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ad7793_state*, %struct.ad7793_platform_data*)* @ad7793_check_platform_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7793_check_platform_data(%struct.ad7793_state* %0, %struct.ad7793_platform_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ad7793_state*, align 8
  %5 = alloca %struct.ad7793_platform_data*, align 8
  store %struct.ad7793_state* %0, %struct.ad7793_state** %4, align 8
  store %struct.ad7793_platform_data* %1, %struct.ad7793_platform_data** %5, align 8
  %6 = load %struct.ad7793_platform_data*, %struct.ad7793_platform_data** %5, align 8
  %7 = getelementptr inbounds %struct.ad7793_platform_data, %struct.ad7793_platform_data* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @AD7793_IEXEC1_IEXEC2_IOUT1, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %17, label %11

11:                                               ; preds = %2
  %12 = load %struct.ad7793_platform_data*, %struct.ad7793_platform_data** %5, align 8
  %13 = getelementptr inbounds %struct.ad7793_platform_data, %struct.ad7793_platform_data* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @AD7793_IEXEC1_IEXEC2_IOUT2, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %32

17:                                               ; preds = %11, %2
  %18 = load %struct.ad7793_platform_data*, %struct.ad7793_platform_data** %5, align 8
  %19 = getelementptr inbounds %struct.ad7793_platform_data, %struct.ad7793_platform_data* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @AD7793_IX_10uA, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %32

23:                                               ; preds = %17
  %24 = load %struct.ad7793_platform_data*, %struct.ad7793_platform_data** %5, align 8
  %25 = getelementptr inbounds %struct.ad7793_platform_data, %struct.ad7793_platform_data* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @AD7793_IX_210uA, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %105

32:                                               ; preds = %23, %17, %11
  %33 = load %struct.ad7793_state*, %struct.ad7793_state** %4, align 8
  %34 = getelementptr inbounds %struct.ad7793_state, %struct.ad7793_state* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @AD7793_FLAG_HAS_CLKSEL, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %50, label %41

41:                                               ; preds = %32
  %42 = load %struct.ad7793_platform_data*, %struct.ad7793_platform_data** %5, align 8
  %43 = getelementptr inbounds %struct.ad7793_platform_data, %struct.ad7793_platform_data* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @AD7793_CLK_SRC_INT, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %105

50:                                               ; preds = %41, %32
  %51 = load %struct.ad7793_state*, %struct.ad7793_state** %4, align 8
  %52 = getelementptr inbounds %struct.ad7793_state, %struct.ad7793_state* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @AD7793_FLAG_HAS_REFSEL, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %68, label %59

59:                                               ; preds = %50
  %60 = load %struct.ad7793_platform_data*, %struct.ad7793_platform_data** %5, align 8
  %61 = getelementptr inbounds %struct.ad7793_platform_data, %struct.ad7793_platform_data* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @AD7793_REFSEL_REFIN1, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %59
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %3, align 4
  br label %105

68:                                               ; preds = %59, %50
  %69 = load %struct.ad7793_state*, %struct.ad7793_state** %4, align 8
  %70 = getelementptr inbounds %struct.ad7793_state, %struct.ad7793_state* %69, i32 0, i32 0
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @AD7793_FLAG_HAS_VBIAS, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %86, label %77

77:                                               ; preds = %68
  %78 = load %struct.ad7793_platform_data*, %struct.ad7793_platform_data** %5, align 8
  %79 = getelementptr inbounds %struct.ad7793_platform_data, %struct.ad7793_platform_data* %78, i32 0, i32 4
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @AD7793_BIAS_VOLTAGE_DISABLED, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %77
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %3, align 4
  br label %105

86:                                               ; preds = %77, %68
  %87 = load %struct.ad7793_state*, %struct.ad7793_state** %4, align 8
  %88 = getelementptr inbounds %struct.ad7793_state, %struct.ad7793_state* %87, i32 0, i32 0
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @AD7793_HAS_EXITATION_CURRENT, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %104, label %95

95:                                               ; preds = %86
  %96 = load %struct.ad7793_platform_data*, %struct.ad7793_platform_data** %5, align 8
  %97 = getelementptr inbounds %struct.ad7793_platform_data, %struct.ad7793_platform_data* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @AD7793_IX_DISABLED, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %95
  %102 = load i32, i32* @EINVAL, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %3, align 4
  br label %105

104:                                              ; preds = %95, %86
  store i32 0, i32* %3, align 4
  br label %105

105:                                              ; preds = %104, %101, %83, %65, %47, %29
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
