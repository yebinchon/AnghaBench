; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_ibmaem.c_aem_register_sensors.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_ibmaem.c_aem_register_sensors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_7__, i32, i32 }
%struct.TYPE_7__ = type { i32, i32* }
%struct.TYPE_8__ = type { %struct.TYPE_10__ }
%struct.aem_data = type { %struct.sensor_device_attribute*, %struct.TYPE_6__* }
%struct.sensor_device_attribute = type { %struct.TYPE_10__, i32 }
%struct.TYPE_6__ = type { %struct.device }
%struct.device = type { i32 }
%struct.aem_ro_sensor_template = type { i32, i32, i32* }
%struct.aem_rw_sensor_template = type { i32, i32, i32, i32* }

@sensor_dev_attr_name = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@sensor_dev_attr_version = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aem_data*, %struct.aem_ro_sensor_template*, %struct.aem_rw_sensor_template*)* @aem_register_sensors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aem_register_sensors(%struct.aem_data* %0, %struct.aem_ro_sensor_template* %1, %struct.aem_rw_sensor_template* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.aem_data*, align 8
  %6 = alloca %struct.aem_ro_sensor_template*, align 8
  %7 = alloca %struct.aem_rw_sensor_template*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.sensor_device_attribute*, align 8
  %10 = alloca i32, align 4
  store %struct.aem_data* %0, %struct.aem_data** %5, align 8
  store %struct.aem_ro_sensor_template* %1, %struct.aem_ro_sensor_template** %6, align 8
  store %struct.aem_rw_sensor_template* %2, %struct.aem_rw_sensor_template** %7, align 8
  %11 = load %struct.aem_data*, %struct.aem_data** %5, align 8
  %12 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %11, i32 0, i32 1
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  store %struct.device* %14, %struct.device** %8, align 8
  %15 = load %struct.aem_data*, %struct.aem_data** %5, align 8
  %16 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %15, i32 0, i32 0
  %17 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %16, align 8
  store %struct.sensor_device_attribute* %17, %struct.sensor_device_attribute** %9, align 8
  br label %18

18:                                               ; preds = %61, %3
  %19 = load %struct.aem_ro_sensor_template*, %struct.aem_ro_sensor_template** %6, align 8
  %20 = getelementptr inbounds %struct.aem_ro_sensor_template, %struct.aem_ro_sensor_template* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %66

23:                                               ; preds = %18
  %24 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %9, align 8
  %25 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = call i32 @sysfs_attr_init(%struct.TYPE_7__* %26)
  %28 = load %struct.aem_ro_sensor_template*, %struct.aem_ro_sensor_template** %6, align 8
  %29 = getelementptr inbounds %struct.aem_ro_sensor_template, %struct.aem_ro_sensor_template* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %9, align 8
  %32 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  store i32* %30, i32** %34, align 8
  %35 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %9, align 8
  %36 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  store i32 292, i32* %38, align 8
  %39 = load %struct.aem_ro_sensor_template*, %struct.aem_ro_sensor_template** %6, align 8
  %40 = getelementptr inbounds %struct.aem_ro_sensor_template, %struct.aem_ro_sensor_template* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %9, align 8
  %43 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 2
  store i32 %41, i32* %44, align 4
  %45 = load %struct.aem_ro_sensor_template*, %struct.aem_ro_sensor_template** %6, align 8
  %46 = getelementptr inbounds %struct.aem_ro_sensor_template, %struct.aem_ro_sensor_template* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %9, align 8
  %49 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 8
  %50 = load %struct.device*, %struct.device** %8, align 8
  %51 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %9, align 8
  %52 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %51, i32 0, i32 0
  %53 = call i32 @device_create_file(%struct.device* %50, %struct.TYPE_10__* %52)
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %23
  %57 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %9, align 8
  %58 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 1
  store i32* null, i32** %60, align 8
  br label %131

61:                                               ; preds = %23
  %62 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %9, align 8
  %63 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %62, i32 1
  store %struct.sensor_device_attribute* %63, %struct.sensor_device_attribute** %9, align 8
  %64 = load %struct.aem_ro_sensor_template*, %struct.aem_ro_sensor_template** %6, align 8
  %65 = getelementptr inbounds %struct.aem_ro_sensor_template, %struct.aem_ro_sensor_template* %64, i32 1
  store %struct.aem_ro_sensor_template* %65, %struct.aem_ro_sensor_template** %6, align 8
  br label %18

66:                                               ; preds = %18
  br label %67

67:                                               ; preds = %116, %66
  %68 = load %struct.aem_rw_sensor_template*, %struct.aem_rw_sensor_template** %7, align 8
  %69 = getelementptr inbounds %struct.aem_rw_sensor_template, %struct.aem_rw_sensor_template* %68, i32 0, i32 3
  %70 = load i32*, i32** %69, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %121

72:                                               ; preds = %67
  %73 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %9, align 8
  %74 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = call i32 @sysfs_attr_init(%struct.TYPE_7__* %75)
  %77 = load %struct.aem_rw_sensor_template*, %struct.aem_rw_sensor_template** %7, align 8
  %78 = getelementptr inbounds %struct.aem_rw_sensor_template, %struct.aem_rw_sensor_template* %77, i32 0, i32 3
  %79 = load i32*, i32** %78, align 8
  %80 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %9, align 8
  %81 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 1
  store i32* %79, i32** %83, align 8
  %84 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %9, align 8
  %85 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  store i32 420, i32* %87, align 8
  %88 = load %struct.aem_rw_sensor_template*, %struct.aem_rw_sensor_template** %7, align 8
  %89 = getelementptr inbounds %struct.aem_rw_sensor_template, %struct.aem_rw_sensor_template* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %9, align 8
  %92 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 2
  store i32 %90, i32* %93, align 4
  %94 = load %struct.aem_rw_sensor_template*, %struct.aem_rw_sensor_template** %7, align 8
  %95 = getelementptr inbounds %struct.aem_rw_sensor_template, %struct.aem_rw_sensor_template* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %9, align 8
  %98 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 1
  store i32 %96, i32* %99, align 8
  %100 = load %struct.aem_rw_sensor_template*, %struct.aem_rw_sensor_template** %7, align 8
  %101 = getelementptr inbounds %struct.aem_rw_sensor_template, %struct.aem_rw_sensor_template* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %9, align 8
  %104 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 8
  %105 = load %struct.device*, %struct.device** %8, align 8
  %106 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %9, align 8
  %107 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %106, i32 0, i32 0
  %108 = call i32 @device_create_file(%struct.device* %105, %struct.TYPE_10__* %107)
  store i32 %108, i32* %10, align 4
  %109 = load i32, i32* %10, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %72
  %112 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %9, align 8
  %113 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 1
  store i32* null, i32** %115, align 8
  br label %131

116:                                              ; preds = %72
  %117 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %9, align 8
  %118 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %117, i32 1
  store %struct.sensor_device_attribute* %118, %struct.sensor_device_attribute** %9, align 8
  %119 = load %struct.aem_rw_sensor_template*, %struct.aem_rw_sensor_template** %7, align 8
  %120 = getelementptr inbounds %struct.aem_rw_sensor_template, %struct.aem_rw_sensor_template* %119, i32 1
  store %struct.aem_rw_sensor_template* %120, %struct.aem_rw_sensor_template** %7, align 8
  br label %67

121:                                              ; preds = %67
  %122 = load %struct.device*, %struct.device** %8, align 8
  %123 = call i32 @device_create_file(%struct.device* %122, %struct.TYPE_10__* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @sensor_dev_attr_name, i32 0, i32 0))
  store i32 %123, i32* %10, align 4
  %124 = load i32, i32* %10, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %121
  br label %131

127:                                              ; preds = %121
  %128 = load %struct.device*, %struct.device** %8, align 8
  %129 = call i32 @device_create_file(%struct.device* %128, %struct.TYPE_10__* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sensor_dev_attr_version, i32 0, i32 0))
  store i32 %129, i32* %10, align 4
  %130 = load i32, i32* %10, align 4
  store i32 %130, i32* %4, align 4
  br label %135

131:                                              ; preds = %126, %111, %56
  %132 = load %struct.aem_data*, %struct.aem_data** %5, align 8
  %133 = call i32 @aem_remove_sensors(%struct.aem_data* %132)
  %134 = load i32, i32* %10, align 4
  store i32 %134, i32* %4, align 4
  br label %135

135:                                              ; preds = %131, %127
  %136 = load i32, i32* %4, align 4
  ret i32 %136
}

declare dso_local i32 @sysfs_attr_init(%struct.TYPE_7__*) #1

declare dso_local i32 @device_create_file(%struct.device*, %struct.TYPE_10__*) #1

declare dso_local i32 @aem_remove_sensors(%struct.aem_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
