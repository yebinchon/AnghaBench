; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/therm/extr_temp.c_nvkm_therm_sensor_ctor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/therm/extr_temp.c_nvkm_therm_sensor_ctor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_therm = type { i32, %struct.TYPE_4__, %struct.nvkm_subdev }
%struct.TYPE_4__ = type { i32 }
%struct.nvkm_subdev = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.nvkm_bios* }
%struct.nvkm_bios = type { i32 }

@alarm_timer_callback = common dso_local global i32 0, align 4
@NVBIOS_THERM_DOMAIN_CORE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"nvbios_therm_sensor_parse failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvkm_therm_sensor_ctor(%struct.nvkm_therm* %0) #0 {
  %2 = alloca %struct.nvkm_therm*, align 8
  %3 = alloca %struct.nvkm_subdev*, align 8
  %4 = alloca %struct.nvkm_bios*, align 8
  store %struct.nvkm_therm* %0, %struct.nvkm_therm** %2, align 8
  %5 = load %struct.nvkm_therm*, %struct.nvkm_therm** %2, align 8
  %6 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %5, i32 0, i32 2
  store %struct.nvkm_subdev* %6, %struct.nvkm_subdev** %3, align 8
  %7 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %3, align 8
  %8 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.nvkm_bios*, %struct.nvkm_bios** %10, align 8
  store %struct.nvkm_bios* %11, %struct.nvkm_bios** %4, align 8
  %12 = load %struct.nvkm_therm*, %struct.nvkm_therm** %2, align 8
  %13 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* @alarm_timer_callback, align 4
  %16 = call i32 @nvkm_alarm_init(i32* %14, i32 %15)
  %17 = load %struct.nvkm_therm*, %struct.nvkm_therm** %2, align 8
  %18 = call i32 @nvkm_therm_temp_set_defaults(%struct.nvkm_therm* %17)
  %19 = load %struct.nvkm_bios*, %struct.nvkm_bios** %4, align 8
  %20 = load i32, i32* @NVBIOS_THERM_DOMAIN_CORE, align 4
  %21 = load %struct.nvkm_therm*, %struct.nvkm_therm** %2, align 8
  %22 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %21, i32 0, i32 0
  %23 = call i64 @nvbios_therm_sensor_parse(%struct.nvkm_bios* %19, i32 %20, i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %1
  %26 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %3, align 8
  %27 = call i32 @nvkm_error(%struct.nvkm_subdev* %26, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %25, %1
  %29 = load %struct.nvkm_therm*, %struct.nvkm_therm** %2, align 8
  %30 = call i32 @nvkm_therm_temp_safety_checks(%struct.nvkm_therm* %29)
  ret i32 0
}

declare dso_local i32 @nvkm_alarm_init(i32*, i32) #1

declare dso_local i32 @nvkm_therm_temp_set_defaults(%struct.nvkm_therm*) #1

declare dso_local i64 @nvbios_therm_sensor_parse(%struct.nvkm_bios*, i32, i32*) #1

declare dso_local i32 @nvkm_error(%struct.nvkm_subdev*, i8*) #1

declare dso_local i32 @nvkm_therm_temp_safety_checks(%struct.nvkm_therm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
