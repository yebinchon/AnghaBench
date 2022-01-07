; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_f71882fg.c_store_pwm_auto_point_temp_hyst.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_f71882fg.c_store_pwm_auto_point_temp_hyst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.f71882fg_data = type { i32**, i32*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_pwm_auto_point_temp_hyst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @store_pwm_auto_point_temp_hyst(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.f71882fg_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load %struct.device*, %struct.device** %6, align 8
  %17 = call %struct.f71882fg_data* @dev_get_drvdata(%struct.device* %16)
  store %struct.f71882fg_data* %17, %struct.f71882fg_data** %10, align 8
  %18 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %19 = call %struct.TYPE_2__* @to_sensor_dev_attr_2(%struct.device_attribute* %18)
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %12, align 4
  %22 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %23 = call %struct.TYPE_2__* @to_sensor_dev_attr_2(%struct.device_attribute* %22)
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %13, align 4
  %26 = load i8*, i8** %8, align 8
  %27 = call i32 @kstrtol(i8* %26, i32 10, i64* %15)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %4
  %31 = load i32, i32* %11, align 4
  store i32 %31, i32* %5, align 4
  br label %137

32:                                               ; preds = %4
  %33 = load i64, i64* %15, align 8
  %34 = sdiv i64 %33, 1000
  store i64 %34, i64* %15, align 8
  %35 = load %struct.f71882fg_data*, %struct.f71882fg_data** %10, align 8
  %36 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %35, i32 0, i32 2
  %37 = call i32 @mutex_lock(i32* %36)
  %38 = load %struct.f71882fg_data*, %struct.f71882fg_data** %10, align 8
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* %13, align 4
  %41 = call i32 @F71882FG_REG_POINT_TEMP(i32 %39, i32 %40)
  %42 = call i8* @f71882fg_read8(%struct.f71882fg_data* %38, i32 %41)
  %43 = ptrtoint i8* %42 to i32
  %44 = load %struct.f71882fg_data*, %struct.f71882fg_data** %10, align 8
  %45 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %44, i32 0, i32 0
  %46 = load i32**, i32*** %45, align 8
  %47 = load i32, i32* %12, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32*, i32** %46, i64 %48
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %13, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  store i32 %43, i32* %53, align 4
  %54 = load i64, i64* %15, align 8
  %55 = load %struct.f71882fg_data*, %struct.f71882fg_data** %10, align 8
  %56 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %55, i32 0, i32 0
  %57 = load i32**, i32*** %56, align 8
  %58 = load i32, i32* %12, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32*, i32** %57, i64 %59
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %13, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = sub nsw i32 %65, 15
  %67 = load %struct.f71882fg_data*, %struct.f71882fg_data** %10, align 8
  %68 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %67, i32 0, i32 0
  %69 = load i32**, i32*** %68, align 8
  %70 = load i32, i32* %12, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32*, i32** %69, i64 %71
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %13, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = call i64 @clamp_val(i64 %54, i32 %66, i32 %77)
  store i64 %78, i64* %15, align 8
  %79 = load %struct.f71882fg_data*, %struct.f71882fg_data** %10, align 8
  %80 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %79, i32 0, i32 0
  %81 = load i32**, i32*** %80, align 8
  %82 = load i32, i32* %12, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32*, i32** %81, i64 %83
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %13, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = sext i32 %89 to i64
  %91 = load i64, i64* %15, align 8
  %92 = sub nsw i64 %90, %91
  store i64 %92, i64* %15, align 8
  %93 = load %struct.f71882fg_data*, %struct.f71882fg_data** %10, align 8
  %94 = load i32, i32* %12, align 4
  %95 = sdiv i32 %94, 2
  %96 = call i32 @F71882FG_REG_FAN_HYST(i32 %95)
  %97 = call i8* @f71882fg_read8(%struct.f71882fg_data* %93, i32 %96)
  %98 = ptrtoint i8* %97 to i32
  store i32 %98, i32* %14, align 4
  %99 = load i32, i32* %12, align 4
  %100 = and i32 %99, 1
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %110

102:                                              ; preds = %32
  %103 = load i32, i32* %14, align 4
  %104 = and i32 %103, 15
  %105 = sext i32 %104 to i64
  %106 = load i64, i64* %15, align 8
  %107 = shl i64 %106, 4
  %108 = or i64 %105, %107
  %109 = trunc i64 %108 to i32
  store i32 %109, i32* %14, align 4
  br label %117

110:                                              ; preds = %32
  %111 = load i32, i32* %14, align 4
  %112 = and i32 %111, 240
  %113 = sext i32 %112 to i64
  %114 = load i64, i64* %15, align 8
  %115 = or i64 %113, %114
  %116 = trunc i64 %115 to i32
  store i32 %116, i32* %14, align 4
  br label %117

117:                                              ; preds = %110, %102
  %118 = load %struct.f71882fg_data*, %struct.f71882fg_data** %10, align 8
  %119 = load i32, i32* %12, align 4
  %120 = sdiv i32 %119, 2
  %121 = call i32 @F71882FG_REG_FAN_HYST(i32 %120)
  %122 = load i32, i32* %14, align 4
  %123 = call i32 @f71882fg_write8(%struct.f71882fg_data* %118, i32 %121, i32 %122)
  %124 = load i32, i32* %14, align 4
  %125 = load %struct.f71882fg_data*, %struct.f71882fg_data** %10, align 8
  %126 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %125, i32 0, i32 1
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %12, align 4
  %129 = sdiv i32 %128, 2
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %127, i64 %130
  store i32 %124, i32* %131, align 4
  %132 = load %struct.f71882fg_data*, %struct.f71882fg_data** %10, align 8
  %133 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %132, i32 0, i32 2
  %134 = call i32 @mutex_unlock(i32* %133)
  %135 = load i64, i64* %9, align 8
  %136 = trunc i64 %135 to i32
  store i32 %136, i32* %5, align 4
  br label %137

137:                                              ; preds = %117, %30
  %138 = load i32, i32* %5, align 4
  ret i32 %138
}

declare dso_local %struct.f71882fg_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.TYPE_2__* @to_sensor_dev_attr_2(%struct.device_attribute*) #1

declare dso_local i32 @kstrtol(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i8* @f71882fg_read8(%struct.f71882fg_data*, i32) #1

declare dso_local i32 @F71882FG_REG_POINT_TEMP(i32, i32) #1

declare dso_local i64 @clamp_val(i64, i32, i32) #1

declare dso_local i32 @F71882FG_REG_FAN_HYST(i32) #1

declare dso_local i32 @f71882fg_write8(%struct.f71882fg_data*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
