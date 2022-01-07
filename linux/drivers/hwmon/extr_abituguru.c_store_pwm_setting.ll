; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_abituguru.c_store_pwm_setting.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_abituguru.c_store_pwm_setting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute_2 = type { i64, i64 }
%struct.abituguru_data = type { i64**, i32 }

@abituguru_pwm_settings_multiplier = common dso_local global i32* null, align 8
@abituguru_pwm_min = common dso_local global i64* null, align 8
@abituguru_pwm_max = common dso_local global i64* null, align 8
@EINVAL = common dso_local global i64 0, align 8
@ABIT_UGURU_FAN_PWM = common dso_local global i64 0, align 8
@EIO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_pwm_setting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @store_pwm_setting(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sensor_device_attribute_2*, align 8
  %11 = alloca %struct.abituguru_data*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %17 = call %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute* %16)
  store %struct.sensor_device_attribute_2* %17, %struct.sensor_device_attribute_2** %10, align 8
  %18 = load %struct.device*, %struct.device** %6, align 8
  %19 = call %struct.abituguru_data* @dev_get_drvdata(%struct.device* %18)
  store %struct.abituguru_data* %19, %struct.abituguru_data** %11, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = call i64 @kstrtoul(i8* %20, i32 10, i64* %13)
  store i64 %21, i64* %14, align 8
  %22 = load i64, i64* %14, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load i64, i64* %14, align 8
  store i64 %25, i64* %5, align 8
  br label %225

26:                                               ; preds = %4
  %27 = load i64, i64* %9, align 8
  store i64 %27, i64* %14, align 8
  %28 = load i64, i64* %13, align 8
  %29 = load i32*, i32** @abituguru_pwm_settings_multiplier, align 8
  %30 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %31 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds i32, i32* %29, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = sdiv i32 %34, 2
  %36 = sext i32 %35 to i64
  %37 = add i64 %28, %36
  %38 = load i32*, i32** @abituguru_pwm_settings_multiplier, align 8
  %39 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %40 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds i32, i32* %38, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = udiv i64 %37, %44
  store i64 %45, i64* %13, align 8
  %46 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %47 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %61

50:                                               ; preds = %26
  %51 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %52 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %53, 1
  br i1 %54, label %60, label %55

55:                                               ; preds = %50
  %56 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %57 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp eq i64 %58, 2
  br i1 %59, label %60, label %61

60:                                               ; preds = %55, %50
  store i64 77, i64* %12, align 8
  br label %68

61:                                               ; preds = %55, %26
  %62 = load i64*, i64** @abituguru_pwm_min, align 8
  %63 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %64 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds i64, i64* %62, i64 %65
  %67 = load i64, i64* %66, align 8
  store i64 %67, i64* %12, align 8
  br label %68

68:                                               ; preds = %61, %60
  %69 = load i64, i64* %13, align 8
  %70 = load i64, i64* %12, align 8
  %71 = icmp ult i64 %69, %70
  br i1 %71, label %81, label %72

72:                                               ; preds = %68
  %73 = load i64, i64* %13, align 8
  %74 = load i64*, i64** @abituguru_pwm_max, align 8
  %75 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %76 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds i64, i64* %74, i64 %77
  %79 = load i64, i64* %78, align 8
  %80 = icmp ugt i64 %73, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %72, %68
  %82 = load i64, i64* @EINVAL, align 8
  %83 = sub i64 0, %82
  store i64 %83, i64* %5, align 8
  br label %225

84:                                               ; preds = %72
  %85 = load %struct.abituguru_data*, %struct.abituguru_data** %11, align 8
  %86 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %85, i32 0, i32 1
  %87 = call i32 @mutex_lock(i32* %86)
  %88 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %89 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = and i64 %90, 1
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %113

93:                                               ; preds = %84
  %94 = load i64, i64* %13, align 8
  %95 = load %struct.abituguru_data*, %struct.abituguru_data** %11, align 8
  %96 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %95, i32 0, i32 0
  %97 = load i64**, i64*** %96, align 8
  %98 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %99 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = getelementptr inbounds i64*, i64** %97, i64 %100
  %102 = load i64*, i64** %101, align 8
  %103 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %104 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = add i64 %105, 1
  %107 = getelementptr inbounds i64, i64* %102, i64 %106
  %108 = load i64, i64* %107, align 8
  %109 = icmp uge i64 %94, %108
  br i1 %109, label %110, label %113

110:                                              ; preds = %93
  %111 = load i64, i64* @EINVAL, align 8
  %112 = sub i64 0, %111
  store i64 %112, i64* %14, align 8
  br label %220

113:                                              ; preds = %93, %84
  %114 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %115 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = and i64 %116, 1
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %139, label %119

119:                                              ; preds = %113
  %120 = load i64, i64* %13, align 8
  %121 = load %struct.abituguru_data*, %struct.abituguru_data** %11, align 8
  %122 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %121, i32 0, i32 0
  %123 = load i64**, i64*** %122, align 8
  %124 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %125 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = getelementptr inbounds i64*, i64** %123, i64 %126
  %128 = load i64*, i64** %127, align 8
  %129 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %130 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = sub i64 %131, 1
  %133 = getelementptr inbounds i64, i64* %128, i64 %132
  %134 = load i64, i64* %133, align 8
  %135 = icmp ule i64 %120, %134
  br i1 %135, label %136, label %139

136:                                              ; preds = %119
  %137 = load i64, i64* @EINVAL, align 8
  %138 = sub i64 0, %137
  store i64 %138, i64* %14, align 8
  br label %219

139:                                              ; preds = %119, %113
  %140 = load %struct.abituguru_data*, %struct.abituguru_data** %11, align 8
  %141 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %140, i32 0, i32 0
  %142 = load i64**, i64*** %141, align 8
  %143 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %144 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = getelementptr inbounds i64*, i64** %142, i64 %145
  %147 = load i64*, i64** %146, align 8
  %148 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %149 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = getelementptr inbounds i64, i64* %147, i64 %150
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* %13, align 8
  %154 = icmp ne i64 %152, %153
  br i1 %154, label %155, label %218

155:                                              ; preds = %139
  %156 = load %struct.abituguru_data*, %struct.abituguru_data** %11, align 8
  %157 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %156, i32 0, i32 0
  %158 = load i64**, i64*** %157, align 8
  %159 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %160 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = getelementptr inbounds i64*, i64** %158, i64 %161
  %163 = load i64*, i64** %162, align 8
  %164 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %165 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = getelementptr inbounds i64, i64* %163, i64 %166
  %168 = load i64, i64* %167, align 8
  store i64 %168, i64* %15, align 8
  %169 = load i64, i64* %13, align 8
  %170 = load %struct.abituguru_data*, %struct.abituguru_data** %11, align 8
  %171 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %170, i32 0, i32 0
  %172 = load i64**, i64*** %171, align 8
  %173 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %174 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = getelementptr inbounds i64*, i64** %172, i64 %175
  %177 = load i64*, i64** %176, align 8
  %178 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %179 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = getelementptr inbounds i64, i64* %177, i64 %180
  store i64 %169, i64* %181, align 8
  %182 = load %struct.abituguru_data*, %struct.abituguru_data** %11, align 8
  %183 = load i64, i64* @ABIT_UGURU_FAN_PWM, align 8
  %184 = add nsw i64 %183, 1
  %185 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %186 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %185, i32 0, i32 1
  %187 = load i64, i64* %186, align 8
  %188 = load %struct.abituguru_data*, %struct.abituguru_data** %11, align 8
  %189 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %188, i32 0, i32 0
  %190 = load i64**, i64*** %189, align 8
  %191 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %192 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %191, i32 0, i32 1
  %193 = load i64, i64* %192, align 8
  %194 = getelementptr inbounds i64*, i64** %190, i64 %193
  %195 = load i64*, i64** %194, align 8
  %196 = call i64 @abituguru_write(%struct.abituguru_data* %182, i64 %184, i64 %187, i64* %195, i32 5)
  %197 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %198 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = icmp ule i64 %196, %199
  br i1 %200, label %201, label %217

201:                                              ; preds = %155
  %202 = load i64, i64* %15, align 8
  %203 = load %struct.abituguru_data*, %struct.abituguru_data** %11, align 8
  %204 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %203, i32 0, i32 0
  %205 = load i64**, i64*** %204, align 8
  %206 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %207 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %206, i32 0, i32 1
  %208 = load i64, i64* %207, align 8
  %209 = getelementptr inbounds i64*, i64** %205, i64 %208
  %210 = load i64*, i64** %209, align 8
  %211 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %212 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = getelementptr inbounds i64, i64* %210, i64 %213
  store i64 %202, i64* %214, align 8
  %215 = load i64, i64* @EIO, align 8
  %216 = sub i64 0, %215
  store i64 %216, i64* %14, align 8
  br label %217

217:                                              ; preds = %201, %155
  br label %218

218:                                              ; preds = %217, %139
  br label %219

219:                                              ; preds = %218, %136
  br label %220

220:                                              ; preds = %219, %110
  %221 = load %struct.abituguru_data*, %struct.abituguru_data** %11, align 8
  %222 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %221, i32 0, i32 1
  %223 = call i32 @mutex_unlock(i32* %222)
  %224 = load i64, i64* %14, align 8
  store i64 %224, i64* %5, align 8
  br label %225

225:                                              ; preds = %220, %81, %24
  %226 = load i64, i64* %5, align 8
  ret i64 %226
}

declare dso_local %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute*) #1

declare dso_local %struct.abituguru_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @abituguru_write(%struct.abituguru_data*, i64, i64, i64*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
