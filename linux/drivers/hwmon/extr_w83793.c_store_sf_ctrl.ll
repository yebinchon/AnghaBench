; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83793.c_store_sf_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83793.c_store_sf_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute_2 = type { i32, i32 }
%struct.i2c_client = type { i32 }
%struct.w83793_data = type { i64*, i32, i32*, i32*, i32 }

@TEMP_FAN_MAP = common dso_local global i32 0, align 4
@TEMP_PWM_ENABLE = common dso_local global i32 0, align 4
@W83793_REG_PWM_ENABLE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@TEMP_CRUISE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_sf_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @store_sf_ctrl(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sensor_device_attribute_2*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.i2c_client*, align 8
  %14 = alloca %struct.w83793_data*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %19 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %20 = call %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute* %19)
  store %struct.sensor_device_attribute_2* %20, %struct.sensor_device_attribute_2** %10, align 8
  %21 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %22 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %11, align 4
  %24 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %25 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %12, align 4
  %27 = load %struct.device*, %struct.device** %6, align 8
  %28 = call %struct.i2c_client* @to_i2c_client(%struct.device* %27)
  store %struct.i2c_client* %28, %struct.i2c_client** %13, align 8
  %29 = load %struct.i2c_client*, %struct.i2c_client** %13, align 8
  %30 = call %struct.w83793_data* @i2c_get_clientdata(%struct.i2c_client* %29)
  store %struct.w83793_data* %30, %struct.w83793_data** %14, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = call i32 @kstrtol(i8* %31, i32 10, i64* %15)
  store i32 %32, i32* %16, align 4
  %33 = load i32, i32* %16, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %4
  %36 = load i32, i32* %16, align 4
  store i32 %36, i32* %5, align 4
  br label %217

37:                                               ; preds = %4
  %38 = load %struct.w83793_data*, %struct.w83793_data** %14, align 8
  %39 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %38, i32 0, i32 4
  %40 = call i32 @mutex_lock(i32* %39)
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* @TEMP_FAN_MAP, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %59

44:                                               ; preds = %37
  %45 = load i64, i64* %15, align 8
  %46 = call i64 @clamp_val(i64 %45, i32 0, i32 255)
  store i64 %46, i64* %15, align 8
  %47 = load %struct.i2c_client*, %struct.i2c_client** %13, align 8
  %48 = load i32, i32* %12, align 4
  %49 = call i32 @W83793_REG_TEMP_FAN_MAP(i32 %48)
  %50 = load i64, i64* %15, align 8
  %51 = call i32 @w83793_write_value(%struct.i2c_client* %47, i32 %49, i64 %50)
  %52 = load i64, i64* %15, align 8
  %53 = load %struct.w83793_data*, %struct.w83793_data** %14, align 8
  %54 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %53, i32 0, i32 0
  %55 = load i64*, i64** %54, align 8
  %56 = load i32, i32* %12, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i64, i64* %55, i64 %57
  store i64 %52, i64* %58, align 8
  br label %211

59:                                               ; preds = %37
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* @TEMP_PWM_ENABLE, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %109

63:                                               ; preds = %59
  %64 = load i64, i64* %15, align 8
  %65 = icmp eq i64 %64, 2
  br i1 %65, label %69, label %66

66:                                               ; preds = %63
  %67 = load i64, i64* %15, align 8
  %68 = icmp eq i64 %67, 3
  br i1 %68, label %69, label %102

69:                                               ; preds = %66, %63
  %70 = load %struct.i2c_client*, %struct.i2c_client** %13, align 8
  %71 = load i32, i32* @W83793_REG_PWM_ENABLE, align 4
  %72 = call i8* @w83793_read_value(%struct.i2c_client* %70, i32 %71)
  %73 = ptrtoint i8* %72 to i32
  %74 = load %struct.w83793_data*, %struct.w83793_data** %14, align 8
  %75 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 8
  %76 = load i64, i64* %15, align 8
  %77 = sub nsw i64 %76, 2
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %69
  %80 = load i32, i32* %12, align 4
  %81 = shl i32 1, %80
  %82 = load %struct.w83793_data*, %struct.w83793_data** %14, align 8
  %83 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = or i32 %84, %81
  store i32 %85, i32* %83, align 8
  br label %94

86:                                               ; preds = %69
  %87 = load i32, i32* %12, align 4
  %88 = shl i32 1, %87
  %89 = xor i32 %88, -1
  %90 = load %struct.w83793_data*, %struct.w83793_data** %14, align 8
  %91 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = and i32 %92, %89
  store i32 %93, i32* %91, align 8
  br label %94

94:                                               ; preds = %86, %79
  %95 = load %struct.i2c_client*, %struct.i2c_client** %13, align 8
  %96 = load i32, i32* @W83793_REG_PWM_ENABLE, align 4
  %97 = load %struct.w83793_data*, %struct.w83793_data** %14, align 8
  %98 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = sext i32 %99 to i64
  %101 = call i32 @w83793_write_value(%struct.i2c_client* %95, i32 %96, i64 %100)
  br label %108

102:                                              ; preds = %66
  %103 = load %struct.w83793_data*, %struct.w83793_data** %14, align 8
  %104 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %103, i32 0, i32 4
  %105 = call i32 @mutex_unlock(i32* %104)
  %106 = load i32, i32* @EINVAL, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %5, align 4
  br label %217

108:                                              ; preds = %94
  br label %210

109:                                              ; preds = %59
  %110 = load i32, i32* %11, align 4
  %111 = load i32, i32* @TEMP_CRUISE, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %155

113:                                              ; preds = %109
  %114 = load %struct.i2c_client*, %struct.i2c_client** %13, align 8
  %115 = load i32, i32* %12, align 4
  %116 = call i32 @W83793_REG_TEMP_CRUISE(i32 %115)
  %117 = call i8* @w83793_read_value(%struct.i2c_client* %114, i32 %116)
  %118 = ptrtoint i8* %117 to i32
  %119 = load %struct.w83793_data*, %struct.w83793_data** %14, align 8
  %120 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %119, i32 0, i32 2
  %121 = load i32*, i32** %120, align 8
  %122 = load i32, i32* %12, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  store i32 %118, i32* %124, align 4
  %125 = load %struct.w83793_data*, %struct.w83793_data** %14, align 8
  %126 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %125, i32 0, i32 2
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %12, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = and i32 %131, 128
  store i32 %132, i32* %130, align 4
  %133 = load i64, i64* %15, align 8
  %134 = call i32 @TEMP_TO_REG(i64 %133, i32 0, i32 127)
  %135 = load %struct.w83793_data*, %struct.w83793_data** %14, align 8
  %136 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %135, i32 0, i32 2
  %137 = load i32*, i32** %136, align 8
  %138 = load i32, i32* %12, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = or i32 %141, %134
  store i32 %142, i32* %140, align 4
  %143 = load %struct.i2c_client*, %struct.i2c_client** %13, align 8
  %144 = load i32, i32* %12, align 4
  %145 = call i32 @W83793_REG_TEMP_CRUISE(i32 %144)
  %146 = load %struct.w83793_data*, %struct.w83793_data** %14, align 8
  %147 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %146, i32 0, i32 2
  %148 = load i32*, i32** %147, align 8
  %149 = load i32, i32* %12, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = sext i32 %152 to i64
  %154 = call i32 @w83793_write_value(%struct.i2c_client* %143, i32 %145, i64 %153)
  br label %209

155:                                              ; preds = %109
  %156 = load i32, i32* %12, align 4
  %157 = ashr i32 %156, 1
  store i32 %157, i32* %17, align 4
  %158 = load i32, i32* %12, align 4
  %159 = and i32 %158, 1
  %160 = icmp ne i32 %159, 0
  %161 = zext i1 %160 to i64
  %162 = select i1 %160, i32 4, i32 0
  store i32 %162, i32* %18, align 4
  %163 = load %struct.i2c_client*, %struct.i2c_client** %13, align 8
  %164 = load i32, i32* %17, align 4
  %165 = call i32 @W83793_REG_TEMP_TOL(i32 %164)
  %166 = call i8* @w83793_read_value(%struct.i2c_client* %163, i32 %165)
  %167 = ptrtoint i8* %166 to i32
  %168 = load %struct.w83793_data*, %struct.w83793_data** %14, align 8
  %169 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %168, i32 0, i32 3
  %170 = load i32*, i32** %169, align 8
  %171 = load i32, i32* %17, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %170, i64 %172
  store i32 %167, i32* %173, align 4
  %174 = load i32, i32* %18, align 4
  %175 = shl i32 15, %174
  %176 = xor i32 %175, -1
  %177 = load %struct.w83793_data*, %struct.w83793_data** %14, align 8
  %178 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %177, i32 0, i32 3
  %179 = load i32*, i32** %178, align 8
  %180 = load i32, i32* %17, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %179, i64 %181
  %183 = load i32, i32* %182, align 4
  %184 = and i32 %183, %176
  store i32 %184, i32* %182, align 4
  %185 = load i64, i64* %15, align 8
  %186 = call i32 @TEMP_TO_REG(i64 %185, i32 0, i32 15)
  %187 = load i32, i32* %18, align 4
  %188 = shl i32 %186, %187
  %189 = load %struct.w83793_data*, %struct.w83793_data** %14, align 8
  %190 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %189, i32 0, i32 3
  %191 = load i32*, i32** %190, align 8
  %192 = load i32, i32* %17, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %191, i64 %193
  %195 = load i32, i32* %194, align 4
  %196 = or i32 %195, %188
  store i32 %196, i32* %194, align 4
  %197 = load %struct.i2c_client*, %struct.i2c_client** %13, align 8
  %198 = load i32, i32* %17, align 4
  %199 = call i32 @W83793_REG_TEMP_TOL(i32 %198)
  %200 = load %struct.w83793_data*, %struct.w83793_data** %14, align 8
  %201 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %200, i32 0, i32 3
  %202 = load i32*, i32** %201, align 8
  %203 = load i32, i32* %17, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i32, i32* %202, i64 %204
  %206 = load i32, i32* %205, align 4
  %207 = sext i32 %206 to i64
  %208 = call i32 @w83793_write_value(%struct.i2c_client* %197, i32 %199, i64 %207)
  br label %209

209:                                              ; preds = %155, %113
  br label %210

210:                                              ; preds = %209, %108
  br label %211

211:                                              ; preds = %210, %44
  %212 = load %struct.w83793_data*, %struct.w83793_data** %14, align 8
  %213 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %212, i32 0, i32 4
  %214 = call i32 @mutex_unlock(i32* %213)
  %215 = load i64, i64* %9, align 8
  %216 = trunc i64 %215 to i32
  store i32 %216, i32* %5, align 4
  br label %217

217:                                              ; preds = %211, %102, %35
  %218 = load i32, i32* %5, align 4
  ret i32 %218
}

declare dso_local %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute*) #1

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.w83793_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @kstrtol(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @clamp_val(i64, i32, i32) #1

declare dso_local i32 @w83793_write_value(%struct.i2c_client*, i32, i64) #1

declare dso_local i32 @W83793_REG_TEMP_FAN_MAP(i32) #1

declare dso_local i8* @w83793_read_value(%struct.i2c_client*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @W83793_REG_TEMP_CRUISE(i32) #1

declare dso_local i32 @TEMP_TO_REG(i64, i32, i32) #1

declare dso_local i32 @W83793_REG_TEMP_TOL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
