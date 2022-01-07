; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_amc6821.c_temp_auto_point_temp_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_amc6821.c_temp_auto_point_temp_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.amc6821_data = type { i32*, i32*, i32*, i32, i64, %struct.i2c_client* }
%struct.i2c_client = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@AMC6821_REG_LTEMP_FAN_CTRL = common dso_local global i32 0, align 4
@AMC6821_REG_RTEMP_FAN_CTRL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Unknown attr->nr (%d).\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@AMC6821_REG_PSV_TEMP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Register write error, aborting.\0A\00", align 1
@EIO = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"Unknown attr->index (%d).\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @temp_auto_point_temp_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @temp_auto_point_temp_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.amc6821_data*, align 8
  %11 = alloca %struct.i2c_client*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %19 = load %struct.device*, %struct.device** %6, align 8
  %20 = call %struct.amc6821_data* @amc6821_update_device(%struct.device* %19)
  store %struct.amc6821_data* %20, %struct.amc6821_data** %10, align 8
  %21 = load %struct.amc6821_data*, %struct.amc6821_data** %10, align 8
  %22 = getelementptr inbounds %struct.amc6821_data, %struct.amc6821_data* %21, i32 0, i32 5
  %23 = load %struct.i2c_client*, %struct.i2c_client** %22, align 8
  store %struct.i2c_client* %23, %struct.i2c_client** %11, align 8
  %24 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %25 = call %struct.TYPE_2__* @to_sensor_dev_attr_2(%struct.device_attribute* %24)
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %12, align 4
  %28 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %29 = call %struct.TYPE_2__* @to_sensor_dev_attr_2(%struct.device_attribute* %28)
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %13, align 4
  %32 = load i8*, i8** %8, align 8
  %33 = call i32 @kstrtol(i8* %32, i32 10, i64* %17)
  store i32 %33, i32* %18, align 4
  %34 = load i32, i32* %18, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %4
  %37 = load i32, i32* %18, align 4
  store i32 %37, i32* %5, align 4
  br label %178

38:                                               ; preds = %4
  %39 = load i32, i32* %13, align 4
  switch i32 %39, label %50 [
    i32 1, label %40
    i32 2, label %45
  ]

40:                                               ; preds = %38
  %41 = load %struct.amc6821_data*, %struct.amc6821_data** %10, align 8
  %42 = getelementptr inbounds %struct.amc6821_data, %struct.amc6821_data* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  store i32* %43, i32** %14, align 8
  %44 = load i32, i32* @AMC6821_REG_LTEMP_FAN_CTRL, align 4
  store i32 %44, i32* %15, align 4
  br label %56

45:                                               ; preds = %38
  %46 = load %struct.amc6821_data*, %struct.amc6821_data** %10, align 8
  %47 = getelementptr inbounds %struct.amc6821_data, %struct.amc6821_data* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  store i32* %48, i32** %14, align 8
  %49 = load i32, i32* @AMC6821_REG_RTEMP_FAN_CTRL, align 4
  store i32 %49, i32* %15, align 4
  br label %56

50:                                               ; preds = %38
  %51 = load %struct.device*, %struct.device** %6, align 8
  %52 = load i32, i32* %13, align 4
  %53 = call i32 @dev_dbg(%struct.device* %51, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %5, align 4
  br label %178

56:                                               ; preds = %45, %40
  %57 = load %struct.amc6821_data*, %struct.amc6821_data** %10, align 8
  %58 = getelementptr inbounds %struct.amc6821_data, %struct.amc6821_data* %57, i32 0, i32 3
  %59 = call i32 @mutex_lock(i32* %58)
  %60 = load %struct.amc6821_data*, %struct.amc6821_data** %10, align 8
  %61 = getelementptr inbounds %struct.amc6821_data, %struct.amc6821_data* %60, i32 0, i32 4
  store i64 0, i64* %61, align 8
  %62 = load i32, i32* %12, align 4
  switch i32 %62, label %143 [
    i32 0, label %63
    i32 1, label %107
    i32 2, label %133
  ]

63:                                               ; preds = %56
  %64 = load i64, i64* %17, align 8
  %65 = sdiv i64 %64, 1000
  %66 = load %struct.amc6821_data*, %struct.amc6821_data** %10, align 8
  %67 = getelementptr inbounds %struct.amc6821_data, %struct.amc6821_data* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @clamp_val(i64 %65, i32 0, i32 %70)
  %72 = load i32*, i32** %14, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  store i32 %71, i32* %73, align 4
  %74 = load i32*, i32** %14, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  %76 = load i32, i32* %75, align 4
  %77 = sext i32 %76 to i64
  %78 = load %struct.amc6821_data*, %struct.amc6821_data** %10, align 8
  %79 = getelementptr inbounds %struct.amc6821_data, %struct.amc6821_data* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @clamp_val(i64 %77, i32 0, i32 %82)
  %84 = load i32*, i32** %14, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 0
  store i32 %83, i32* %85, align 4
  %86 = load i32*, i32** %14, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  %88 = load i32, i32* %87, align 4
  %89 = sext i32 %88 to i64
  %90 = call i32 @clamp_val(i64 %89, i32 0, i32 63)
  %91 = load i32*, i32** %14, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 0
  store i32 %90, i32* %92, align 4
  %93 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %94 = load i32, i32* @AMC6821_REG_PSV_TEMP, align 4
  %95 = load i32*, i32** %14, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %93, i32 %94, i32 %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %63
  %101 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %102 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %101, i32 0, i32 0
  %103 = call i32 @dev_err(i32* %102, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %104 = load i64, i64* @EIO, align 8
  %105 = sub i64 0, %104
  store i64 %105, i64* %9, align 8
  br label %106

106:                                              ; preds = %100, %63
  br label %172

107:                                              ; preds = %56
  %108 = load i64, i64* %17, align 8
  %109 = sdiv i64 %108, 1000
  %110 = load i32*, i32** %14, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 0
  %112 = load i32, i32* %111, align 4
  %113 = and i32 %112, 124
  %114 = add nsw i32 %113, 4
  %115 = call i32 @clamp_val(i64 %109, i32 %114, i32 124)
  %116 = load i32*, i32** %14, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 1
  store i32 %115, i32* %117, align 4
  %118 = load i32*, i32** %14, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 1
  %120 = load i32, i32* %119, align 4
  %121 = and i32 %120, 124
  store i32 %121, i32* %119, align 4
  %122 = load i32*, i32** %14, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 2
  %124 = load i32, i32* %123, align 4
  %125 = sext i32 %124 to i64
  %126 = load i32*, i32** %14, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 1
  %128 = load i32, i32* %127, align 4
  %129 = add nsw i32 %128, 1
  %130 = call i32 @clamp_val(i64 %125, i32 %129, i32 255)
  %131 = load i32*, i32** %14, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 2
  store i32 %130, i32* %132, align 4
  br label %150

133:                                              ; preds = %56
  %134 = load i64, i64* %17, align 8
  %135 = sdiv i64 %134, 1000
  %136 = load i32*, i32** %14, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 1
  %138 = load i32, i32* %137, align 4
  %139 = add nsw i32 %138, 1
  %140 = call i32 @clamp_val(i64 %135, i32 %139, i32 255)
  %141 = load i32*, i32** %14, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 2
  store i32 %140, i32* %142, align 4
  br label %150

143:                                              ; preds = %56
  %144 = load %struct.device*, %struct.device** %6, align 8
  %145 = load i32, i32* %12, align 4
  %146 = call i32 @dev_dbg(%struct.device* %144, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %145)
  %147 = load i32, i32* @EINVAL, align 4
  %148 = sub nsw i32 0, %147
  %149 = sext i32 %148 to i64
  store i64 %149, i64* %9, align 8
  br label %172

150:                                              ; preds = %133, %107
  %151 = load %struct.amc6821_data*, %struct.amc6821_data** %10, align 8
  %152 = getelementptr inbounds %struct.amc6821_data, %struct.amc6821_data* %151, i32 0, i32 2
  %153 = load i32*, i32** %152, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 2
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.amc6821_data*, %struct.amc6821_data** %10, align 8
  %157 = getelementptr inbounds %struct.amc6821_data, %struct.amc6821_data* %156, i32 0, i32 2
  %158 = load i32*, i32** %157, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 1
  %160 = load i32, i32* %159, align 4
  %161 = sub nsw i32 %155, %160
  store i32 %161, i32* %16, align 4
  %162 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %163 = load i32, i32* %15, align 4
  %164 = load i32, i32* %16, align 4
  %165 = load i32*, i32** %14, align 8
  %166 = call i64 @set_slope_register(%struct.i2c_client* %162, i32 %163, i32 %164, i32* %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %150
  %169 = load i64, i64* @EIO, align 8
  %170 = sub i64 0, %169
  store i64 %170, i64* %9, align 8
  br label %171

171:                                              ; preds = %168, %150
  br label %172

172:                                              ; preds = %171, %143, %106
  %173 = load %struct.amc6821_data*, %struct.amc6821_data** %10, align 8
  %174 = getelementptr inbounds %struct.amc6821_data, %struct.amc6821_data* %173, i32 0, i32 3
  %175 = call i32 @mutex_unlock(i32* %174)
  %176 = load i64, i64* %9, align 8
  %177 = trunc i64 %176 to i32
  store i32 %177, i32* %5, align 4
  br label %178

178:                                              ; preds = %172, %50, %36
  %179 = load i32, i32* %5, align 4
  ret i32 %179
}

declare dso_local %struct.amc6821_data* @amc6821_update_device(%struct.device*) #1

declare dso_local %struct.TYPE_2__* @to_sensor_dev_attr_2(%struct.device_attribute*) #1

declare dso_local i32 @kstrtol(i8*, i32, i64*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @clamp_val(i64, i32, i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i64 @set_slope_register(%struct.i2c_client*, i32, i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
