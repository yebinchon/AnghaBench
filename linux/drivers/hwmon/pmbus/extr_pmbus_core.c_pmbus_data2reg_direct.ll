; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_pmbus_core.c_pmbus_data2reg_direct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_pmbus_core.c_pmbus_data2reg_direct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmbus_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32*, i32*, i32* }
%struct.pmbus_sensor = type { i64 }

@PSC_POWER = common dso_local global i64 0, align 8
@PSC_FAN = common dso_local global i64 0, align 8
@PSC_PWM = common dso_local global i64 0, align 8
@S16_MIN = common dso_local global i32 0, align 4
@S16_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pmbus_data*, %struct.pmbus_sensor*, i64)* @pmbus_data2reg_direct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmbus_data2reg_direct(%struct.pmbus_data* %0, %struct.pmbus_sensor* %1, i64 %2) #0 {
  %4 = alloca %struct.pmbus_data*, align 8
  %5 = alloca %struct.pmbus_sensor*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pmbus_data* %0, %struct.pmbus_data** %4, align 8
  store %struct.pmbus_sensor* %1, %struct.pmbus_sensor** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load i64, i64* %6, align 8
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %8, align 4
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
  store i32 %22, i32* %9, align 4
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
  store i32 %32, i32* %7, align 4
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
  store i32 %42, i32* %10, align 4
  %43 = load %struct.pmbus_sensor*, %struct.pmbus_sensor** %5, align 8
  %44 = getelementptr inbounds %struct.pmbus_sensor, %struct.pmbus_sensor* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @PSC_POWER, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %3
  %49 = load i32, i32* %10, align 4
  %50 = sub nsw i32 %49, 3
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %7, align 4
  %52 = mul nsw i32 %51, 1000
  store i32 %52, i32* %7, align 4
  br label %53

53:                                               ; preds = %48, %3
  %54 = load %struct.pmbus_sensor*, %struct.pmbus_sensor** %5, align 8
  %55 = getelementptr inbounds %struct.pmbus_sensor, %struct.pmbus_sensor* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @PSC_FAN, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %70, label %59

59:                                               ; preds = %53
  %60 = load %struct.pmbus_sensor*, %struct.pmbus_sensor** %5, align 8
  %61 = getelementptr inbounds %struct.pmbus_sensor, %struct.pmbus_sensor* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @PSC_PWM, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %70, label %65

65:                                               ; preds = %59
  %66 = load i32, i32* %10, align 4
  %67 = sub nsw i32 %66, 3
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %7, align 4
  %69 = mul nsw i32 %68, 1000
  store i32 %69, i32* %7, align 4
  br label %70

70:                                               ; preds = %65, %59, %53
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* %9, align 4
  %73 = mul nsw i32 %71, %72
  %74 = load i32, i32* %7, align 4
  %75 = add nsw i32 %73, %74
  store i32 %75, i32* %8, align 4
  br label %76

76:                                               ; preds = %79, %70
  %77 = load i32, i32* %10, align 4
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %76
  %80 = load i32, i32* %8, align 4
  %81 = mul nsw i32 %80, 10
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* %10, align 4
  %83 = add nsw i32 %82, -1
  store i32 %83, i32* %10, align 4
  br label %76

84:                                               ; preds = %76
  br label %85

85:                                               ; preds = %88, %84
  %86 = load i32, i32* %10, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %96

88:                                               ; preds = %85
  %89 = load i32, i32* %8, align 4
  %90 = sext i32 %89 to i64
  %91 = add nsw i64 %90, 5
  %92 = trunc i64 %91 to i32
  %93 = call i32 @div_s64(i32 %92, i64 10)
  store i32 %93, i32* %8, align 4
  %94 = load i32, i32* %10, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %10, align 4
  br label %85

96:                                               ; preds = %85
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* @S16_MIN, align 4
  %99 = load i32, i32* @S16_MAX, align 4
  %100 = call i32 @clamp_val(i32 %97, i32 %98, i32 %99)
  ret i32 %100
}

declare dso_local i32 @div_s64(i32, i64) #1

declare dso_local i32 @clamp_val(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
