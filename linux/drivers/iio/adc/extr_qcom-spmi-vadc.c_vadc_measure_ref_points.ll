; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_qcom-spmi-vadc.c_vadc_measure_ref_points.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_qcom-spmi-vadc.c_vadc_measure_ref_points.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vadc_priv = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, i32 }
%struct.vadc_channel_prop = type { i32 }

@VADC_RATIOMETRIC_RANGE = common dso_local global i32 0, align 4
@VADC_CALIB_RATIOMETRIC = common dso_local global i64 0, align 8
@VADC_ABSOLUTE_RANGE_UV = common dso_local global i32 0, align 4
@VADC_CALIB_ABSOLUTE = common dso_local global i64 0, align 8
@VADC_REF_1250MV = common dso_local global i32 0, align 4
@VADC_SPARE1 = common dso_local global i32 0, align 4
@VADC_REF_625MV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@VADC_VDD_VADC = common dso_local global i32 0, align 4
@VADC_GND_REF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"measure reference points failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vadc_priv*)* @vadc_measure_ref_points to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vadc_measure_ref_points(%struct.vadc_priv* %0) #0 {
  %2 = alloca %struct.vadc_priv*, align 8
  %3 = alloca %struct.vadc_channel_prop*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.vadc_priv* %0, %struct.vadc_priv** %2, align 8
  %7 = load i32, i32* @VADC_RATIOMETRIC_RANGE, align 4
  %8 = load %struct.vadc_priv*, %struct.vadc_priv** %2, align 8
  %9 = getelementptr inbounds %struct.vadc_priv, %struct.vadc_priv* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = load i64, i64* @VADC_CALIB_RATIOMETRIC, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 2
  store i32 %7, i32* %13, align 8
  %14 = load i32, i32* @VADC_ABSOLUTE_RANGE_UV, align 4
  %15 = load %struct.vadc_priv*, %struct.vadc_priv** %2, align 8
  %16 = getelementptr inbounds %struct.vadc_priv, %struct.vadc_priv* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = load i64, i64* @VADC_CALIB_ABSOLUTE, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 2
  store i32 %14, i32* %20, align 8
  %21 = load %struct.vadc_priv*, %struct.vadc_priv** %2, align 8
  %22 = load i32, i32* @VADC_REF_1250MV, align 4
  %23 = call %struct.vadc_channel_prop* @vadc_get_channel(%struct.vadc_priv* %21, i32 %22)
  store %struct.vadc_channel_prop* %23, %struct.vadc_channel_prop** %3, align 8
  %24 = load %struct.vadc_priv*, %struct.vadc_priv** %2, align 8
  %25 = load %struct.vadc_channel_prop*, %struct.vadc_channel_prop** %3, align 8
  %26 = call i32 @vadc_do_conversion(%struct.vadc_priv* %24, %struct.vadc_channel_prop* %25, i64* %4)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %1
  br label %114

30:                                               ; preds = %1
  %31 = load %struct.vadc_priv*, %struct.vadc_priv** %2, align 8
  %32 = load i32, i32* @VADC_SPARE1, align 4
  %33 = call %struct.vadc_channel_prop* @vadc_get_channel(%struct.vadc_priv* %31, i32 %32)
  store %struct.vadc_channel_prop* %33, %struct.vadc_channel_prop** %3, align 8
  %34 = load %struct.vadc_channel_prop*, %struct.vadc_channel_prop** %3, align 8
  %35 = icmp ne %struct.vadc_channel_prop* %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %30
  %37 = load %struct.vadc_priv*, %struct.vadc_priv** %2, align 8
  %38 = load i32, i32* @VADC_REF_625MV, align 4
  %39 = call %struct.vadc_channel_prop* @vadc_get_channel(%struct.vadc_priv* %37, i32 %38)
  store %struct.vadc_channel_prop* %39, %struct.vadc_channel_prop** %3, align 8
  br label %40

40:                                               ; preds = %36, %30
  %41 = load %struct.vadc_priv*, %struct.vadc_priv** %2, align 8
  %42 = load %struct.vadc_channel_prop*, %struct.vadc_channel_prop** %3, align 8
  %43 = call i32 @vadc_do_conversion(%struct.vadc_priv* %41, %struct.vadc_channel_prop* %42, i64* %5)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  br label %114

47:                                               ; preds = %40
  %48 = load i64, i64* %4, align 8
  %49 = load i64, i64* %5, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %6, align 4
  br label %114

54:                                               ; preds = %47
  %55 = load i64, i64* %4, align 8
  %56 = load i64, i64* %5, align 8
  %57 = sub nsw i64 %55, %56
  %58 = load %struct.vadc_priv*, %struct.vadc_priv** %2, align 8
  %59 = getelementptr inbounds %struct.vadc_priv, %struct.vadc_priv* %58, i32 0, i32 1
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = load i64, i64* @VADC_CALIB_ABSOLUTE, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  store i64 %57, i64* %63, align 8
  %64 = load i64, i64* %5, align 8
  %65 = load %struct.vadc_priv*, %struct.vadc_priv** %2, align 8
  %66 = getelementptr inbounds %struct.vadc_priv, %struct.vadc_priv* %65, i32 0, i32 1
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = load i64, i64* @VADC_CALIB_ABSOLUTE, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  store i64 %64, i64* %70, align 8
  %71 = load %struct.vadc_priv*, %struct.vadc_priv** %2, align 8
  %72 = load i32, i32* @VADC_VDD_VADC, align 4
  %73 = call %struct.vadc_channel_prop* @vadc_get_channel(%struct.vadc_priv* %71, i32 %72)
  store %struct.vadc_channel_prop* %73, %struct.vadc_channel_prop** %3, align 8
  %74 = load %struct.vadc_priv*, %struct.vadc_priv** %2, align 8
  %75 = load %struct.vadc_channel_prop*, %struct.vadc_channel_prop** %3, align 8
  %76 = call i32 @vadc_do_conversion(%struct.vadc_priv* %74, %struct.vadc_channel_prop* %75, i64* %4)
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* %6, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %54
  br label %114

80:                                               ; preds = %54
  %81 = load %struct.vadc_priv*, %struct.vadc_priv** %2, align 8
  %82 = load i32, i32* @VADC_GND_REF, align 4
  %83 = call %struct.vadc_channel_prop* @vadc_get_channel(%struct.vadc_priv* %81, i32 %82)
  store %struct.vadc_channel_prop* %83, %struct.vadc_channel_prop** %3, align 8
  %84 = load %struct.vadc_priv*, %struct.vadc_priv** %2, align 8
  %85 = load %struct.vadc_channel_prop*, %struct.vadc_channel_prop** %3, align 8
  %86 = call i32 @vadc_do_conversion(%struct.vadc_priv* %84, %struct.vadc_channel_prop* %85, i64* %5)
  store i32 %86, i32* %6, align 4
  %87 = load i32, i32* %6, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %80
  br label %114

90:                                               ; preds = %80
  %91 = load i64, i64* %4, align 8
  %92 = load i64, i64* %5, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %90
  %95 = load i32, i32* @EINVAL, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %6, align 4
  br label %114

97:                                               ; preds = %90
  %98 = load i64, i64* %4, align 8
  %99 = load i64, i64* %5, align 8
  %100 = sub nsw i64 %98, %99
  %101 = load %struct.vadc_priv*, %struct.vadc_priv** %2, align 8
  %102 = getelementptr inbounds %struct.vadc_priv, %struct.vadc_priv* %101, i32 0, i32 1
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = load i64, i64* @VADC_CALIB_RATIOMETRIC, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 1
  store i64 %100, i64* %106, align 8
  %107 = load i64, i64* %5, align 8
  %108 = load %struct.vadc_priv*, %struct.vadc_priv** %2, align 8
  %109 = getelementptr inbounds %struct.vadc_priv, %struct.vadc_priv* %108, i32 0, i32 1
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = load i64, i64* @VADC_CALIB_RATIOMETRIC, align 8
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  store i64 %107, i64* %113, align 8
  br label %114

114:                                              ; preds = %97, %94, %89, %79, %51, %46, %29
  %115 = load i32, i32* %6, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %114
  %118 = load %struct.vadc_priv*, %struct.vadc_priv** %2, align 8
  %119 = getelementptr inbounds %struct.vadc_priv, %struct.vadc_priv* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @dev_err(i32 %120, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %122

122:                                              ; preds = %117, %114
  %123 = load i32, i32* %6, align 4
  ret i32 %123
}

declare dso_local %struct.vadc_channel_prop* @vadc_get_channel(%struct.vadc_priv*, i32) #1

declare dso_local i32 @vadc_do_conversion(%struct.vadc_priv*, %struct.vadc_channel_prop*, i64*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
