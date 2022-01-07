; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_f71882fg.c_store_pwm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_f71882fg.c_store_pwm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.f71882fg_data = type { i32, i64, i64*, i32*, i32*, i32 }
%struct.TYPE_2__ = type { i32 }

@F71882FG_REG_PWM_ENABLE = common dso_local global i32 0, align 4
@f8000 = common dso_local global i64 0, align 8
@EROFS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_pwm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @store_pwm(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.f71882fg_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
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
  %22 = load i8*, i8** %8, align 8
  %23 = call i32 @kstrtol(i8* %22, i32 10, i64* %13)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %4
  %27 = load i32, i32* %11, align 4
  store i32 %27, i32* %5, align 4
  br label %130

28:                                               ; preds = %4
  %29 = load i64, i64* %13, align 8
  %30 = call i64 @clamp_val(i64 %29, i32 0, i32 255)
  store i64 %30, i64* %13, align 8
  %31 = load %struct.f71882fg_data*, %struct.f71882fg_data** %10, align 8
  %32 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %31, i32 0, i32 5
  %33 = call i32 @mutex_lock(i32* %32)
  %34 = load %struct.f71882fg_data*, %struct.f71882fg_data** %10, align 8
  %35 = load i32, i32* @F71882FG_REG_PWM_ENABLE, align 4
  %36 = call i32 @f71882fg_read8(%struct.f71882fg_data* %34, i32 %35)
  %37 = load %struct.f71882fg_data*, %struct.f71882fg_data** %10, align 8
  %38 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load %struct.f71882fg_data*, %struct.f71882fg_data** %10, align 8
  %40 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @f8000, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %53

44:                                               ; preds = %28
  %45 = load %struct.f71882fg_data*, %struct.f71882fg_data** %10, align 8
  %46 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %12, align 4
  %49 = mul nsw i32 2, %48
  %50 = ashr i32 %47, %49
  %51 = and i32 %50, 3
  %52 = icmp ne i32 %51, 2
  br i1 %52, label %68, label %53

53:                                               ; preds = %44, %28
  %54 = load %struct.f71882fg_data*, %struct.f71882fg_data** %10, align 8
  %55 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @f8000, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %71

59:                                               ; preds = %53
  %60 = load %struct.f71882fg_data*, %struct.f71882fg_data** %10, align 8
  %61 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %12, align 4
  %64 = mul nsw i32 2, %63
  %65 = ashr i32 %62, %64
  %66 = and i32 %65, 2
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %59, %44
  %69 = load i64, i64* @EROFS, align 8
  %70 = sub i64 0, %69
  store i64 %70, i64* %9, align 8
  br label %124

71:                                               ; preds = %59, %53
  %72 = load %struct.f71882fg_data*, %struct.f71882fg_data** %10, align 8
  %73 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* %12, align 4
  %76 = mul nsw i32 2, %75
  %77 = shl i32 1, %76
  %78 = and i32 %74, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %93

80:                                               ; preds = %71
  %81 = load %struct.f71882fg_data*, %struct.f71882fg_data** %10, align 8
  %82 = load i32, i32* %12, align 4
  %83 = call i32 @F71882FG_REG_PWM(i32 %82)
  %84 = load i64, i64* %13, align 8
  %85 = call i32 @f71882fg_write8(%struct.f71882fg_data* %81, i32 %83, i64 %84)
  %86 = load i64, i64* %13, align 8
  %87 = load %struct.f71882fg_data*, %struct.f71882fg_data** %10, align 8
  %88 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %87, i32 0, i32 2
  %89 = load i64*, i64** %88, align 8
  %90 = load i32, i32* %12, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i64, i64* %89, i64 %91
  store i64 %86, i64* %92, align 8
  br label %123

93:                                               ; preds = %71
  %94 = load %struct.f71882fg_data*, %struct.f71882fg_data** %10, align 8
  %95 = load i32, i32* %12, align 4
  %96 = call i32 @F71882FG_REG_FAN_FULL_SPEED(i32 %95)
  %97 = call i32 @f71882fg_read16(%struct.f71882fg_data* %94, i32 %96)
  store i32 %97, i32* %15, align 4
  %98 = load i64, i64* %13, align 8
  %99 = load i32, i32* %15, align 4
  %100 = call i64 @fan_from_reg(i32 %99)
  %101 = mul nsw i64 %98, %100
  %102 = sdiv i64 %101, 255
  %103 = call i32 @fan_to_reg(i64 %102)
  store i32 %103, i32* %14, align 4
  %104 = load %struct.f71882fg_data*, %struct.f71882fg_data** %10, align 8
  %105 = load i32, i32* %12, align 4
  %106 = call i32 @F71882FG_REG_FAN_TARGET(i32 %105)
  %107 = load i32, i32* %14, align 4
  %108 = call i32 @f71882fg_write16(%struct.f71882fg_data* %104, i32 %106, i32 %107)
  %109 = load i32, i32* %14, align 4
  %110 = load %struct.f71882fg_data*, %struct.f71882fg_data** %10, align 8
  %111 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %110, i32 0, i32 3
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %12, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  store i32 %109, i32* %115, align 4
  %116 = load i32, i32* %15, align 4
  %117 = load %struct.f71882fg_data*, %struct.f71882fg_data** %10, align 8
  %118 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %117, i32 0, i32 4
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %12, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  store i32 %116, i32* %122, align 4
  br label %123

123:                                              ; preds = %93, %80
  br label %124

124:                                              ; preds = %123, %68
  %125 = load %struct.f71882fg_data*, %struct.f71882fg_data** %10, align 8
  %126 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %125, i32 0, i32 5
  %127 = call i32 @mutex_unlock(i32* %126)
  %128 = load i64, i64* %9, align 8
  %129 = trunc i64 %128 to i32
  store i32 %129, i32* %5, align 4
  br label %130

130:                                              ; preds = %124, %26
  %131 = load i32, i32* %5, align 4
  ret i32 %131
}

declare dso_local %struct.f71882fg_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.TYPE_2__* @to_sensor_dev_attr_2(%struct.device_attribute*) #1

declare dso_local i32 @kstrtol(i8*, i32, i64*) #1

declare dso_local i64 @clamp_val(i64, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @f71882fg_read8(%struct.f71882fg_data*, i32) #1

declare dso_local i32 @f71882fg_write8(%struct.f71882fg_data*, i32, i64) #1

declare dso_local i32 @F71882FG_REG_PWM(i32) #1

declare dso_local i32 @f71882fg_read16(%struct.f71882fg_data*, i32) #1

declare dso_local i32 @F71882FG_REG_FAN_FULL_SPEED(i32) #1

declare dso_local i32 @fan_to_reg(i64) #1

declare dso_local i64 @fan_from_reg(i32) #1

declare dso_local i32 @f71882fg_write16(%struct.f71882fg_data*, i32, i32) #1

declare dso_local i32 @F71882FG_REG_FAN_TARGET(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
