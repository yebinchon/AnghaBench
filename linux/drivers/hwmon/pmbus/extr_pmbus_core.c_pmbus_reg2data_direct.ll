; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_pmbus_core.c_pmbus_reg2data_direct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_pmbus_core.c_pmbus_reg2data_direct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmbus_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32*, i32*, i32* }
%struct.pmbus_sensor = type { i64, i32 }

@PSC_FAN = common dso_local global i64 0, align 8
@PSC_PWM = common dso_local global i64 0, align 8
@PSC_POWER = common dso_local global i64 0, align 8
@LONG_MIN = common dso_local global i32 0, align 4
@LONG_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.pmbus_data*, %struct.pmbus_sensor*)* @pmbus_reg2data_direct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pmbus_reg2data_direct(%struct.pmbus_data* %0, %struct.pmbus_sensor* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.pmbus_data*, align 8
  %5 = alloca %struct.pmbus_sensor*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pmbus_data* %0, %struct.pmbus_data** %4, align 8
  store %struct.pmbus_sensor* %1, %struct.pmbus_sensor** %5, align 8
  %10 = load %struct.pmbus_sensor*, %struct.pmbus_sensor** %5, align 8
  %11 = getelementptr inbounds %struct.pmbus_sensor, %struct.pmbus_sensor* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %7, align 4
  %13 = load %struct.pmbus_data*, %struct.pmbus_data** %4, align 8
  %14 = getelementptr inbounds %struct.pmbus_data, %struct.pmbus_data* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load %struct.pmbus_sensor*, %struct.pmbus_sensor** %5, align 8
  %19 = getelementptr inbounds %struct.pmbus_sensor, %struct.pmbus_sensor* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds i32, i32* %17, i64 %20
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %8, align 4
  %23 = load %struct.pmbus_data*, %struct.pmbus_data** %4, align 8
  %24 = getelementptr inbounds %struct.pmbus_data, %struct.pmbus_data* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load %struct.pmbus_sensor*, %struct.pmbus_sensor** %5, align 8
  %29 = getelementptr inbounds %struct.pmbus_sensor, %struct.pmbus_sensor* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds i32, i32* %27, i64 %30
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %6, align 4
  %33 = load %struct.pmbus_data*, %struct.pmbus_data** %4, align 8
  %34 = getelementptr inbounds %struct.pmbus_data, %struct.pmbus_data* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = load %struct.pmbus_sensor*, %struct.pmbus_sensor** %5, align 8
  %39 = getelementptr inbounds %struct.pmbus_sensor, %struct.pmbus_sensor* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds i32, i32* %37, i64 %40
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %107

46:                                               ; preds = %2
  %47 = load i32, i32* %9, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %9, align 4
  %49 = load %struct.pmbus_sensor*, %struct.pmbus_sensor** %5, align 8
  %50 = getelementptr inbounds %struct.pmbus_sensor, %struct.pmbus_sensor* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @PSC_FAN, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %65, label %54

54:                                               ; preds = %46
  %55 = load %struct.pmbus_sensor*, %struct.pmbus_sensor** %5, align 8
  %56 = getelementptr inbounds %struct.pmbus_sensor, %struct.pmbus_sensor* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @PSC_PWM, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %65, label %60

60:                                               ; preds = %54
  %61 = load i32, i32* %9, align 4
  %62 = add nsw i32 %61, 3
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %6, align 4
  %64 = mul nsw i32 %63, 1000
  store i32 %64, i32* %6, align 4
  br label %65

65:                                               ; preds = %60, %54, %46
  %66 = load %struct.pmbus_sensor*, %struct.pmbus_sensor** %5, align 8
  %67 = getelementptr inbounds %struct.pmbus_sensor, %struct.pmbus_sensor* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @PSC_POWER, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %65
  %72 = load i32, i32* %9, align 4
  %73 = add nsw i32 %72, 3
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %6, align 4
  %75 = mul nsw i32 %74, 1000
  store i32 %75, i32* %6, align 4
  br label %76

76:                                               ; preds = %71, %65
  br label %77

77:                                               ; preds = %80, %76
  %78 = load i32, i32* %9, align 4
  %79 = icmp sgt i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %77
  %81 = load i32, i32* %7, align 4
  %82 = mul nsw i32 %81, 10
  store i32 %82, i32* %7, align 4
  %83 = load i32, i32* %9, align 4
  %84 = add nsw i32 %83, -1
  store i32 %84, i32* %9, align 4
  br label %77

85:                                               ; preds = %77
  br label %86

86:                                               ; preds = %89, %85
  %87 = load i32, i32* %9, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %86
  %90 = load i32, i32* %7, align 4
  %91 = sext i32 %90 to i64
  %92 = add nsw i64 %91, 5
  %93 = trunc i64 %92 to i32
  %94 = call i32 @div_s64(i32 %93, i32 10)
  store i32 %94, i32* %7, align 4
  %95 = load i32, i32* %9, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %9, align 4
  br label %86

97:                                               ; preds = %86
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* %6, align 4
  %100 = sub nsw i32 %98, %99
  %101 = load i32, i32* %8, align 4
  %102 = call i32 @div_s64(i32 %100, i32 %101)
  store i32 %102, i32* %7, align 4
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* @LONG_MIN, align 4
  %105 = load i32, i32* @LONG_MAX, align 4
  %106 = call i64 @clamp_val(i32 %103, i32 %104, i32 %105)
  store i64 %106, i64* %3, align 8
  br label %107

107:                                              ; preds = %97, %45
  %108 = load i64, i64* %3, align 8
  ret i64 %108
}

declare dso_local i32 @div_s64(i32, i32) #1

declare dso_local i64 @clamp_val(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
