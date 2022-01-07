; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_fschmd.c_fschmd_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_fschmd.c_fschmd_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.i2c_client = type { i32 }
%struct.fschmd_data = type { i64, i32, i64, i32, i32*, i32, i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@.str = private unnamed_addr constant [60 x i8] c"i2c client detached with watchdog open! Stopping watchdog.\0A\00", align 1
@watchdog_data_mutex = common dso_local global i32 0, align 4
@dev_attr_alert_led = common dso_local global i32 0, align 4
@FSCHMD_NO_VOLT_SENSORS = common dso_local global i32* null, align 8
@fschmd_attr = common dso_local global %struct.TYPE_8__* null, align 8
@FSCHMD_NO_TEMP_SENSORS = common dso_local global i32* null, align 8
@fschmd_temp_attr = common dso_local global %struct.TYPE_6__* null, align 8
@FSCHMD_NO_FAN_SENSORS = common dso_local global i32* null, align 8
@fschmd_fan_attr = common dso_local global %struct.TYPE_7__* null, align 8
@fschmd_release_resources = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @fschmd_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fschmd_remove(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.fschmd_data*, align 8
  %4 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %5 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %6 = call %struct.fschmd_data* @i2c_get_clientdata(%struct.i2c_client* %5)
  store %struct.fschmd_data* %6, %struct.fschmd_data** %3, align 8
  %7 = load %struct.fschmd_data*, %struct.fschmd_data** %3, align 8
  %8 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %7, i32 0, i32 7
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %40

12:                                               ; preds = %1
  %13 = load %struct.fschmd_data*, %struct.fschmd_data** %3, align 8
  %14 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %13, i32 0, i32 7
  %15 = call i32 @misc_deregister(%struct.TYPE_5__* %14)
  %16 = load %struct.fschmd_data*, %struct.fschmd_data** %3, align 8
  %17 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %16, i32 0, i32 6
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %12
  %21 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %22 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %21, i32 0, i32 0
  %23 = call i32 @dev_warn(i32* %22, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.fschmd_data*, %struct.fschmd_data** %3, align 8
  %25 = call i32 @watchdog_stop(%struct.fschmd_data* %24)
  br label %26

26:                                               ; preds = %20, %12
  %27 = call i32 @mutex_lock(i32* @watchdog_data_mutex)
  %28 = load %struct.fschmd_data*, %struct.fschmd_data** %3, align 8
  %29 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %28, i32 0, i32 5
  %30 = call i32 @list_del(i32* %29)
  %31 = call i32 @mutex_unlock(i32* @watchdog_data_mutex)
  %32 = load %struct.fschmd_data*, %struct.fschmd_data** %3, align 8
  %33 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %32, i32 0, i32 3
  %34 = call i32 @mutex_lock(i32* %33)
  %35 = load %struct.fschmd_data*, %struct.fschmd_data** %3, align 8
  %36 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %35, i32 0, i32 4
  store i32* null, i32** %36, align 8
  %37 = load %struct.fschmd_data*, %struct.fschmd_data** %3, align 8
  %38 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %37, i32 0, i32 3
  %39 = call i32 @mutex_unlock(i32* %38)
  br label %40

40:                                               ; preds = %26, %1
  %41 = load %struct.fschmd_data*, %struct.fschmd_data** %3, align 8
  %42 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load %struct.fschmd_data*, %struct.fschmd_data** %3, align 8
  %47 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @hwmon_device_unregister(i64 %48)
  br label %50

50:                                               ; preds = %45, %40
  %51 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %52 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %51, i32 0, i32 0
  %53 = call i32 @device_remove_file(i32* %52, i32* @dev_attr_alert_led)
  store i32 0, i32* %4, align 4
  br label %54

54:                                               ; preds = %72, %50
  %55 = load i32, i32* %4, align 4
  %56 = load i32*, i32** @FSCHMD_NO_VOLT_SENSORS, align 8
  %57 = load %struct.fschmd_data*, %struct.fschmd_data** %3, align 8
  %58 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds i32, i32* %56, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = icmp slt i32 %55, %61
  br i1 %62, label %63, label %75

63:                                               ; preds = %54
  %64 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %65 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %64, i32 0, i32 0
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** @fschmd_attr, align 8
  %67 = load i32, i32* %4, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = call i32 @device_remove_file(i32* %65, i32* %70)
  br label %72

72:                                               ; preds = %63
  %73 = load i32, i32* %4, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %4, align 4
  br label %54

75:                                               ; preds = %54
  store i32 0, i32* %4, align 4
  br label %76

76:                                               ; preds = %95, %75
  %77 = load i32, i32* %4, align 4
  %78 = load i32*, i32** @FSCHMD_NO_TEMP_SENSORS, align 8
  %79 = load %struct.fschmd_data*, %struct.fschmd_data** %3, align 8
  %80 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds i32, i32* %78, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = mul nsw i32 %83, 4
  %85 = icmp slt i32 %77, %84
  br i1 %85, label %86, label %98

86:                                               ; preds = %76
  %87 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %88 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %87, i32 0, i32 0
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** @fschmd_temp_attr, align 8
  %90 = load i32, i32* %4, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = call i32 @device_remove_file(i32* %88, i32* %93)
  br label %95

95:                                               ; preds = %86
  %96 = load i32, i32* %4, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %4, align 4
  br label %76

98:                                               ; preds = %76
  store i32 0, i32* %4, align 4
  br label %99

99:                                               ; preds = %118, %98
  %100 = load i32, i32* %4, align 4
  %101 = load i32*, i32** @FSCHMD_NO_FAN_SENSORS, align 8
  %102 = load %struct.fschmd_data*, %struct.fschmd_data** %3, align 8
  %103 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = getelementptr inbounds i32, i32* %101, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = mul nsw i32 %106, 5
  %108 = icmp slt i32 %100, %107
  br i1 %108, label %109, label %121

109:                                              ; preds = %99
  %110 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %111 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %110, i32 0, i32 0
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** @fschmd_fan_attr, align 8
  %113 = load i32, i32* %4, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  %117 = call i32 @device_remove_file(i32* %111, i32* %116)
  br label %118

118:                                              ; preds = %109
  %119 = load i32, i32* %4, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %4, align 4
  br label %99

121:                                              ; preds = %99
  %122 = call i32 @mutex_lock(i32* @watchdog_data_mutex)
  %123 = load %struct.fschmd_data*, %struct.fschmd_data** %3, align 8
  %124 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %123, i32 0, i32 1
  %125 = load i32, i32* @fschmd_release_resources, align 4
  %126 = call i32 @kref_put(i32* %124, i32 %125)
  %127 = call i32 @mutex_unlock(i32* @watchdog_data_mutex)
  ret i32 0
}

declare dso_local %struct.fschmd_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @misc_deregister(%struct.TYPE_5__*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @watchdog_stop(%struct.fschmd_data*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @hwmon_device_unregister(i64) #1

declare dso_local i32 @device_remove_file(i32*, i32*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
