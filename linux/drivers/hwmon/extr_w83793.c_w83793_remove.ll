; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83793.c_w83793_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83793.c_w83793_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.i2c_client = type { %struct.device }
%struct.device = type { i32 }
%struct.w83793_data = type { i32, i32, i32, i32*, i32, i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }

@.str = private unnamed_addr constant [60 x i8] c"i2c client detached with watchdog open! Stopping watchdog.\0A\00", align 1
@watchdog_data_mutex = common dso_local global i32 0, align 4
@W83793_REG_CONFIG = common dso_local global i32 0, align 4
@watchdog_notifier = common dso_local global i32 0, align 4
@w83793_sensor_attr_2 = common dso_local global %struct.TYPE_9__* null, align 8
@sda_single_files = common dso_local global %struct.TYPE_9__* null, align 8
@w83793_vid = common dso_local global %struct.TYPE_9__* null, align 8
@dev_attr_vrm = common dso_local global i32 0, align 4
@w83793_left_fan = common dso_local global %struct.TYPE_9__* null, align 8
@w83793_left_pwm = common dso_local global %struct.TYPE_9__* null, align 8
@w83793_temp = common dso_local global %struct.TYPE_9__* null, align 8
@w83793_release_resources = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @w83793_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w83793_remove(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.w83793_data*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %7 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %8 = call %struct.w83793_data* @i2c_get_clientdata(%struct.i2c_client* %7)
  store %struct.w83793_data* %8, %struct.w83793_data** %3, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.w83793_data*, %struct.w83793_data** %3, align 8
  %12 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %11, i32 0, i32 6
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %44

16:                                               ; preds = %1
  %17 = load %struct.w83793_data*, %struct.w83793_data** %3, align 8
  %18 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %17, i32 0, i32 6
  %19 = call i32 @misc_deregister(%struct.TYPE_10__* %18)
  %20 = load %struct.w83793_data*, %struct.w83793_data** %3, align 8
  %21 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %20, i32 0, i32 5
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %16
  %25 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %26 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %25, i32 0, i32 0
  %27 = call i32 @dev_warn(%struct.device* %26, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.w83793_data*, %struct.w83793_data** %3, align 8
  %29 = call i32 @watchdog_disable(%struct.w83793_data* %28)
  br label %30

30:                                               ; preds = %24, %16
  %31 = call i32 @mutex_lock(i32* @watchdog_data_mutex)
  %32 = load %struct.w83793_data*, %struct.w83793_data** %3, align 8
  %33 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %32, i32 0, i32 4
  %34 = call i32 @list_del(i32* %33)
  %35 = call i32 @mutex_unlock(i32* @watchdog_data_mutex)
  %36 = load %struct.w83793_data*, %struct.w83793_data** %3, align 8
  %37 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %36, i32 0, i32 2
  %38 = call i32 @mutex_lock(i32* %37)
  %39 = load %struct.w83793_data*, %struct.w83793_data** %3, align 8
  %40 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %39, i32 0, i32 3
  store i32* null, i32** %40, align 8
  %41 = load %struct.w83793_data*, %struct.w83793_data** %3, align 8
  %42 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %41, i32 0, i32 2
  %43 = call i32 @mutex_unlock(i32* %42)
  br label %44

44:                                               ; preds = %30, %1
  %45 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %46 = load i32, i32* @W83793_REG_CONFIG, align 4
  %47 = call i32 @w83793_read_value(%struct.i2c_client* %45, i32 %46)
  store i32 %47, i32* %6, align 4
  %48 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %49 = load i32, i32* @W83793_REG_CONFIG, align 4
  %50 = load i32, i32* %6, align 4
  %51 = and i32 %50, -5
  %52 = call i32 @w83793_write_value(%struct.i2c_client* %48, i32 %49, i32 %51)
  %53 = call i32 @unregister_reboot_notifier(i32* @watchdog_notifier)
  %54 = load %struct.w83793_data*, %struct.w83793_data** %3, align 8
  %55 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @hwmon_device_unregister(i32 %56)
  store i32 0, i32* %5, align 4
  br label %58

58:                                               ; preds = %71, %44
  %59 = load i32, i32* %5, align 4
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** @w83793_sensor_attr_2, align 8
  %61 = call i32 @ARRAY_SIZE(%struct.TYPE_9__* %60)
  %62 = icmp slt i32 %59, %61
  br i1 %62, label %63, label %74

63:                                               ; preds = %58
  %64 = load %struct.device*, %struct.device** %4, align 8
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** @w83793_sensor_attr_2, align 8
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = call i32 @device_remove_file(%struct.device* %64, i32* %69)
  br label %71

71:                                               ; preds = %63
  %72 = load i32, i32* %5, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %5, align 4
  br label %58

74:                                               ; preds = %58
  store i32 0, i32* %5, align 4
  br label %75

75:                                               ; preds = %88, %74
  %76 = load i32, i32* %5, align 4
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** @sda_single_files, align 8
  %78 = call i32 @ARRAY_SIZE(%struct.TYPE_9__* %77)
  %79 = icmp slt i32 %76, %78
  br i1 %79, label %80, label %91

80:                                               ; preds = %75
  %81 = load %struct.device*, %struct.device** %4, align 8
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** @sda_single_files, align 8
  %83 = load i32, i32* %5, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  %87 = call i32 @device_remove_file(%struct.device* %81, i32* %86)
  br label %88

88:                                               ; preds = %80
  %89 = load i32, i32* %5, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %5, align 4
  br label %75

91:                                               ; preds = %75
  store i32 0, i32* %5, align 4
  br label %92

92:                                               ; preds = %105, %91
  %93 = load i32, i32* %5, align 4
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** @w83793_vid, align 8
  %95 = call i32 @ARRAY_SIZE(%struct.TYPE_9__* %94)
  %96 = icmp slt i32 %93, %95
  br i1 %96, label %97, label %108

97:                                               ; preds = %92
  %98 = load %struct.device*, %struct.device** %4, align 8
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** @w83793_vid, align 8
  %100 = load i32, i32* %5, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 0
  %104 = call i32 @device_remove_file(%struct.device* %98, i32* %103)
  br label %105

105:                                              ; preds = %97
  %106 = load i32, i32* %5, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %5, align 4
  br label %92

108:                                              ; preds = %92
  %109 = load %struct.device*, %struct.device** %4, align 8
  %110 = call i32 @device_remove_file(%struct.device* %109, i32* @dev_attr_vrm)
  store i32 0, i32* %5, align 4
  br label %111

111:                                              ; preds = %124, %108
  %112 = load i32, i32* %5, align 4
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** @w83793_left_fan, align 8
  %114 = call i32 @ARRAY_SIZE(%struct.TYPE_9__* %113)
  %115 = icmp slt i32 %112, %114
  br i1 %115, label %116, label %127

116:                                              ; preds = %111
  %117 = load %struct.device*, %struct.device** %4, align 8
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** @w83793_left_fan, align 8
  %119 = load i32, i32* %5, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 0
  %123 = call i32 @device_remove_file(%struct.device* %117, i32* %122)
  br label %124

124:                                              ; preds = %116
  %125 = load i32, i32* %5, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %5, align 4
  br label %111

127:                                              ; preds = %111
  store i32 0, i32* %5, align 4
  br label %128

128:                                              ; preds = %141, %127
  %129 = load i32, i32* %5, align 4
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** @w83793_left_pwm, align 8
  %131 = call i32 @ARRAY_SIZE(%struct.TYPE_9__* %130)
  %132 = icmp slt i32 %129, %131
  br i1 %132, label %133, label %144

133:                                              ; preds = %128
  %134 = load %struct.device*, %struct.device** %4, align 8
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** @w83793_left_pwm, align 8
  %136 = load i32, i32* %5, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 0
  %140 = call i32 @device_remove_file(%struct.device* %134, i32* %139)
  br label %141

141:                                              ; preds = %133
  %142 = load i32, i32* %5, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %5, align 4
  br label %128

144:                                              ; preds = %128
  store i32 0, i32* %5, align 4
  br label %145

145:                                              ; preds = %158, %144
  %146 = load i32, i32* %5, align 4
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** @w83793_temp, align 8
  %148 = call i32 @ARRAY_SIZE(%struct.TYPE_9__* %147)
  %149 = icmp slt i32 %146, %148
  br i1 %149, label %150, label %161

150:                                              ; preds = %145
  %151 = load %struct.device*, %struct.device** %4, align 8
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** @w83793_temp, align 8
  %153 = load i32, i32* %5, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 0
  %157 = call i32 @device_remove_file(%struct.device* %151, i32* %156)
  br label %158

158:                                              ; preds = %150
  %159 = load i32, i32* %5, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %5, align 4
  br label %145

161:                                              ; preds = %145
  %162 = call i32 @mutex_lock(i32* @watchdog_data_mutex)
  %163 = load %struct.w83793_data*, %struct.w83793_data** %3, align 8
  %164 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %163, i32 0, i32 0
  %165 = load i32, i32* @w83793_release_resources, align 4
  %166 = call i32 @kref_put(i32* %164, i32 %165)
  %167 = call i32 @mutex_unlock(i32* @watchdog_data_mutex)
  ret i32 0
}

declare dso_local %struct.w83793_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @misc_deregister(%struct.TYPE_10__*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

declare dso_local i32 @watchdog_disable(%struct.w83793_data*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @w83793_read_value(%struct.i2c_client*, i32) #1

declare dso_local i32 @w83793_write_value(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @unregister_reboot_notifier(i32*) #1

declare dso_local i32 @hwmon_device_unregister(i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_9__*) #1

declare dso_local i32 @device_remove_file(%struct.device*, i32*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
