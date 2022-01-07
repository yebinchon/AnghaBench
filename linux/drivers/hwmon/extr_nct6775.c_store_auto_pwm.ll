; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_nct6775.c_store_auto_pwm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_nct6775.c_store_auto_pwm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.nct6775_data = type { i32, i32, i64**, i32, i32, i32*, i32* }
%struct.sensor_device_attribute_2 = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@NCT6775_REG_CRITICAL_ENAB = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_auto_pwm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @store_auto_pwm(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.nct6775_data*, align 8
  %11 = alloca %struct.sensor_device_attribute_2*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %17 = load %struct.device*, %struct.device** %6, align 8
  %18 = call %struct.nct6775_data* @dev_get_drvdata(%struct.device* %17)
  store %struct.nct6775_data* %18, %struct.nct6775_data** %10, align 8
  %19 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %20 = call %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute* %19)
  store %struct.sensor_device_attribute_2* %20, %struct.sensor_device_attribute_2** %11, align 8
  %21 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %11, align 8
  %22 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %12, align 4
  %24 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %11, align 8
  %25 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %13, align 4
  %27 = load i8*, i8** %8, align 8
  %28 = call i32 @kstrtoul(i8* %27, i32 10, i64* %14)
  store i32 %28, i32* %15, align 4
  %29 = load i32, i32* %15, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %4
  %32 = load i32, i32* %15, align 4
  store i32 %32, i32* %5, align 4
  br label %189

33:                                               ; preds = %4
  %34 = load i64, i64* %14, align 8
  %35 = icmp ugt i64 %34, 255
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %189

39:                                               ; preds = %33
  %40 = load i32, i32* %13, align 4
  %41 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %42 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp eq i32 %40, %43
  br i1 %44, label %45, label %66

45:                                               ; preds = %39
  %46 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %47 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 137
  br i1 %49, label %50, label %56

50:                                               ; preds = %45
  %51 = load i64, i64* %14, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %50
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %5, align 4
  br label %189

56:                                               ; preds = %50, %45
  %57 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %58 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 135
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  %62 = load i64, i64* %14, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  store i64 255, i64* %14, align 8
  br label %65

65:                                               ; preds = %64, %61, %56
  br label %66

66:                                               ; preds = %65, %39
  %67 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %68 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %67, i32 0, i32 4
  %69 = call i32 @mutex_lock(i32* %68)
  %70 = load i64, i64* %14, align 8
  %71 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %72 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %71, i32 0, i32 2
  %73 = load i64**, i64*** %72, align 8
  %74 = load i32, i32* %12, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i64*, i64** %73, i64 %75
  %77 = load i64*, i64** %76, align 8
  %78 = load i32, i32* %13, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i64, i64* %77, i64 %79
  store i64 %70, i64* %80, align 8
  %81 = load i32, i32* %13, align 4
  %82 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %83 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp slt i32 %81, %84
  br i1 %85, label %86, label %105

86:                                               ; preds = %66
  %87 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %88 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %89 = load i32, i32* %12, align 4
  %90 = load i32, i32* %13, align 4
  %91 = call i32 @NCT6775_AUTO_PWM(%struct.nct6775_data* %88, i32 %89, i32 %90)
  %92 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %93 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %92, i32 0, i32 2
  %94 = load i64**, i64*** %93, align 8
  %95 = load i32, i32* %12, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i64*, i64** %94, i64 %96
  %98 = load i64*, i64** %97, align 8
  %99 = load i32, i32* %13, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i64, i64* %98, i64 %100
  %102 = load i64, i64* %101, align 8
  %103 = trunc i64 %102 to i32
  %104 = call i32 @nct6775_write_value(%struct.nct6775_data* %87, i32 %91, i32 %103)
  br label %183

105:                                              ; preds = %66
  %106 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %107 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  switch i32 %108, label %182 [
    i32 137, label %109
    i32 136, label %134
    i32 139, label %135
    i32 138, label %135
    i32 135, label %135
    i32 134, label %135
    i32 133, label %135
    i32 132, label %135
    i32 131, label %135
    i32 130, label %135
    i32 129, label %135
    i32 128, label %135
  ]

109:                                              ; preds = %105
  %110 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %111 = load i32*, i32** @NCT6775_REG_CRITICAL_ENAB, align 8
  %112 = load i32, i32* %12, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @nct6775_read_value(%struct.nct6775_data* %110, i32 %115)
  store i32 %116, i32* %16, align 4
  %117 = load i64, i64* %14, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %109
  %120 = load i32, i32* %16, align 4
  %121 = or i32 %120, 2
  store i32 %121, i32* %16, align 4
  br label %125

122:                                              ; preds = %109
  %123 = load i32, i32* %16, align 4
  %124 = and i32 %123, -3
  store i32 %124, i32* %16, align 4
  br label %125

125:                                              ; preds = %122, %119
  %126 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %127 = load i32*, i32** @NCT6775_REG_CRITICAL_ENAB, align 8
  %128 = load i32, i32* %12, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* %16, align 4
  %133 = call i32 @nct6775_write_value(%struct.nct6775_data* %126, i32 %131, i32 %132)
  br label %182

134:                                              ; preds = %105
  br label %182

135:                                              ; preds = %105, %105, %105, %105, %105, %105, %105, %105, %105, %105
  %136 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %137 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %138 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %137, i32 0, i32 6
  %139 = load i32*, i32** %138, align 8
  %140 = load i32, i32* %12, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = load i64, i64* %14, align 8
  %145 = trunc i64 %144 to i32
  %146 = call i32 @nct6775_write_value(%struct.nct6775_data* %136, i32 %143, i32 %145)
  %147 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %148 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %149 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %148, i32 0, i32 5
  %150 = load i32*, i32** %149, align 8
  %151 = load i32, i32* %12, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @nct6775_read_value(%struct.nct6775_data* %147, i32 %154)
  store i32 %155, i32* %16, align 4
  %156 = load i64, i64* %14, align 8
  %157 = icmp eq i64 %156, 255
  br i1 %157, label %158, label %165

158:                                              ; preds = %135
  %159 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %160 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 8
  %162 = xor i32 %161, -1
  %163 = load i32, i32* %16, align 4
  %164 = and i32 %163, %162
  store i32 %164, i32* %16, align 4
  br label %171

165:                                              ; preds = %135
  %166 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %167 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* %16, align 4
  %170 = or i32 %169, %168
  store i32 %170, i32* %16, align 4
  br label %171

171:                                              ; preds = %165, %158
  %172 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %173 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %174 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %173, i32 0, i32 5
  %175 = load i32*, i32** %174, align 8
  %176 = load i32, i32* %12, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %175, i64 %177
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* %16, align 4
  %181 = call i32 @nct6775_write_value(%struct.nct6775_data* %172, i32 %179, i32 %180)
  br label %182

182:                                              ; preds = %105, %171, %134, %125
  br label %183

183:                                              ; preds = %182, %86
  %184 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %185 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %184, i32 0, i32 4
  %186 = call i32 @mutex_unlock(i32* %185)
  %187 = load i64, i64* %9, align 8
  %188 = trunc i64 %187 to i32
  store i32 %188, i32* %5, align 4
  br label %189

189:                                              ; preds = %183, %53, %36, %31
  %190 = load i32, i32* %5, align 4
  ret i32 %190
}

declare dso_local %struct.nct6775_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @nct6775_write_value(%struct.nct6775_data*, i32, i32) #1

declare dso_local i32 @NCT6775_AUTO_PWM(%struct.nct6775_data*, i32, i32) #1

declare dso_local i32 @nct6775_read_value(%struct.nct6775_data*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
