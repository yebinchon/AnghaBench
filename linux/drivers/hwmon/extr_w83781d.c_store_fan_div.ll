; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83781d.c_store_fan_div.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83781d.c_store_fan_div.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute = type { i32 }
%struct.w83781d_data = type { i32*, i32*, i64, i32 }

@W83781D_REG_PIN = common dso_local global i32 0, align 4
@W83781D_REG_VID_FANDIV = common dso_local global i32 0, align 4
@w83781d = common dso_local global i64 0, align 8
@as99127f = common dso_local global i64 0, align 8
@W83781D_REG_VBAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_fan_div to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @store_fan_div(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sensor_device_attribute*, align 8
  %11 = alloca %struct.w83781d_data*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %17 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %18 = call %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute* %17)
  store %struct.sensor_device_attribute* %18, %struct.sensor_device_attribute** %10, align 8
  %19 = load %struct.device*, %struct.device** %6, align 8
  %20 = call %struct.w83781d_data* @dev_get_drvdata(%struct.device* %19)
  store %struct.w83781d_data* %20, %struct.w83781d_data** %11, align 8
  %21 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %10, align 8
  %22 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %13, align 4
  %24 = load i8*, i8** %8, align 8
  %25 = call i32 @kstrtoul(i8* %24, i32 10, i64* %15)
  store i32 %25, i32* %16, align 4
  %26 = load i32, i32* %16, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %4
  %29 = load i32, i32* %16, align 4
  store i32 %29, i32* %5, align 4
  br label %170

30:                                               ; preds = %4
  %31 = load %struct.w83781d_data*, %struct.w83781d_data** %11, align 8
  %32 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %31, i32 0, i32 3
  %33 = call i32 @mutex_lock(i32* %32)
  %34 = load %struct.w83781d_data*, %struct.w83781d_data** %11, align 8
  %35 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %13, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.w83781d_data*, %struct.w83781d_data** %11, align 8
  %42 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %13, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @DIV_FROM_REG(i32 %47)
  %49 = call i64 @FAN_FROM_REG(i32 %40, i32 %48)
  store i64 %49, i64* %12, align 8
  %50 = load i64, i64* %15, align 8
  %51 = load %struct.w83781d_data*, %struct.w83781d_data** %11, align 8
  %52 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @DIV_TO_REG(i64 %50, i64 %53)
  %55 = load %struct.w83781d_data*, %struct.w83781d_data** %11, align 8
  %56 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %13, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  store i32 %54, i32* %60, align 4
  %61 = load %struct.w83781d_data*, %struct.w83781d_data** %11, align 8
  %62 = load i32, i32* %13, align 4
  %63 = icmp eq i32 %62, 2
  br i1 %63, label %64, label %66

64:                                               ; preds = %30
  %65 = load i32, i32* @W83781D_REG_PIN, align 4
  br label %68

66:                                               ; preds = %30
  %67 = load i32, i32* @W83781D_REG_VID_FANDIV, align 4
  br label %68

68:                                               ; preds = %66, %64
  %69 = phi i32 [ %65, %64 ], [ %67, %66 ]
  %70 = call i32 @w83781d_read_value(%struct.w83781d_data* %61, i32 %69)
  %71 = load i32, i32* %13, align 4
  %72 = icmp eq i32 %71, 0
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i32 207, i32 63
  %75 = and i32 %70, %74
  %76 = load %struct.w83781d_data*, %struct.w83781d_data** %11, align 8
  %77 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %13, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = and i32 %82, 3
  %84 = load i32, i32* %13, align 4
  %85 = icmp eq i32 %84, 0
  %86 = zext i1 %85 to i64
  %87 = select i1 %85, i32 4, i32 6
  %88 = shl i32 %83, %87
  %89 = or i32 %75, %88
  store i32 %89, i32* %14, align 4
  %90 = load %struct.w83781d_data*, %struct.w83781d_data** %11, align 8
  %91 = load i32, i32* %13, align 4
  %92 = icmp eq i32 %91, 2
  br i1 %92, label %93, label %95

93:                                               ; preds = %68
  %94 = load i32, i32* @W83781D_REG_PIN, align 4
  br label %97

95:                                               ; preds = %68
  %96 = load i32, i32* @W83781D_REG_VID_FANDIV, align 4
  br label %97

97:                                               ; preds = %95, %93
  %98 = phi i32 [ %94, %93 ], [ %96, %95 ]
  %99 = load i32, i32* %14, align 4
  %100 = call i32 @w83781d_write_value(%struct.w83781d_data* %90, i32 %98, i32 %99)
  %101 = load %struct.w83781d_data*, %struct.w83781d_data** %11, align 8
  %102 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @w83781d, align 8
  %105 = icmp ne i64 %103, %104
  br i1 %105, label %106, label %137

106:                                              ; preds = %97
  %107 = load %struct.w83781d_data*, %struct.w83781d_data** %11, align 8
  %108 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @as99127f, align 8
  %111 = icmp ne i64 %109, %110
  br i1 %111, label %112, label %137

112:                                              ; preds = %106
  %113 = load %struct.w83781d_data*, %struct.w83781d_data** %11, align 8
  %114 = load i32, i32* @W83781D_REG_VBAT, align 4
  %115 = call i32 @w83781d_read_value(%struct.w83781d_data* %113, i32 %114)
  %116 = load i32, i32* %13, align 4
  %117 = add nsw i32 5, %116
  %118 = shl i32 1, %117
  %119 = xor i32 %118, -1
  %120 = and i32 %115, %119
  %121 = load %struct.w83781d_data*, %struct.w83781d_data** %11, align 8
  %122 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %121, i32 0, i32 1
  %123 = load i32*, i32** %122, align 8
  %124 = load i32, i32* %13, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = and i32 %127, 4
  %129 = load i32, i32* %13, align 4
  %130 = add nsw i32 3, %129
  %131 = shl i32 %128, %130
  %132 = or i32 %120, %131
  store i32 %132, i32* %14, align 4
  %133 = load %struct.w83781d_data*, %struct.w83781d_data** %11, align 8
  %134 = load i32, i32* @W83781D_REG_VBAT, align 4
  %135 = load i32, i32* %14, align 4
  %136 = call i32 @w83781d_write_value(%struct.w83781d_data* %133, i32 %134, i32 %135)
  br label %137

137:                                              ; preds = %112, %106, %97
  %138 = load i64, i64* %12, align 8
  %139 = load %struct.w83781d_data*, %struct.w83781d_data** %11, align 8
  %140 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %139, i32 0, i32 1
  %141 = load i32*, i32** %140, align 8
  %142 = load i32, i32* %13, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @DIV_FROM_REG(i32 %145)
  %147 = call i32 @FAN_TO_REG(i64 %138, i32 %146)
  %148 = load %struct.w83781d_data*, %struct.w83781d_data** %11, align 8
  %149 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %148, i32 0, i32 0
  %150 = load i32*, i32** %149, align 8
  %151 = load i32, i32* %13, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  store i32 %147, i32* %153, align 4
  %154 = load %struct.w83781d_data*, %struct.w83781d_data** %11, align 8
  %155 = load i32, i32* %13, align 4
  %156 = call i32 @W83781D_REG_FAN_MIN(i32 %155)
  %157 = load %struct.w83781d_data*, %struct.w83781d_data** %11, align 8
  %158 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %157, i32 0, i32 0
  %159 = load i32*, i32** %158, align 8
  %160 = load i32, i32* %13, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %159, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @w83781d_write_value(%struct.w83781d_data* %154, i32 %156, i32 %163)
  %165 = load %struct.w83781d_data*, %struct.w83781d_data** %11, align 8
  %166 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %165, i32 0, i32 3
  %167 = call i32 @mutex_unlock(i32* %166)
  %168 = load i64, i64* %9, align 8
  %169 = trunc i64 %168 to i32
  store i32 %169, i32* %5, align 4
  br label %170

170:                                              ; preds = %137, %28
  %171 = load i32, i32* %5, align 4
  ret i32 %171
}

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.w83781d_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @FAN_FROM_REG(i32, i32) #1

declare dso_local i32 @DIV_FROM_REG(i32) #1

declare dso_local i32 @DIV_TO_REG(i64, i64) #1

declare dso_local i32 @w83781d_read_value(%struct.w83781d_data*, i32) #1

declare dso_local i32 @w83781d_write_value(%struct.w83781d_data*, i32, i32) #1

declare dso_local i32 @FAN_TO_REG(i64, i32) #1

declare dso_local i32 @W83781D_REG_FAN_MIN(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
