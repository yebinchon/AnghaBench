; ModuleID = '/home/carl/AnghaBench/linux/drivers/macintosh/extr_windfarm_pm121.c_pm121_new_sensor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/macintosh/extr_windfarm_pm121.c_pm121_new_sensor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wf_sensor = type { i32 }

@pm121_all_sensors_ok = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"cpu-temp\00", align 1
@sensor_cpu_temp = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"cpu-current\00", align 1
@sensor_cpu_current = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"cpu-voltage\00", align 1
@sensor_cpu_voltage = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"cpu-power\00", align 1
@sensor_cpu_power = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"hard-drive-temp\00", align 1
@sensor_hard_drive_temp = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"optical-drive-temp\00", align 1
@sensor_optical_drive_temp = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [18 x i8] c"incoming-air-temp\00", align 1
@sensor_incoming_air_temp = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [18 x i8] c"north-bridge-temp\00", align 1
@sensor_north_bridge_temp = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [9 x i8] c"gpu-temp\00", align 1
@sensor_gpu_temp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wf_sensor*)* @pm121_new_sensor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pm121_new_sensor(%struct.wf_sensor* %0) #0 {
  %2 = alloca %struct.wf_sensor*, align 8
  %3 = alloca i32, align 4
  store %struct.wf_sensor* %0, %struct.wf_sensor** %2, align 8
  store i32 1, i32* %3, align 4
  %4 = load i32, i32* @pm121_all_sensors_ok, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %92

7:                                                ; preds = %1
  %8 = load %struct.wf_sensor*, %struct.wf_sensor** %2, align 8
  %9 = call i64 @pm121_register_sensor(%struct.wf_sensor* %8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* @sensor_cpu_temp)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  %12 = load i32, i32* %3, align 4
  %13 = icmp ne i32 %12, 0
  br label %14

14:                                               ; preds = %11, %7
  %15 = phi i1 [ false, %7 ], [ %13, %11 ]
  %16 = zext i1 %15 to i32
  store i32 %16, i32* %3, align 4
  %17 = load %struct.wf_sensor*, %struct.wf_sensor** %2, align 8
  %18 = call i64 @pm121_register_sensor(%struct.wf_sensor* %17, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32* @sensor_cpu_current)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = load i32, i32* %3, align 4
  %22 = icmp ne i32 %21, 0
  br label %23

23:                                               ; preds = %20, %14
  %24 = phi i1 [ false, %14 ], [ %22, %20 ]
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %3, align 4
  %26 = load %struct.wf_sensor*, %struct.wf_sensor** %2, align 8
  %27 = call i64 @pm121_register_sensor(%struct.wf_sensor* %26, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32* @sensor_cpu_voltage)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load i32, i32* %3, align 4
  %31 = icmp ne i32 %30, 0
  br label %32

32:                                               ; preds = %29, %23
  %33 = phi i1 [ false, %23 ], [ %31, %29 ]
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %3, align 4
  %35 = load %struct.wf_sensor*, %struct.wf_sensor** %2, align 8
  %36 = call i64 @pm121_register_sensor(%struct.wf_sensor* %35, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32* @sensor_cpu_power)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load i32, i32* %3, align 4
  %40 = icmp ne i32 %39, 0
  br label %41

41:                                               ; preds = %38, %32
  %42 = phi i1 [ false, %32 ], [ %40, %38 ]
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %3, align 4
  %44 = load %struct.wf_sensor*, %struct.wf_sensor** %2, align 8
  %45 = call i64 @pm121_register_sensor(%struct.wf_sensor* %44, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32* @sensor_hard_drive_temp)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load i32, i32* %3, align 4
  %49 = icmp ne i32 %48, 0
  br label %50

50:                                               ; preds = %47, %41
  %51 = phi i1 [ false, %41 ], [ %49, %47 ]
  %52 = zext i1 %51 to i32
  store i32 %52, i32* %3, align 4
  %53 = load %struct.wf_sensor*, %struct.wf_sensor** %2, align 8
  %54 = call i64 @pm121_register_sensor(%struct.wf_sensor* %53, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32* @sensor_optical_drive_temp)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = load i32, i32* %3, align 4
  %58 = icmp ne i32 %57, 0
  br label %59

59:                                               ; preds = %56, %50
  %60 = phi i1 [ false, %50 ], [ %58, %56 ]
  %61 = zext i1 %60 to i32
  store i32 %61, i32* %3, align 4
  %62 = load %struct.wf_sensor*, %struct.wf_sensor** %2, align 8
  %63 = call i64 @pm121_register_sensor(%struct.wf_sensor* %62, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32* @sensor_incoming_air_temp)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %59
  %66 = load i32, i32* %3, align 4
  %67 = icmp ne i32 %66, 0
  br label %68

68:                                               ; preds = %65, %59
  %69 = phi i1 [ false, %59 ], [ %67, %65 ]
  %70 = zext i1 %69 to i32
  store i32 %70, i32* %3, align 4
  %71 = load %struct.wf_sensor*, %struct.wf_sensor** %2, align 8
  %72 = call i64 @pm121_register_sensor(%struct.wf_sensor* %71, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i32* @sensor_north_bridge_temp)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %68
  %75 = load i32, i32* %3, align 4
  %76 = icmp ne i32 %75, 0
  br label %77

77:                                               ; preds = %74, %68
  %78 = phi i1 [ false, %68 ], [ %76, %74 ]
  %79 = zext i1 %78 to i32
  store i32 %79, i32* %3, align 4
  %80 = load %struct.wf_sensor*, %struct.wf_sensor** %2, align 8
  %81 = call i64 @pm121_register_sensor(%struct.wf_sensor* %80, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i32* @sensor_gpu_temp)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %77
  %84 = load i32, i32* %3, align 4
  %85 = icmp ne i32 %84, 0
  br label %86

86:                                               ; preds = %83, %77
  %87 = phi i1 [ false, %77 ], [ %85, %83 ]
  %88 = zext i1 %87 to i32
  store i32 %88, i32* %3, align 4
  %89 = load i32, i32* %3, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %86
  store i32 1, i32* @pm121_all_sensors_ok, align 4
  br label %92

92:                                               ; preds = %6, %91, %86
  ret void
}

declare dso_local i64 @pm121_register_sensor(%struct.wf_sensor*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
