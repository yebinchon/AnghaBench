; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_it87.c_set_temp_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_it87.c_set_temp_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute = type { i32 }
%struct.it87_data = type { i32, i32, i32, i64 }

@EINVAL = common dso_local global i64 0, align 8
@IT87_REG_TEMP_ENABLE = common dso_local global i32 0, align 4
@IT87_REG_TEMP_EXTRA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"Sensor type 2 is deprecated, please use 4 instead\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @set_temp_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @set_temp_type(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sensor_device_attribute*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.it87_data*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %17 = call %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute* %16)
  store %struct.sensor_device_attribute* %17, %struct.sensor_device_attribute** %10, align 8
  %18 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %10, align 8
  %19 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %11, align 4
  %21 = load %struct.device*, %struct.device** %6, align 8
  %22 = call %struct.it87_data* @dev_get_drvdata(%struct.device* %21)
  store %struct.it87_data* %22, %struct.it87_data** %12, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = call i64 @kstrtol(i8* %23, i32 10, i64* %13)
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %4
  %27 = load i64, i64* @EINVAL, align 8
  %28 = sub i64 0, %27
  store i64 %28, i64* %5, align 8
  br label %168

29:                                               ; preds = %4
  %30 = load %struct.it87_data*, %struct.it87_data** %12, align 8
  %31 = load i32, i32* @IT87_REG_TEMP_ENABLE, align 4
  %32 = call i32 @it87_read_value(%struct.it87_data* %30, i32 %31)
  store i32 %32, i32* %14, align 4
  %33 = load i32, i32* %11, align 4
  %34 = shl i32 1, %33
  %35 = xor i32 %34, -1
  %36 = load i32, i32* %14, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %14, align 4
  %38 = load i32, i32* %11, align 4
  %39 = shl i32 8, %38
  %40 = xor i32 %39, -1
  %41 = load i32, i32* %14, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %14, align 4
  %43 = load %struct.it87_data*, %struct.it87_data** %12, align 8
  %44 = load i32, i32* %11, align 4
  %45 = call i64 @has_temp_peci(%struct.it87_data* %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %59

47:                                               ; preds = %29
  %48 = load i32, i32* %14, align 4
  %49 = ashr i32 %48, 6
  %50 = load i32, i32* %11, align 4
  %51 = add nsw i32 %50, 1
  %52 = icmp eq i32 %49, %51
  br i1 %52, label %56, label %53

53:                                               ; preds = %47
  %54 = load i64, i64* %13, align 8
  %55 = icmp eq i64 %54, 6
  br i1 %55, label %56, label %59

56:                                               ; preds = %53, %47
  %57 = load i32, i32* %14, align 4
  %58 = and i32 %57, 63
  store i32 %58, i32* %14, align 4
  br label %59

59:                                               ; preds = %56, %53, %29
  %60 = load %struct.it87_data*, %struct.it87_data** %12, align 8
  %61 = load i32, i32* @IT87_REG_TEMP_EXTRA, align 4
  %62 = call i32 @it87_read_value(%struct.it87_data* %60, i32 %61)
  store i32 %62, i32* %15, align 4
  %63 = load %struct.it87_data*, %struct.it87_data** %12, align 8
  %64 = load i32, i32* %11, align 4
  %65 = call i64 @has_temp_old_peci(%struct.it87_data* %63, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %77

67:                                               ; preds = %59
  %68 = load i32, i32* %15, align 4
  %69 = and i32 %68, 128
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %67
  %72 = load i64, i64* %13, align 8
  %73 = icmp eq i64 %72, 6
  br i1 %73, label %74, label %77

74:                                               ; preds = %71, %67
  %75 = load i32, i32* %15, align 4
  %76 = and i32 %75, 127
  store i32 %76, i32* %15, align 4
  br label %77

77:                                               ; preds = %74, %71, %59
  %78 = load i64, i64* %13, align 8
  %79 = icmp eq i64 %78, 2
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load %struct.device*, %struct.device** %6, align 8
  %82 = call i32 @dev_warn(%struct.device* %81, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  store i64 4, i64* %13, align 8
  br label %83

83:                                               ; preds = %80, %77
  %84 = load i64, i64* %13, align 8
  %85 = icmp eq i64 %84, 3
  br i1 %85, label %86, label %91

86:                                               ; preds = %83
  %87 = load i32, i32* %11, align 4
  %88 = shl i32 1, %87
  %89 = load i32, i32* %14, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %14, align 4
  br label %134

91:                                               ; preds = %83
  %92 = load i64, i64* %13, align 8
  %93 = icmp eq i64 %92, 4
  br i1 %93, label %94, label %99

94:                                               ; preds = %91
  %95 = load i32, i32* %11, align 4
  %96 = shl i32 8, %95
  %97 = load i32, i32* %14, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %14, align 4
  br label %133

99:                                               ; preds = %91
  %100 = load %struct.it87_data*, %struct.it87_data** %12, align 8
  %101 = load i32, i32* %11, align 4
  %102 = call i64 @has_temp_peci(%struct.it87_data* %100, i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %113

104:                                              ; preds = %99
  %105 = load i64, i64* %13, align 8
  %106 = icmp eq i64 %105, 6
  br i1 %106, label %107, label %113

107:                                              ; preds = %104
  %108 = load i32, i32* %11, align 4
  %109 = add nsw i32 %108, 1
  %110 = shl i32 %109, 6
  %111 = load i32, i32* %14, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %14, align 4
  br label %132

113:                                              ; preds = %104, %99
  %114 = load %struct.it87_data*, %struct.it87_data** %12, align 8
  %115 = load i32, i32* %11, align 4
  %116 = call i64 @has_temp_old_peci(%struct.it87_data* %114, i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %113
  %119 = load i64, i64* %13, align 8
  %120 = icmp eq i64 %119, 6
  br i1 %120, label %121, label %124

121:                                              ; preds = %118
  %122 = load i32, i32* %15, align 4
  %123 = or i32 %122, 128
  store i32 %123, i32* %15, align 4
  br label %131

124:                                              ; preds = %118, %113
  %125 = load i64, i64* %13, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %124
  %128 = load i64, i64* @EINVAL, align 8
  %129 = sub i64 0, %128
  store i64 %129, i64* %5, align 8
  br label %168

130:                                              ; preds = %124
  br label %131

131:                                              ; preds = %130, %121
  br label %132

132:                                              ; preds = %131, %107
  br label %133

133:                                              ; preds = %132, %94
  br label %134

134:                                              ; preds = %133, %86
  %135 = load %struct.it87_data*, %struct.it87_data** %12, align 8
  %136 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %135, i32 0, i32 2
  %137 = call i32 @mutex_lock(i32* %136)
  %138 = load i32, i32* %14, align 4
  %139 = load %struct.it87_data*, %struct.it87_data** %12, align 8
  %140 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %139, i32 0, i32 0
  store i32 %138, i32* %140, align 8
  %141 = load i32, i32* %15, align 4
  %142 = load %struct.it87_data*, %struct.it87_data** %12, align 8
  %143 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %142, i32 0, i32 1
  store i32 %141, i32* %143, align 4
  %144 = load %struct.it87_data*, %struct.it87_data** %12, align 8
  %145 = load i32, i32* @IT87_REG_TEMP_ENABLE, align 4
  %146 = load %struct.it87_data*, %struct.it87_data** %12, align 8
  %147 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @it87_write_value(%struct.it87_data* %144, i32 %145, i32 %148)
  %150 = load %struct.it87_data*, %struct.it87_data** %12, align 8
  %151 = load i32, i32* %11, align 4
  %152 = call i64 @has_temp_old_peci(%struct.it87_data* %150, i32 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %161

154:                                              ; preds = %134
  %155 = load %struct.it87_data*, %struct.it87_data** %12, align 8
  %156 = load i32, i32* @IT87_REG_TEMP_EXTRA, align 4
  %157 = load %struct.it87_data*, %struct.it87_data** %12, align 8
  %158 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @it87_write_value(%struct.it87_data* %155, i32 %156, i32 %159)
  br label %161

161:                                              ; preds = %154, %134
  %162 = load %struct.it87_data*, %struct.it87_data** %12, align 8
  %163 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %162, i32 0, i32 3
  store i64 0, i64* %163, align 8
  %164 = load %struct.it87_data*, %struct.it87_data** %12, align 8
  %165 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %164, i32 0, i32 2
  %166 = call i32 @mutex_unlock(i32* %165)
  %167 = load i64, i64* %9, align 8
  store i64 %167, i64* %5, align 8
  br label %168

168:                                              ; preds = %161, %127, %26
  %169 = load i64, i64* %5, align 8
  ret i64 %169
}

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.it87_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @kstrtol(i8*, i32, i64*) #1

declare dso_local i32 @it87_read_value(%struct.it87_data*, i32) #1

declare dso_local i64 @has_temp_peci(%struct.it87_data*, i32) #1

declare dso_local i64 @has_temp_old_peci(%struct.it87_data*, i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @it87_write_value(%struct.it87_data*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
