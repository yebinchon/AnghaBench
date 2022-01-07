; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/therm/extr_temp.c_nvkm_therm_program_alarms_polling.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/therm/extr_temp.c_nvkm_therm_program_alarms_polling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_therm = type { %struct.TYPE_9__, i32, %struct.nvbios_therm_sensor }
%struct.TYPE_9__ = type { i32 }
%struct.nvbios_therm_sensor = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_10__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }

@.str = private unnamed_addr constant [58 x i8] c"programmed thresholds [ %d(%d), %d(%d), %d(%d), %d(%d) ]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvkm_therm_program_alarms_polling(%struct.nvkm_therm* %0) #0 {
  %2 = alloca %struct.nvkm_therm*, align 8
  %3 = alloca %struct.nvbios_therm_sensor*, align 8
  store %struct.nvkm_therm* %0, %struct.nvkm_therm** %2, align 8
  %4 = load %struct.nvkm_therm*, %struct.nvkm_therm** %2, align 8
  %5 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %4, i32 0, i32 2
  store %struct.nvbios_therm_sensor* %5, %struct.nvbios_therm_sensor** %3, align 8
  %6 = load %struct.nvkm_therm*, %struct.nvkm_therm** %2, align 8
  %7 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %6, i32 0, i32 1
  %8 = load %struct.nvbios_therm_sensor*, %struct.nvbios_therm_sensor** %3, align 8
  %9 = getelementptr inbounds %struct.nvbios_therm_sensor, %struct.nvbios_therm_sensor* %8, i32 0, i32 3
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.nvbios_therm_sensor*, %struct.nvbios_therm_sensor** %3, align 8
  %13 = getelementptr inbounds %struct.nvbios_therm_sensor, %struct.nvbios_therm_sensor* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.nvbios_therm_sensor*, %struct.nvbios_therm_sensor** %3, align 8
  %17 = getelementptr inbounds %struct.nvbios_therm_sensor, %struct.nvbios_therm_sensor* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.nvbios_therm_sensor*, %struct.nvbios_therm_sensor** %3, align 8
  %21 = getelementptr inbounds %struct.nvbios_therm_sensor, %struct.nvbios_therm_sensor* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.nvbios_therm_sensor*, %struct.nvbios_therm_sensor** %3, align 8
  %25 = getelementptr inbounds %struct.nvbios_therm_sensor, %struct.nvbios_therm_sensor* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.nvbios_therm_sensor*, %struct.nvbios_therm_sensor** %3, align 8
  %29 = getelementptr inbounds %struct.nvbios_therm_sensor, %struct.nvbios_therm_sensor* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.nvbios_therm_sensor*, %struct.nvbios_therm_sensor** %3, align 8
  %33 = getelementptr inbounds %struct.nvbios_therm_sensor, %struct.nvbios_therm_sensor* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.nvbios_therm_sensor*, %struct.nvbios_therm_sensor** %3, align 8
  %37 = getelementptr inbounds %struct.nvbios_therm_sensor, %struct.nvbios_therm_sensor* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @nvkm_debug(i32* %7, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %15, i32 %19, i32 %23, i32 %27, i32 %31, i32 %35, i32 %39)
  %41 = load %struct.nvkm_therm*, %struct.nvkm_therm** %2, align 8
  %42 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = call i32 @alarm_timer_callback(i32* %43)
  ret void
}

declare dso_local i32 @nvkm_debug(i32*, i8*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @alarm_timer_callback(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
