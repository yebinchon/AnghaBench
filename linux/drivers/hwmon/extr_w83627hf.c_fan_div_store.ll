; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83627hf.c_fan_div_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83627hf.c_fan_div_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.w83627hf_data = type { i32*, i32*, i32 }
%struct.TYPE_2__ = type { i32 }

@W83781D_REG_PIN = common dso_local global i32 0, align 4
@W83781D_REG_VID_FANDIV = common dso_local global i32 0, align 4
@W83781D_REG_VBAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @fan_div_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fan_div_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.w83627hf_data*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %17 = call %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute* %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %10, align 4
  %20 = load %struct.device*, %struct.device** %6, align 8
  %21 = call %struct.w83627hf_data* @dev_get_drvdata(%struct.device* %20)
  store %struct.w83627hf_data* %21, %struct.w83627hf_data** %11, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = call i32 @kstrtoul(i8* %22, i32 10, i64* %14)
  store i32 %23, i32* %15, align 4
  %24 = load i32, i32* %15, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %4
  %27 = load i32, i32* %15, align 4
  store i32 %27, i32* %5, align 4
  br label %152

28:                                               ; preds = %4
  %29 = load %struct.w83627hf_data*, %struct.w83627hf_data** %11, align 8
  %30 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %29, i32 0, i32 2
  %31 = call i32 @mutex_lock(i32* %30)
  %32 = load %struct.w83627hf_data*, %struct.w83627hf_data** %11, align 8
  %33 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %10, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.w83627hf_data*, %struct.w83627hf_data** %11, align 8
  %40 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %10, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @DIV_FROM_REG(i32 %45)
  %47 = call i64 @FAN_FROM_REG(i32 %38, i32 %46)
  store i64 %47, i64* %12, align 8
  %48 = load i64, i64* %14, align 8
  %49 = call i32 @DIV_TO_REG(i64 %48)
  %50 = load %struct.w83627hf_data*, %struct.w83627hf_data** %11, align 8
  %51 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %10, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  store i32 %49, i32* %55, align 4
  %56 = load %struct.w83627hf_data*, %struct.w83627hf_data** %11, align 8
  %57 = load i32, i32* %10, align 4
  %58 = icmp eq i32 %57, 2
  br i1 %58, label %59, label %61

59:                                               ; preds = %28
  %60 = load i32, i32* @W83781D_REG_PIN, align 4
  br label %63

61:                                               ; preds = %28
  %62 = load i32, i32* @W83781D_REG_VID_FANDIV, align 4
  br label %63

63:                                               ; preds = %61, %59
  %64 = phi i32 [ %60, %59 ], [ %62, %61 ]
  %65 = call i32 @w83627hf_read_value(%struct.w83627hf_data* %56, i32 %64)
  %66 = load i32, i32* %10, align 4
  %67 = icmp eq i32 %66, 0
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i32 207, i32 63
  %70 = and i32 %65, %69
  %71 = load %struct.w83627hf_data*, %struct.w83627hf_data** %11, align 8
  %72 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %10, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %77, 3
  %79 = load i32, i32* %10, align 4
  %80 = icmp eq i32 %79, 0
  %81 = zext i1 %80 to i64
  %82 = select i1 %80, i32 4, i32 6
  %83 = shl i32 %78, %82
  %84 = or i32 %70, %83
  store i32 %84, i32* %13, align 4
  %85 = load %struct.w83627hf_data*, %struct.w83627hf_data** %11, align 8
  %86 = load i32, i32* %10, align 4
  %87 = icmp eq i32 %86, 2
  br i1 %87, label %88, label %90

88:                                               ; preds = %63
  %89 = load i32, i32* @W83781D_REG_PIN, align 4
  br label %92

90:                                               ; preds = %63
  %91 = load i32, i32* @W83781D_REG_VID_FANDIV, align 4
  br label %92

92:                                               ; preds = %90, %88
  %93 = phi i32 [ %89, %88 ], [ %91, %90 ]
  %94 = load i32, i32* %13, align 4
  %95 = call i32 @w83627hf_write_value(%struct.w83627hf_data* %85, i32 %93, i32 %94)
  %96 = load %struct.w83627hf_data*, %struct.w83627hf_data** %11, align 8
  %97 = load i32, i32* @W83781D_REG_VBAT, align 4
  %98 = call i32 @w83627hf_read_value(%struct.w83627hf_data* %96, i32 %97)
  %99 = load i32, i32* %10, align 4
  %100 = add nsw i32 5, %99
  %101 = shl i32 1, %100
  %102 = xor i32 %101, -1
  %103 = and i32 %98, %102
  %104 = load %struct.w83627hf_data*, %struct.w83627hf_data** %11, align 8
  %105 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %104, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %10, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = and i32 %110, 4
  %112 = load i32, i32* %10, align 4
  %113 = add nsw i32 3, %112
  %114 = shl i32 %111, %113
  %115 = or i32 %103, %114
  store i32 %115, i32* %13, align 4
  %116 = load %struct.w83627hf_data*, %struct.w83627hf_data** %11, align 8
  %117 = load i32, i32* @W83781D_REG_VBAT, align 4
  %118 = load i32, i32* %13, align 4
  %119 = call i32 @w83627hf_write_value(%struct.w83627hf_data* %116, i32 %117, i32 %118)
  %120 = load i64, i64* %12, align 8
  %121 = load %struct.w83627hf_data*, %struct.w83627hf_data** %11, align 8
  %122 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %121, i32 0, i32 1
  %123 = load i32*, i32** %122, align 8
  %124 = load i32, i32* %10, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @DIV_FROM_REG(i32 %127)
  %129 = call i32 @FAN_TO_REG(i64 %120, i32 %128)
  %130 = load %struct.w83627hf_data*, %struct.w83627hf_data** %11, align 8
  %131 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %130, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = load i32, i32* %10, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  store i32 %129, i32* %135, align 4
  %136 = load %struct.w83627hf_data*, %struct.w83627hf_data** %11, align 8
  %137 = load i32, i32* %10, align 4
  %138 = call i32 @W83627HF_REG_FAN_MIN(i32 %137)
  %139 = load %struct.w83627hf_data*, %struct.w83627hf_data** %11, align 8
  %140 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %139, i32 0, i32 0
  %141 = load i32*, i32** %140, align 8
  %142 = load i32, i32* %10, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @w83627hf_write_value(%struct.w83627hf_data* %136, i32 %138, i32 %145)
  %147 = load %struct.w83627hf_data*, %struct.w83627hf_data** %11, align 8
  %148 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %147, i32 0, i32 2
  %149 = call i32 @mutex_unlock(i32* %148)
  %150 = load i64, i64* %9, align 8
  %151 = trunc i64 %150 to i32
  store i32 %151, i32* %5, align 4
  br label %152

152:                                              ; preds = %92, %26
  %153 = load i32, i32* %5, align 4
  ret i32 %153
}

declare dso_local %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.w83627hf_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @FAN_FROM_REG(i32, i32) #1

declare dso_local i32 @DIV_FROM_REG(i32) #1

declare dso_local i32 @DIV_TO_REG(i64) #1

declare dso_local i32 @w83627hf_read_value(%struct.w83627hf_data*, i32) #1

declare dso_local i32 @w83627hf_write_value(%struct.w83627hf_data*, i32, i32) #1

declare dso_local i32 @FAN_TO_REG(i64, i32) #1

declare dso_local i32 @W83627HF_REG_FAN_MIN(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
