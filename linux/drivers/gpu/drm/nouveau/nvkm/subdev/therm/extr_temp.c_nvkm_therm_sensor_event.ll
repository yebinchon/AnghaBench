; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/therm/extr_temp.c_nvkm_therm_sensor_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/therm/extr_temp.c_nvkm_therm_sensor_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_therm = type { %struct.TYPE_4__, %struct.TYPE_3__*, %struct.nvkm_subdev }
%struct.TYPE_4__ = type { i32 (%struct.nvkm_therm.0*, i32)*, i32 (%struct.nvkm_therm.1*, i32)* }
%struct.nvkm_therm.0 = type opaque
%struct.nvkm_therm.1 = type opaque
%struct.TYPE_3__ = type { i32 (%struct.nvkm_therm*)* }
%struct.nvkm_subdev = type { i32 }
%struct.work_struct = type { i32 }

@nvkm_therm_sensor_event.thresholds = internal constant [4 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [9 x i8] c"fanboost\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"downclock\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"critical\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"shutdown\00", align 1
@NVKM_THERM_THRS_FALLING = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [50 x i8] c"temperature (%i C) went below the '%s' threshold\0A\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"temperature (%i C) hit the '%s' threshold\0A\00", align 1
@NVKM_THERM_THRS_RISING = common dso_local global i32 0, align 4
@NVKM_THERM_CTRL_AUTO = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@nv_poweroff_work = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvkm_therm_sensor_event(%struct.nvkm_therm* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.nvkm_therm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvkm_subdev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.work_struct*, align 8
  store %struct.nvkm_therm* %0, %struct.nvkm_therm** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.nvkm_therm*, %struct.nvkm_therm** %4, align 8
  %12 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %11, i32 0, i32 2
  store %struct.nvkm_subdev* %12, %struct.nvkm_subdev** %7, align 8
  %13 = load %struct.nvkm_therm*, %struct.nvkm_therm** %4, align 8
  %14 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %13, i32 0, i32 1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32 (%struct.nvkm_therm*)*, i32 (%struct.nvkm_therm*)** %16, align 8
  %18 = load %struct.nvkm_therm*, %struct.nvkm_therm** %4, align 8
  %19 = call i32 %17(%struct.nvkm_therm* %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ult i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* %5, align 4
  %24 = icmp ugt i32 %23, 3
  br i1 %24, label %25, label %26

25:                                               ; preds = %22, %3
  br label %111

26:                                               ; preds = %22
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @NVKM_THERM_THRS_FALLING, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %26
  %31 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %7, align 8
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %5, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds [4 x i8*], [4 x i8*]* @nvkm_therm_sensor_event.thresholds, i64 0, i64 %34
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @nvkm_info(%struct.nvkm_subdev* %31, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0), i32 %32, i8* %36)
  br label %46

38:                                               ; preds = %26
  %39 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %7, align 8
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %5, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds [4 x i8*], [4 x i8*]* @nvkm_therm_sensor_event.thresholds, i64 0, i64 %42
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 @nvkm_info(%struct.nvkm_subdev* %39, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0), i32 %40, i8* %44)
  br label %46

46:                                               ; preds = %38, %30
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @NVKM_THERM_THRS_RISING, align 4
  %49 = icmp eq i32 %47, %48
  %50 = zext i1 %49 to i32
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %5, align 4
  switch i32 %51, label %111 [
    i32 130, label %52
    i32 131, label %62
    i32 132, label %78
    i32 128, label %94
    i32 129, label %110
  ]

52:                                               ; preds = %46
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %52
  %56 = load %struct.nvkm_therm*, %struct.nvkm_therm** %4, align 8
  %57 = call i32 @nvkm_therm_fan_set(%struct.nvkm_therm* %56, i32 1, i32 100)
  %58 = load %struct.nvkm_therm*, %struct.nvkm_therm** %4, align 8
  %59 = load i32, i32* @NVKM_THERM_CTRL_AUTO, align 4
  %60 = call i32 @nvkm_therm_fan_mode(%struct.nvkm_therm* %58, i32 %59)
  br label %61

61:                                               ; preds = %55, %52
  br label %111

62:                                               ; preds = %46
  %63 = load %struct.nvkm_therm*, %struct.nvkm_therm** %4, align 8
  %64 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load i32 (%struct.nvkm_therm.1*, i32)*, i32 (%struct.nvkm_therm.1*, i32)** %65, align 8
  %67 = icmp ne i32 (%struct.nvkm_therm.1*, i32)* %66, null
  br i1 %67, label %68, label %77

68:                                               ; preds = %62
  %69 = load %struct.nvkm_therm*, %struct.nvkm_therm** %4, align 8
  %70 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = load i32 (%struct.nvkm_therm.1*, i32)*, i32 (%struct.nvkm_therm.1*, i32)** %71, align 8
  %73 = load %struct.nvkm_therm*, %struct.nvkm_therm** %4, align 8
  %74 = bitcast %struct.nvkm_therm* %73 to %struct.nvkm_therm.1*
  %75 = load i32, i32* %8, align 4
  %76 = call i32 %72(%struct.nvkm_therm.1* %74, i32 %75)
  br label %77

77:                                               ; preds = %68, %62
  br label %111

78:                                               ; preds = %46
  %79 = load %struct.nvkm_therm*, %struct.nvkm_therm** %4, align 8
  %80 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i32 (%struct.nvkm_therm.0*, i32)*, i32 (%struct.nvkm_therm.0*, i32)** %81, align 8
  %83 = icmp ne i32 (%struct.nvkm_therm.0*, i32)* %82, null
  br i1 %83, label %84, label %93

84:                                               ; preds = %78
  %85 = load %struct.nvkm_therm*, %struct.nvkm_therm** %4, align 8
  %86 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i32 (%struct.nvkm_therm.0*, i32)*, i32 (%struct.nvkm_therm.0*, i32)** %87, align 8
  %89 = load %struct.nvkm_therm*, %struct.nvkm_therm** %4, align 8
  %90 = bitcast %struct.nvkm_therm* %89 to %struct.nvkm_therm.0*
  %91 = load i32, i32* %8, align 4
  %92 = call i32 %88(%struct.nvkm_therm.0* %90, i32 %91)
  br label %93

93:                                               ; preds = %84, %78
  br label %111

94:                                               ; preds = %46
  %95 = load i32, i32* %8, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %109

97:                                               ; preds = %94
  %98 = load i32, i32* @GFP_ATOMIC, align 4
  %99 = call %struct.work_struct* @kmalloc(i32 4, i32 %98)
  store %struct.work_struct* %99, %struct.work_struct** %10, align 8
  %100 = load %struct.work_struct*, %struct.work_struct** %10, align 8
  %101 = icmp ne %struct.work_struct* %100, null
  br i1 %101, label %102, label %108

102:                                              ; preds = %97
  %103 = load %struct.work_struct*, %struct.work_struct** %10, align 8
  %104 = load i32, i32* @nv_poweroff_work, align 4
  %105 = call i32 @INIT_WORK(%struct.work_struct* %103, i32 %104)
  %106 = load %struct.work_struct*, %struct.work_struct** %10, align 8
  %107 = call i32 @schedule_work(%struct.work_struct* %106)
  br label %108

108:                                              ; preds = %102, %97
  br label %109

109:                                              ; preds = %108, %94
  br label %111

110:                                              ; preds = %46
  br label %111

111:                                              ; preds = %25, %46, %110, %109, %93, %77, %61
  ret void
}

declare dso_local i32 @nvkm_info(%struct.nvkm_subdev*, i8*, i32, i8*) #1

declare dso_local i32 @nvkm_therm_fan_set(%struct.nvkm_therm*, i32, i32) #1

declare dso_local i32 @nvkm_therm_fan_mode(%struct.nvkm_therm*, i32) #1

declare dso_local %struct.work_struct* @kmalloc(i32, i32) #1

declare dso_local i32 @INIT_WORK(%struct.work_struct*, i32) #1

declare dso_local i32 @schedule_work(%struct.work_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
