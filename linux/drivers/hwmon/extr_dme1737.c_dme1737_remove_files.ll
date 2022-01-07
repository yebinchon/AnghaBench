; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_dme1737.c_dme1737_remove_files.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_dme1737.c_dme1737_remove_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.device = type { i32 }
%struct.dme1737_data = type { i32, i32 }

@dme1737_fan_group = common dso_local global i32* null, align 8
@dme1737_pwm_group = common dso_local global i32* null, align 8
@HAS_PWM_MIN = common dso_local global i32 0, align 4
@dme1737_auto_pwm_min_attr = common dso_local global i32** null, align 8
@HAS_TEMP_OFFSET = common dso_local global i32 0, align 4
@dme1737_temp_offset_group = common dso_local global i32 0, align 4
@HAS_VID = common dso_local global i32 0, align 4
@dme1737_vid_group = common dso_local global i32 0, align 4
@HAS_ZONE3 = common dso_local global i32 0, align 4
@dme1737_zone3_group = common dso_local global i32 0, align 4
@HAS_ZONE_HYST = common dso_local global i32 0, align 4
@dme1737_zone_hyst_group = common dso_local global i32 0, align 4
@HAS_IN7 = common dso_local global i32 0, align 4
@dme1737_in7_group = common dso_local global i32 0, align 4
@dme1737_group = common dso_local global i32 0, align 4
@dev_attr_name = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @dme1737_remove_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dme1737_remove_files(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.dme1737_data*, align 8
  %4 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = call %struct.dme1737_data* @dev_get_drvdata(%struct.device* %5)
  store %struct.dme1737_data* %6, %struct.dme1737_data** %3, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %29, %1
  %8 = load i32, i32* %4, align 4
  %9 = load i32*, i32** @dme1737_fan_group, align 8
  %10 = call i32 @ARRAY_SIZE(i32* %9)
  %11 = icmp slt i32 %8, %10
  br i1 %11, label %12, label %32

12:                                               ; preds = %7
  %13 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %14 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @HAS_FAN(i32 %16)
  %18 = and i32 %15, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %12
  %21 = load %struct.device*, %struct.device** %2, align 8
  %22 = getelementptr inbounds %struct.device, %struct.device* %21, i32 0, i32 0
  %23 = load i32*, i32** @dme1737_fan_group, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = call i32 @sysfs_remove_group(i32* %22, i32* %26)
  br label %28

28:                                               ; preds = %20, %12
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %4, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %4, align 4
  br label %7

32:                                               ; preds = %7
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %74, %32
  %34 = load i32, i32* %4, align 4
  %35 = load i32*, i32** @dme1737_pwm_group, align 8
  %36 = call i32 @ARRAY_SIZE(i32* %35)
  %37 = icmp slt i32 %34, %36
  br i1 %37, label %38, label %77

38:                                               ; preds = %33
  %39 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %40 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @HAS_PWM(i32 %42)
  %44 = and i32 %41, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %73

46:                                               ; preds = %38
  %47 = load %struct.device*, %struct.device** %2, align 8
  %48 = getelementptr inbounds %struct.device, %struct.device* %47, i32 0, i32 0
  %49 = load i32*, i32** @dme1737_pwm_group, align 8
  %50 = load i32, i32* %4, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = call i32 @sysfs_remove_group(i32* %48, i32* %52)
  %54 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %55 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @HAS_PWM_MIN, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %72

60:                                               ; preds = %46
  %61 = load i32, i32* %4, align 4
  %62 = icmp slt i32 %61, 3
  br i1 %62, label %63, label %72

63:                                               ; preds = %60
  %64 = load %struct.device*, %struct.device** %2, align 8
  %65 = getelementptr inbounds %struct.device, %struct.device* %64, i32 0, i32 0
  %66 = load i32**, i32*** @dme1737_auto_pwm_min_attr, align 8
  %67 = load i32, i32* %4, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32*, i32** %66, i64 %68
  %70 = load i32*, i32** %69, align 8
  %71 = call i32 @sysfs_remove_file(i32* %65, i32* %70)
  br label %72

72:                                               ; preds = %63, %60, %46
  br label %73

73:                                               ; preds = %72, %38
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %4, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %4, align 4
  br label %33

77:                                               ; preds = %33
  %78 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %79 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @HAS_TEMP_OFFSET, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %77
  %85 = load %struct.device*, %struct.device** %2, align 8
  %86 = getelementptr inbounds %struct.device, %struct.device* %85, i32 0, i32 0
  %87 = call i32 @sysfs_remove_group(i32* %86, i32* @dme1737_temp_offset_group)
  br label %88

88:                                               ; preds = %84, %77
  %89 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %90 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @HAS_VID, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %88
  %96 = load %struct.device*, %struct.device** %2, align 8
  %97 = getelementptr inbounds %struct.device, %struct.device* %96, i32 0, i32 0
  %98 = call i32 @sysfs_remove_group(i32* %97, i32* @dme1737_vid_group)
  br label %99

99:                                               ; preds = %95, %88
  %100 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %101 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @HAS_ZONE3, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %99
  %107 = load %struct.device*, %struct.device** %2, align 8
  %108 = getelementptr inbounds %struct.device, %struct.device* %107, i32 0, i32 0
  %109 = call i32 @sysfs_remove_group(i32* %108, i32* @dme1737_zone3_group)
  br label %110

110:                                              ; preds = %106, %99
  %111 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %112 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @HAS_ZONE_HYST, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %110
  %118 = load %struct.device*, %struct.device** %2, align 8
  %119 = getelementptr inbounds %struct.device, %struct.device* %118, i32 0, i32 0
  %120 = call i32 @sysfs_remove_group(i32* %119, i32* @dme1737_zone_hyst_group)
  br label %121

121:                                              ; preds = %117, %110
  %122 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %123 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @HAS_IN7, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %121
  %129 = load %struct.device*, %struct.device** %2, align 8
  %130 = getelementptr inbounds %struct.device, %struct.device* %129, i32 0, i32 0
  %131 = call i32 @sysfs_remove_group(i32* %130, i32* @dme1737_in7_group)
  br label %132

132:                                              ; preds = %128, %121
  %133 = load %struct.device*, %struct.device** %2, align 8
  %134 = getelementptr inbounds %struct.device, %struct.device* %133, i32 0, i32 0
  %135 = call i32 @sysfs_remove_group(i32* %134, i32* @dme1737_group)
  %136 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %137 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %144, label %140

140:                                              ; preds = %132
  %141 = load %struct.device*, %struct.device** %2, align 8
  %142 = getelementptr inbounds %struct.device, %struct.device* %141, i32 0, i32 0
  %143 = call i32 @sysfs_remove_file(i32* %142, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dev_attr_name, i32 0, i32 0))
  br label %144

144:                                              ; preds = %140, %132
  ret void
}

declare dso_local %struct.dme1737_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @HAS_FAN(i32) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

declare dso_local i32 @HAS_PWM(i32) #1

declare dso_local i32 @sysfs_remove_file(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
