; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_f71882fg.c_store_pwm_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_f71882fg.c_store_pwm_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.f71882fg_data = type { i64, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@f8000 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@F71882FG_REG_PWM_ENABLE = common dso_local global i32 0, align 4
@f71858fg = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_pwm_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @store_pwm_enable(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.f71882fg_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.f71882fg_data* @dev_get_drvdata(%struct.device* %14)
  store %struct.f71882fg_data* %15, %struct.f71882fg_data** %10, align 8
  %16 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %17 = call %struct.TYPE_2__* @to_sensor_dev_attr_2(%struct.device_attribute* %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %12, align 4
  %20 = load i8*, i8** %8, align 8
  %21 = call i32 @kstrtol(i8* %20, i32 10, i64* %13)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load i32, i32* %11, align 4
  store i32 %25, i32* %5, align 4
  br label %144

26:                                               ; preds = %4
  %27 = load %struct.f71882fg_data*, %struct.f71882fg_data** %10, align 8
  %28 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @f8000, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %26
  %33 = load i32, i32* %12, align 4
  %34 = icmp eq i32 %33, 2
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = load i64, i64* %13, align 8
  %37 = icmp ne i64 %36, 2
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %5, align 4
  br label %144

41:                                               ; preds = %35, %32, %26
  %42 = load %struct.f71882fg_data*, %struct.f71882fg_data** %10, align 8
  %43 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %42, i32 0, i32 2
  %44 = call i32 @mutex_lock(i32* %43)
  %45 = load %struct.f71882fg_data*, %struct.f71882fg_data** %10, align 8
  %46 = load i32, i32* @F71882FG_REG_PWM_ENABLE, align 4
  %47 = call i32 @f71882fg_read8(%struct.f71882fg_data* %45, i32 %46)
  %48 = load %struct.f71882fg_data*, %struct.f71882fg_data** %10, align 8
  %49 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 8
  %50 = load %struct.f71882fg_data*, %struct.f71882fg_data** %10, align 8
  %51 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @f8000, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %88

55:                                               ; preds = %41
  %56 = load %struct.f71882fg_data*, %struct.f71882fg_data** %10, align 8
  %57 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %12, align 4
  %60 = mul nsw i32 2, %59
  %61 = ashr i32 %58, %60
  %62 = and i32 %61, 1
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %88

64:                                               ; preds = %55
  %65 = load i64, i64* %13, align 8
  switch i64 %65, label %83 [
    i64 2, label %66
    i64 3, label %75
  ]

66:                                               ; preds = %64
  %67 = load i32, i32* %12, align 4
  %68 = mul nsw i32 2, %67
  %69 = shl i32 2, %68
  %70 = xor i32 %69, -1
  %71 = load %struct.f71882fg_data*, %struct.f71882fg_data** %10, align 8
  %72 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = and i32 %73, %70
  store i32 %74, i32* %72, align 8
  br label %87

75:                                               ; preds = %64
  %76 = load i32, i32* %12, align 4
  %77 = mul nsw i32 2, %76
  %78 = shl i32 2, %77
  %79 = load %struct.f71882fg_data*, %struct.f71882fg_data** %10, align 8
  %80 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 8
  br label %87

83:                                               ; preds = %64
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  %86 = sext i32 %85 to i64
  store i64 %86, i64* %9, align 8
  br label %138

87:                                               ; preds = %75, %66
  br label %131

88:                                               ; preds = %55, %41
  %89 = load i64, i64* %13, align 8
  switch i64 %89, label %126 [
    i64 1, label %90
    i64 2, label %117
  ]

90:                                               ; preds = %88
  %91 = load %struct.f71882fg_data*, %struct.f71882fg_data** %10, align 8
  %92 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @f71858fg, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %109

96:                                               ; preds = %90
  %97 = load %struct.f71882fg_data*, %struct.f71882fg_data** %10, align 8
  %98 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* %12, align 4
  %101 = mul nsw i32 2, %100
  %102 = ashr i32 %99, %101
  %103 = and i32 %102, 1
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %96
  %106 = load i32, i32* @EINVAL, align 4
  %107 = sub nsw i32 0, %106
  %108 = sext i32 %107 to i64
  store i64 %108, i64* %9, align 8
  br label %138

109:                                              ; preds = %96, %90
  %110 = load i32, i32* %12, align 4
  %111 = mul nsw i32 2, %110
  %112 = shl i32 2, %111
  %113 = load %struct.f71882fg_data*, %struct.f71882fg_data** %10, align 8
  %114 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = or i32 %115, %112
  store i32 %116, i32* %114, align 8
  br label %130

117:                                              ; preds = %88
  %118 = load i32, i32* %12, align 4
  %119 = mul nsw i32 2, %118
  %120 = shl i32 2, %119
  %121 = xor i32 %120, -1
  %122 = load %struct.f71882fg_data*, %struct.f71882fg_data** %10, align 8
  %123 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = and i32 %124, %121
  store i32 %125, i32* %123, align 8
  br label %130

126:                                              ; preds = %88
  %127 = load i32, i32* @EINVAL, align 4
  %128 = sub nsw i32 0, %127
  %129 = sext i32 %128 to i64
  store i64 %129, i64* %9, align 8
  br label %138

130:                                              ; preds = %117, %109
  br label %131

131:                                              ; preds = %130, %87
  %132 = load %struct.f71882fg_data*, %struct.f71882fg_data** %10, align 8
  %133 = load i32, i32* @F71882FG_REG_PWM_ENABLE, align 4
  %134 = load %struct.f71882fg_data*, %struct.f71882fg_data** %10, align 8
  %135 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @f71882fg_write8(%struct.f71882fg_data* %132, i32 %133, i32 %136)
  br label %138

138:                                              ; preds = %131, %126, %105, %83
  %139 = load %struct.f71882fg_data*, %struct.f71882fg_data** %10, align 8
  %140 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %139, i32 0, i32 2
  %141 = call i32 @mutex_unlock(i32* %140)
  %142 = load i64, i64* %9, align 8
  %143 = trunc i64 %142 to i32
  store i32 %143, i32* %5, align 4
  br label %144

144:                                              ; preds = %138, %38, %24
  %145 = load i32, i32* %5, align 4
  ret i32 %145
}

declare dso_local %struct.f71882fg_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.TYPE_2__* @to_sensor_dev_attr_2(%struct.device_attribute*) #1

declare dso_local i32 @kstrtol(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @f71882fg_read8(%struct.f71882fg_data*, i32) #1

declare dso_local i32 @f71882fg_write8(%struct.f71882fg_data*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
