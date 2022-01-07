; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_asb100.c_set_fan_div.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_asb100.c_set_fan_div.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.i2c_client = type { i32 }
%struct.asb100_data = type { i32*, i32*, i32 }
%struct.TYPE_2__ = type { i32 }

@ASB100_REG_VID_FANDIV = common dso_local global i32 0, align 4
@ASB100_REG_PIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @set_fan_div to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_fan_div(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.i2c_client*, align 8
  %12 = alloca %struct.asb100_data*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %17 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %18 = call %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute* %17)
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %10, align 4
  %21 = load %struct.device*, %struct.device** %6, align 8
  %22 = call %struct.i2c_client* @to_i2c_client(%struct.device* %21)
  store %struct.i2c_client* %22, %struct.i2c_client** %11, align 8
  %23 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %24 = call %struct.asb100_data* @i2c_get_clientdata(%struct.i2c_client* %23)
  store %struct.asb100_data* %24, %struct.asb100_data** %12, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = call i32 @kstrtoul(i8* %25, i32 10, i64* %15)
  store i32 %26, i32* %16, align 4
  %27 = load i32, i32* %16, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %4
  %30 = load i32, i32* %16, align 4
  store i32 %30, i32* %5, align 4
  br label %144

31:                                               ; preds = %4
  %32 = load %struct.asb100_data*, %struct.asb100_data** %12, align 8
  %33 = getelementptr inbounds %struct.asb100_data, %struct.asb100_data* %32, i32 0, i32 2
  %34 = call i32 @mutex_lock(i32* %33)
  %35 = load %struct.asb100_data*, %struct.asb100_data** %12, align 8
  %36 = getelementptr inbounds %struct.asb100_data, %struct.asb100_data* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %10, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.asb100_data*, %struct.asb100_data** %12, align 8
  %43 = getelementptr inbounds %struct.asb100_data, %struct.asb100_data* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @DIV_FROM_REG(i32 %48)
  %50 = call i64 @FAN_FROM_REG(i32 %41, i32 %49)
  store i64 %50, i64* %13, align 8
  %51 = load i64, i64* %15, align 8
  %52 = call i32 @DIV_TO_REG(i64 %51)
  %53 = load %struct.asb100_data*, %struct.asb100_data** %12, align 8
  %54 = getelementptr inbounds %struct.asb100_data, %struct.asb100_data* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  store i32 %52, i32* %58, align 4
  %59 = load i32, i32* %10, align 4
  switch i32 %59, label %111 [
    i32 0, label %60
    i32 1, label %77
    i32 2, label %94
  ]

60:                                               ; preds = %31
  %61 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %62 = load i32, i32* @ASB100_REG_VID_FANDIV, align 4
  %63 = call i32 @asb100_read_value(%struct.i2c_client* %61, i32 %62)
  store i32 %63, i32* %14, align 4
  %64 = load i32, i32* %14, align 4
  %65 = and i32 %64, 207
  %66 = load %struct.asb100_data*, %struct.asb100_data** %12, align 8
  %67 = getelementptr inbounds %struct.asb100_data, %struct.asb100_data* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  %70 = load i32, i32* %69, align 4
  %71 = shl i32 %70, 4
  %72 = or i32 %65, %71
  store i32 %72, i32* %14, align 4
  %73 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %74 = load i32, i32* @ASB100_REG_VID_FANDIV, align 4
  %75 = load i32, i32* %14, align 4
  %76 = call i32 @asb100_write_value(%struct.i2c_client* %73, i32 %74, i32 %75)
  br label %111

77:                                               ; preds = %31
  %78 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %79 = load i32, i32* @ASB100_REG_VID_FANDIV, align 4
  %80 = call i32 @asb100_read_value(%struct.i2c_client* %78, i32 %79)
  store i32 %80, i32* %14, align 4
  %81 = load i32, i32* %14, align 4
  %82 = and i32 %81, 63
  %83 = load %struct.asb100_data*, %struct.asb100_data** %12, align 8
  %84 = getelementptr inbounds %struct.asb100_data, %struct.asb100_data* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 1
  %87 = load i32, i32* %86, align 4
  %88 = shl i32 %87, 6
  %89 = or i32 %82, %88
  store i32 %89, i32* %14, align 4
  %90 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %91 = load i32, i32* @ASB100_REG_VID_FANDIV, align 4
  %92 = load i32, i32* %14, align 4
  %93 = call i32 @asb100_write_value(%struct.i2c_client* %90, i32 %91, i32 %92)
  br label %111

94:                                               ; preds = %31
  %95 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %96 = load i32, i32* @ASB100_REG_PIN, align 4
  %97 = call i32 @asb100_read_value(%struct.i2c_client* %95, i32 %96)
  store i32 %97, i32* %14, align 4
  %98 = load i32, i32* %14, align 4
  %99 = and i32 %98, 63
  %100 = load %struct.asb100_data*, %struct.asb100_data** %12, align 8
  %101 = getelementptr inbounds %struct.asb100_data, %struct.asb100_data* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 2
  %104 = load i32, i32* %103, align 4
  %105 = shl i32 %104, 6
  %106 = or i32 %99, %105
  store i32 %106, i32* %14, align 4
  %107 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %108 = load i32, i32* @ASB100_REG_PIN, align 4
  %109 = load i32, i32* %14, align 4
  %110 = call i32 @asb100_write_value(%struct.i2c_client* %107, i32 %108, i32 %109)
  br label %111

111:                                              ; preds = %31, %94, %77, %60
  %112 = load i64, i64* %13, align 8
  %113 = load %struct.asb100_data*, %struct.asb100_data** %12, align 8
  %114 = getelementptr inbounds %struct.asb100_data, %struct.asb100_data* %113, i32 0, i32 1
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %10, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @DIV_FROM_REG(i32 %119)
  %121 = call i32 @FAN_TO_REG(i64 %112, i32 %120)
  %122 = load %struct.asb100_data*, %struct.asb100_data** %12, align 8
  %123 = getelementptr inbounds %struct.asb100_data, %struct.asb100_data* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* %10, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  store i32 %121, i32* %127, align 4
  %128 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %129 = load i32, i32* %10, align 4
  %130 = call i32 @ASB100_REG_FAN_MIN(i32 %129)
  %131 = load %struct.asb100_data*, %struct.asb100_data** %12, align 8
  %132 = getelementptr inbounds %struct.asb100_data, %struct.asb100_data* %131, i32 0, i32 0
  %133 = load i32*, i32** %132, align 8
  %134 = load i32, i32* %10, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @asb100_write_value(%struct.i2c_client* %128, i32 %130, i32 %137)
  %139 = load %struct.asb100_data*, %struct.asb100_data** %12, align 8
  %140 = getelementptr inbounds %struct.asb100_data, %struct.asb100_data* %139, i32 0, i32 2
  %141 = call i32 @mutex_unlock(i32* %140)
  %142 = load i64, i64* %9, align 8
  %143 = trunc i64 %142 to i32
  store i32 %143, i32* %5, align 4
  br label %144

144:                                              ; preds = %111, %29
  %145 = load i32, i32* %5, align 4
  ret i32 %145
}

declare dso_local %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.asb100_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @FAN_FROM_REG(i32, i32) #1

declare dso_local i32 @DIV_FROM_REG(i32) #1

declare dso_local i32 @DIV_TO_REG(i64) #1

declare dso_local i32 @asb100_read_value(%struct.i2c_client*, i32) #1

declare dso_local i32 @asb100_write_value(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @FAN_TO_REG(i64, i32) #1

declare dso_local i32 @ASB100_REG_FAN_MIN(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
