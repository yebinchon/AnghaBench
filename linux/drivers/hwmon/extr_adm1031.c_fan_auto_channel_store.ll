; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_adm1031.c_fan_auto_channel_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_adm1031.c_fan_auto_channel_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.adm1031_data = type { i32, i32*, i32*, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }
%struct.TYPE_2__ = type { i32 }

@ADM1031_CONF1_AUTO_MODE = common dso_local global i32 0, align 4
@ADM1031_REG_PWM = common dso_local global i32 0, align 4
@ADM1031_REG_CONF1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @fan_auto_channel_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fan_auto_channel_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.adm1031_data*, align 8
  %11 = alloca %struct.i2c_client*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %17 = load %struct.device*, %struct.device** %6, align 8
  %18 = call %struct.adm1031_data* @dev_get_drvdata(%struct.device* %17)
  store %struct.adm1031_data* %18, %struct.adm1031_data** %10, align 8
  %19 = load %struct.adm1031_data*, %struct.adm1031_data** %10, align 8
  %20 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %19, i32 0, i32 4
  %21 = load %struct.i2c_client*, %struct.i2c_client** %20, align 8
  store %struct.i2c_client* %21, %struct.i2c_client** %11, align 8
  %22 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %23 = call %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute* %22)
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %12, align 4
  %26 = load i8*, i8** %8, align 8
  %27 = call i32 @kstrtol(i8* %26, i32 10, i64* %13)
  store i32 %27, i32* %15, align 4
  %28 = load i32, i32* %15, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %4
  %31 = load i32, i32* %15, align 4
  store i32 %31, i32* %5, align 4
  br label %157

32:                                               ; preds = %4
  %33 = load %struct.adm1031_data*, %struct.adm1031_data** %10, align 8
  %34 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %16, align 4
  %36 = load %struct.adm1031_data*, %struct.adm1031_data** %10, align 8
  %37 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %36, i32 0, i32 3
  %38 = call i32 @mutex_lock(i32* %37)
  %39 = load %struct.adm1031_data*, %struct.adm1031_data** %10, align 8
  %40 = load i32, i32* %12, align 4
  %41 = load i64, i64* %13, align 8
  %42 = load %struct.adm1031_data*, %struct.adm1031_data** %10, align 8
  %43 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @get_fan_auto_nearest(%struct.adm1031_data* %39, i32 %40, i64 %41, i32 %44)
  store i32 %45, i32* %15, align 4
  %46 = load i32, i32* %15, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %32
  %49 = load %struct.adm1031_data*, %struct.adm1031_data** %10, align 8
  %50 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %49, i32 0, i32 3
  %51 = call i32 @mutex_unlock(i32* %50)
  %52 = load i32, i32* %15, align 4
  store i32 %52, i32* %5, align 4
  br label %157

53:                                               ; preds = %32
  %54 = load i32, i32* %15, align 4
  store i32 %54, i32* %14, align 4
  %55 = load i32, i32* %14, align 4
  %56 = load %struct.adm1031_data*, %struct.adm1031_data** %10, align 8
  %57 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i8* @FAN_CHAN_TO_REG(i32 %55, i32 %58)
  %60 = ptrtoint i8* %59 to i32
  %61 = load %struct.adm1031_data*, %struct.adm1031_data** %10, align 8
  %62 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load %struct.adm1031_data*, %struct.adm1031_data** %10, align 8
  %64 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @ADM1031_CONF1_AUTO_MODE, align 4
  %67 = and i32 %65, %66
  %68 = load i32, i32* %16, align 4
  %69 = load i32, i32* @ADM1031_CONF1_AUTO_MODE, align 4
  %70 = and i32 %68, %69
  %71 = xor i32 %67, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %137

73:                                               ; preds = %53
  %74 = load %struct.adm1031_data*, %struct.adm1031_data** %10, align 8
  %75 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @ADM1031_CONF1_AUTO_MODE, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %102

80:                                               ; preds = %73
  %81 = load %struct.adm1031_data*, %struct.adm1031_data** %10, align 8
  %82 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %81, i32 0, i32 2
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.adm1031_data*, %struct.adm1031_data** %10, align 8
  %87 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 0
  store i32 %85, i32* %89, align 4
  %90 = load %struct.adm1031_data*, %struct.adm1031_data** %10, align 8
  %91 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %90, i32 0, i32 2
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.adm1031_data*, %struct.adm1031_data** %10, align 8
  %96 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 1
  store i32 %94, i32* %98, align 4
  %99 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %100 = load i32, i32* @ADM1031_REG_PWM, align 4
  %101 = call i32 @adm1031_write_value(%struct.i2c_client* %99, i32 %100, i32 85)
  br label %136

102:                                              ; preds = %73
  %103 = load %struct.adm1031_data*, %struct.adm1031_data** %10, align 8
  %104 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %103, i32 0, i32 1
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 0
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.adm1031_data*, %struct.adm1031_data** %10, align 8
  %109 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %108, i32 0, i32 2
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 0
  store i32 %107, i32* %111, align 4
  %112 = load %struct.adm1031_data*, %struct.adm1031_data** %10, align 8
  %113 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %112, i32 0, i32 1
  %114 = load i32*, i32** %113, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.adm1031_data*, %struct.adm1031_data** %10, align 8
  %118 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %117, i32 0, i32 2
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 1
  store i32 %116, i32* %120, align 4
  %121 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %122 = load i32, i32* @ADM1031_REG_PWM, align 4
  %123 = load %struct.adm1031_data*, %struct.adm1031_data** %10, align 8
  %124 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %123, i32 0, i32 2
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 0
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.adm1031_data*, %struct.adm1031_data** %10, align 8
  %129 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %128, i32 0, i32 2
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 1
  %132 = load i32, i32* %131, align 4
  %133 = shl i32 %132, 4
  %134 = or i32 %127, %133
  %135 = call i32 @adm1031_write_value(%struct.i2c_client* %121, i32 %122, i32 %134)
  br label %136

136:                                              ; preds = %102, %80
  br label %137

137:                                              ; preds = %136, %53
  %138 = load i32, i32* %14, align 4
  %139 = load %struct.adm1031_data*, %struct.adm1031_data** %10, align 8
  %140 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = call i8* @FAN_CHAN_TO_REG(i32 %138, i32 %141)
  %143 = ptrtoint i8* %142 to i32
  %144 = load %struct.adm1031_data*, %struct.adm1031_data** %10, align 8
  %145 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %144, i32 0, i32 0
  store i32 %143, i32* %145, align 8
  %146 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %147 = load i32, i32* @ADM1031_REG_CONF1, align 4
  %148 = load %struct.adm1031_data*, %struct.adm1031_data** %10, align 8
  %149 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = call i32 @adm1031_write_value(%struct.i2c_client* %146, i32 %147, i32 %150)
  %152 = load %struct.adm1031_data*, %struct.adm1031_data** %10, align 8
  %153 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %152, i32 0, i32 3
  %154 = call i32 @mutex_unlock(i32* %153)
  %155 = load i64, i64* %9, align 8
  %156 = trunc i64 %155 to i32
  store i32 %156, i32* %5, align 4
  br label %157

157:                                              ; preds = %137, %48, %30
  %158 = load i32, i32* %5, align 4
  ret i32 %158
}

declare dso_local %struct.adm1031_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local i32 @kstrtol(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @get_fan_auto_nearest(%struct.adm1031_data*, i32, i64, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i8* @FAN_CHAN_TO_REG(i32, i32) #1

declare dso_local i32 @adm1031_write_value(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
