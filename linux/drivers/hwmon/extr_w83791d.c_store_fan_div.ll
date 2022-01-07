; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83791d.c_store_fan_div.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83791d.c_store_fan_div.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute = type { i32 }
%struct.i2c_client = type { i32 }
%struct.w83791d_data = type { i32*, i32*, i32 }

@W83791D_REG_FAN_DIV = common dso_local global i32* null, align 8
@W83791D_REG_VBAT = common dso_local global i32 0, align 4
@W83791D_REG_FAN_MIN = common dso_local global i32* null, align 8
@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_fan_div to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @store_fan_div(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sensor_device_attribute*, align 8
  %11 = alloca %struct.i2c_client*, align 8
  %12 = alloca %struct.w83791d_data*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %23 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %24 = call %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute* %23)
  store %struct.sensor_device_attribute* %24, %struct.sensor_device_attribute** %10, align 8
  %25 = load %struct.device*, %struct.device** %6, align 8
  %26 = call %struct.i2c_client* @to_i2c_client(%struct.device* %25)
  store %struct.i2c_client* %26, %struct.i2c_client** %11, align 8
  %27 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %28 = call %struct.w83791d_data* @i2c_get_clientdata(%struct.i2c_client* %27)
  store %struct.w83791d_data* %28, %struct.w83791d_data** %12, align 8
  %29 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %10, align 8
  %30 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %13, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %32 = load i8*, i8** %8, align 8
  %33 = call i32 @kstrtoul(i8* %32, i32 10, i64* %21)
  store i32 %33, i32* %22, align 4
  %34 = load i32, i32* %22, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %4
  %37 = load i32, i32* %22, align 4
  store i32 %37, i32* %5, align 4
  br label %172

38:                                               ; preds = %4
  %39 = load %struct.w83791d_data*, %struct.w83791d_data** %12, align 8
  %40 = getelementptr inbounds %struct.w83791d_data, %struct.w83791d_data* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %13, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.w83791d_data*, %struct.w83791d_data** %12, align 8
  %47 = getelementptr inbounds %struct.w83791d_data, %struct.w83791d_data* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %13, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @DIV_FROM_REG(i32 %52)
  %54 = call i64 @FAN_FROM_REG(i32 %45, i32 %53)
  store i64 %54, i64* %14, align 8
  %55 = load %struct.w83791d_data*, %struct.w83791d_data** %12, align 8
  %56 = getelementptr inbounds %struct.w83791d_data, %struct.w83791d_data* %55, i32 0, i32 2
  %57 = call i32 @mutex_lock(i32* %56)
  %58 = load i32, i32* %13, align 4
  %59 = load i64, i64* %21, align 8
  %60 = call i32 @div_to_reg(i32 %58, i64 %59)
  %61 = load %struct.w83791d_data*, %struct.w83791d_data** %12, align 8
  %62 = getelementptr inbounds %struct.w83791d_data, %struct.w83791d_data* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %13, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  store i32 %60, i32* %66, align 4
  %67 = load i32, i32* %13, align 4
  switch i32 %67, label %73 [
    i32 0, label %68
    i32 1, label %69
    i32 2, label %70
    i32 3, label %71
    i32 4, label %72
  ]

68:                                               ; preds = %38
  store i32 0, i32* %18, align 4
  store i32 207, i32* %19, align 4
  store i32 4, i32* %20, align 4
  br label %73

69:                                               ; preds = %38
  store i32 0, i32* %18, align 4
  store i32 63, i32* %19, align 4
  store i32 6, i32* %20, align 4
  br label %73

70:                                               ; preds = %38
  store i32 1, i32* %18, align 4
  store i32 63, i32* %19, align 4
  store i32 6, i32* %20, align 4
  br label %73

71:                                               ; preds = %38
  store i32 2, i32* %18, align 4
  store i32 248, i32* %19, align 4
  store i32 0, i32* %20, align 4
  br label %73

72:                                               ; preds = %38
  store i32 2, i32* %18, align 4
  store i32 143, i32* %19, align 4
  store i32 4, i32* %20, align 4
  br label %73

73:                                               ; preds = %38, %72, %71, %70, %69, %68
  %74 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %75 = load i32*, i32** @W83791D_REG_FAN_DIV, align 8
  %76 = load i32, i32* %18, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @w83791d_read(%struct.i2c_client* %74, i32 %79)
  %81 = load i32, i32* %19, align 4
  %82 = and i32 %80, %81
  store i32 %82, i32* %16, align 4
  %83 = load %struct.w83791d_data*, %struct.w83791d_data** %12, align 8
  %84 = getelementptr inbounds %struct.w83791d_data, %struct.w83791d_data* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %13, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %20, align 4
  %91 = shl i32 %89, %90
  %92 = load i32, i32* %19, align 4
  %93 = xor i32 %92, -1
  %94 = and i32 %91, %93
  store i32 %94, i32* %15, align 4
  %95 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %96 = load i32*, i32** @W83791D_REG_FAN_DIV, align 8
  %97 = load i32, i32* %18, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %16, align 4
  %102 = load i32, i32* %15, align 4
  %103 = or i32 %101, %102
  %104 = call i32 @w83791d_write(%struct.i2c_client* %95, i32 %100, i32 %103)
  %105 = load i32, i32* %13, align 4
  %106 = icmp slt i32 %105, 3
  br i1 %106, label %107, label %136

107:                                              ; preds = %73
  %108 = load i32, i32* %13, align 4
  %109 = add nsw i32 %108, 5
  %110 = shl i32 1, %109
  %111 = xor i32 %110, -1
  store i32 %111, i32* %19, align 4
  %112 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %113 = load i32, i32* @W83791D_REG_VBAT, align 4
  %114 = call i32 @w83791d_read(%struct.i2c_client* %112, i32 %113)
  %115 = load i32, i32* %19, align 4
  %116 = and i32 %114, %115
  store i32 %116, i32* %17, align 4
  %117 = load %struct.w83791d_data*, %struct.w83791d_data** %12, align 8
  %118 = getelementptr inbounds %struct.w83791d_data, %struct.w83791d_data* %117, i32 0, i32 1
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %13, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %13, align 4
  %125 = add nsw i32 3, %124
  %126 = shl i32 %123, %125
  %127 = load i32, i32* %19, align 4
  %128 = xor i32 %127, -1
  %129 = and i32 %126, %128
  store i32 %129, i32* %15, align 4
  %130 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %131 = load i32, i32* @W83791D_REG_VBAT, align 4
  %132 = load i32, i32* %17, align 4
  %133 = load i32, i32* %15, align 4
  %134 = or i32 %132, %133
  %135 = call i32 @w83791d_write(%struct.i2c_client* %130, i32 %131, i32 %134)
  br label %136

136:                                              ; preds = %107, %73
  %137 = load i64, i64* %14, align 8
  %138 = load %struct.w83791d_data*, %struct.w83791d_data** %12, align 8
  %139 = getelementptr inbounds %struct.w83791d_data, %struct.w83791d_data* %138, i32 0, i32 1
  %140 = load i32*, i32** %139, align 8
  %141 = load i32, i32* %13, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @DIV_FROM_REG(i32 %144)
  %146 = call i32 @fan_to_reg(i64 %137, i32 %145)
  %147 = load %struct.w83791d_data*, %struct.w83791d_data** %12, align 8
  %148 = getelementptr inbounds %struct.w83791d_data, %struct.w83791d_data* %147, i32 0, i32 0
  %149 = load i32*, i32** %148, align 8
  %150 = load i32, i32* %13, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  store i32 %146, i32* %152, align 4
  %153 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %154 = load i32*, i32** @W83791D_REG_FAN_MIN, align 8
  %155 = load i32, i32* %13, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.w83791d_data*, %struct.w83791d_data** %12, align 8
  %160 = getelementptr inbounds %struct.w83791d_data, %struct.w83791d_data* %159, i32 0, i32 0
  %161 = load i32*, i32** %160, align 8
  %162 = load i32, i32* %13, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @w83791d_write(%struct.i2c_client* %153, i32 %158, i32 %165)
  %167 = load %struct.w83791d_data*, %struct.w83791d_data** %12, align 8
  %168 = getelementptr inbounds %struct.w83791d_data, %struct.w83791d_data* %167, i32 0, i32 2
  %169 = call i32 @mutex_unlock(i32* %168)
  %170 = load i64, i64* %9, align 8
  %171 = trunc i64 %170 to i32
  store i32 %171, i32* %5, align 4
  br label %172

172:                                              ; preds = %136, %36
  %173 = load i32, i32* %5, align 4
  ret i32 %173
}

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.w83791d_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i64 @FAN_FROM_REG(i32, i32) #1

declare dso_local i32 @DIV_FROM_REG(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @div_to_reg(i32, i64) #1

declare dso_local i32 @w83791d_read(%struct.i2c_client*, i32) #1

declare dso_local i32 @w83791d_write(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @fan_to_reg(i64, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
