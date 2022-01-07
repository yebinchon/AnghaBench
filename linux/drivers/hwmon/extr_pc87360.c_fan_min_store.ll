; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_pc87360.c_fan_min_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_pc87360.c_fan_min_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute = type { i64 }
%struct.pc87360_data = type { i32*, i32*, i32*, i32 }

@LD_FAN = common dso_local global i32 0, align 4
@NO_BANK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @fan_min_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fan_min_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sensor_device_attribute*, align 8
  %11 = alloca %struct.pc87360_data*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %15 = call %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute* %14)
  store %struct.sensor_device_attribute* %15, %struct.sensor_device_attribute** %10, align 8
  %16 = load %struct.device*, %struct.device** %6, align 8
  %17 = call %struct.pc87360_data* @dev_get_drvdata(%struct.device* %16)
  store %struct.pc87360_data* %17, %struct.pc87360_data** %11, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = call i32 @kstrtol(i8* %18, i32 10, i64* %12)
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* %13, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i32, i32* %13, align 4
  store i32 %23, i32* %5, align 4
  br label %130

24:                                               ; preds = %4
  %25 = load %struct.pc87360_data*, %struct.pc87360_data** %11, align 8
  %26 = getelementptr inbounds %struct.pc87360_data, %struct.pc87360_data* %25, i32 0, i32 3
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load i64, i64* %12, align 8
  %29 = load %struct.pc87360_data*, %struct.pc87360_data** %11, align 8
  %30 = getelementptr inbounds %struct.pc87360_data, %struct.pc87360_data* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %10, align 8
  %33 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds i32, i32* %31, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @FAN_DIV_FROM_REG(i32 %36)
  %38 = call i64 @FAN_TO_REG(i64 %28, i32 %37)
  store i64 %38, i64* %12, align 8
  br label %39

39:                                               ; preds = %55, %24
  %40 = load i64, i64* %12, align 8
  %41 = icmp sgt i64 %40, 255
  br i1 %41, label %42, label %53

42:                                               ; preds = %39
  %43 = load %struct.pc87360_data*, %struct.pc87360_data** %11, align 8
  %44 = getelementptr inbounds %struct.pc87360_data, %struct.pc87360_data* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %10, align 8
  %47 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds i32, i32* %45, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, 96
  %52 = icmp ne i32 %51, 96
  br label %53

53:                                               ; preds = %42, %39
  %54 = phi i1 [ false, %39 ], [ %52, %42 ]
  br i1 %54, label %55, label %76

55:                                               ; preds = %53
  %56 = load i64, i64* %12, align 8
  %57 = ashr i64 %56, 1
  store i64 %57, i64* %12, align 8
  %58 = load %struct.pc87360_data*, %struct.pc87360_data** %11, align 8
  %59 = getelementptr inbounds %struct.pc87360_data, %struct.pc87360_data* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %10, align 8
  %62 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds i32, i32* %60, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = ashr i32 %65, 1
  store i32 %66, i32* %64, align 4
  %67 = load %struct.pc87360_data*, %struct.pc87360_data** %11, align 8
  %68 = getelementptr inbounds %struct.pc87360_data, %struct.pc87360_data* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %10, align 8
  %71 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds i32, i32* %69, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, 32
  store i32 %75, i32* %73, align 4
  br label %39

76:                                               ; preds = %53
  %77 = load i64, i64* %12, align 8
  %78 = icmp sgt i64 %77, 255
  br i1 %78, label %79, label %80

79:                                               ; preds = %76
  br label %82

80:                                               ; preds = %76
  %81 = load i64, i64* %12, align 8
  br label %82

82:                                               ; preds = %80, %79
  %83 = phi i64 [ 255, %79 ], [ %81, %80 ]
  %84 = trunc i64 %83 to i32
  %85 = load %struct.pc87360_data*, %struct.pc87360_data** %11, align 8
  %86 = getelementptr inbounds %struct.pc87360_data, %struct.pc87360_data* %85, i32 0, i32 2
  %87 = load i32*, i32** %86, align 8
  %88 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %10, align 8
  %89 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds i32, i32* %87, i64 %90
  store i32 %84, i32* %91, align 4
  %92 = load %struct.pc87360_data*, %struct.pc87360_data** %11, align 8
  %93 = load i32, i32* @LD_FAN, align 4
  %94 = load i32, i32* @NO_BANK, align 4
  %95 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %10, align 8
  %96 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = call i32 @PC87360_REG_FAN_MIN(i64 %97)
  %99 = load %struct.pc87360_data*, %struct.pc87360_data** %11, align 8
  %100 = getelementptr inbounds %struct.pc87360_data, %struct.pc87360_data* %99, i32 0, i32 2
  %101 = load i32*, i32** %100, align 8
  %102 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %10, align 8
  %103 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = getelementptr inbounds i32, i32* %101, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @pc87360_write_value(%struct.pc87360_data* %92, i32 %93, i32 %94, i32 %98, i32 %106)
  %108 = load %struct.pc87360_data*, %struct.pc87360_data** %11, align 8
  %109 = load i32, i32* @LD_FAN, align 4
  %110 = load i32, i32* @NO_BANK, align 4
  %111 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %10, align 8
  %112 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = call i32 @PC87360_REG_FAN_STATUS(i64 %113)
  %115 = load %struct.pc87360_data*, %struct.pc87360_data** %11, align 8
  %116 = getelementptr inbounds %struct.pc87360_data, %struct.pc87360_data* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %10, align 8
  %119 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = getelementptr inbounds i32, i32* %117, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = and i32 %122, 249
  %124 = call i32 @pc87360_write_value(%struct.pc87360_data* %108, i32 %109, i32 %110, i32 %114, i32 %123)
  %125 = load %struct.pc87360_data*, %struct.pc87360_data** %11, align 8
  %126 = getelementptr inbounds %struct.pc87360_data, %struct.pc87360_data* %125, i32 0, i32 3
  %127 = call i32 @mutex_unlock(i32* %126)
  %128 = load i64, i64* %9, align 8
  %129 = trunc i64 %128 to i32
  store i32 %129, i32* %5, align 4
  br label %130

130:                                              ; preds = %82, %22
  %131 = load i32, i32* %5, align 4
  ret i32 %131
}

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.pc87360_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @kstrtol(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @FAN_TO_REG(i64, i32) #1

declare dso_local i32 @FAN_DIV_FROM_REG(i32) #1

declare dso_local i32 @pc87360_write_value(%struct.pc87360_data*, i32, i32, i32, i32) #1

declare dso_local i32 @PC87360_REG_FAN_MIN(i64) #1

declare dso_local i32 @PC87360_REG_FAN_STATUS(i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
