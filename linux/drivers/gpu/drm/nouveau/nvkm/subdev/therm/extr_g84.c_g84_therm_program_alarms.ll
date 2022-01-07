; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/therm/extr_g84.c_g84_therm_program_alarms.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/therm/extr_g84.c_g84_therm_program_alarms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_therm = type { %struct.TYPE_6__, %struct.nvkm_subdev, %struct.nvbios_therm_sensor }
%struct.TYPE_6__ = type { i32 }
%struct.nvkm_subdev = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }
%struct.nvbios_therm_sensor = type { %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@.str = private unnamed_addr constant [58 x i8] c"Programmed thresholds [ %d(%d), %d(%d), %d(%d), %d(%d) ]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvkm_therm*)* @g84_therm_program_alarms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g84_therm_program_alarms(%struct.nvkm_therm* %0) #0 {
  %2 = alloca %struct.nvkm_therm*, align 8
  %3 = alloca %struct.nvbios_therm_sensor*, align 8
  %4 = alloca %struct.nvkm_subdev*, align 8
  %5 = alloca %struct.nvkm_device*, align 8
  %6 = alloca i64, align 8
  store %struct.nvkm_therm* %0, %struct.nvkm_therm** %2, align 8
  %7 = load %struct.nvkm_therm*, %struct.nvkm_therm** %2, align 8
  %8 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %7, i32 0, i32 2
  store %struct.nvbios_therm_sensor* %8, %struct.nvbios_therm_sensor** %3, align 8
  %9 = load %struct.nvkm_therm*, %struct.nvkm_therm** %2, align 8
  %10 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %9, i32 0, i32 1
  store %struct.nvkm_subdev* %10, %struct.nvkm_subdev** %4, align 8
  %11 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %4, align 8
  %12 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %11, i32 0, i32 0
  %13 = load %struct.nvkm_device*, %struct.nvkm_device** %12, align 8
  store %struct.nvkm_device* %13, %struct.nvkm_device** %5, align 8
  %14 = load %struct.nvkm_therm*, %struct.nvkm_therm** %2, align 8
  %15 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i64, i64* %6, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %20 = call i32 @nvkm_wr32(%struct.nvkm_device* %19, i32 131072, i32 1023)
  %21 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %22 = load %struct.nvbios_therm_sensor*, %struct.nvbios_therm_sensor** %3, align 8
  %23 = getelementptr inbounds %struct.nvbios_therm_sensor, %struct.nvbios_therm_sensor* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @nvkm_wr32(%struct.nvkm_device* %21, i32 132228, i32 %25)
  %27 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %28 = load %struct.nvbios_therm_sensor*, %struct.nvbios_therm_sensor** %3, align 8
  %29 = getelementptr inbounds %struct.nvbios_therm_sensor, %struct.nvbios_therm_sensor* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @nvkm_wr32(%struct.nvkm_device* %27, i32 132224, i32 %31)
  %33 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %34 = load %struct.nvbios_therm_sensor*, %struct.nvbios_therm_sensor** %3, align 8
  %35 = getelementptr inbounds %struct.nvbios_therm_sensor, %struct.nvbios_therm_sensor* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @nvkm_wr32(%struct.nvkm_device* %33, i32 132292, i32 %37)
  %39 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %40 = load %struct.nvbios_therm_sensor*, %struct.nvbios_therm_sensor** %3, align 8
  %41 = getelementptr inbounds %struct.nvbios_therm_sensor, %struct.nvbios_therm_sensor* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @nvkm_wr32(%struct.nvkm_device* %39, i32 132288, i32 %43)
  %45 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %46 = load %struct.nvbios_therm_sensor*, %struct.nvbios_therm_sensor** %3, align 8
  %47 = getelementptr inbounds %struct.nvbios_therm_sensor, %struct.nvbios_therm_sensor* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @nvkm_wr32(%struct.nvkm_device* %45, i32 132116, i32 %49)
  %51 = load %struct.nvkm_therm*, %struct.nvkm_therm** %2, align 8
  %52 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i64, i64* %6, align 8
  %55 = call i32 @spin_unlock_irqrestore(i32* %53, i64 %54)
  %56 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %4, align 8
  %57 = load %struct.nvbios_therm_sensor*, %struct.nvbios_therm_sensor** %3, align 8
  %58 = getelementptr inbounds %struct.nvbios_therm_sensor, %struct.nvbios_therm_sensor* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.nvbios_therm_sensor*, %struct.nvbios_therm_sensor** %3, align 8
  %62 = getelementptr inbounds %struct.nvbios_therm_sensor, %struct.nvbios_therm_sensor* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.nvbios_therm_sensor*, %struct.nvbios_therm_sensor** %3, align 8
  %66 = getelementptr inbounds %struct.nvbios_therm_sensor, %struct.nvbios_therm_sensor* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.nvbios_therm_sensor*, %struct.nvbios_therm_sensor** %3, align 8
  %70 = getelementptr inbounds %struct.nvbios_therm_sensor, %struct.nvbios_therm_sensor* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.nvbios_therm_sensor*, %struct.nvbios_therm_sensor** %3, align 8
  %74 = getelementptr inbounds %struct.nvbios_therm_sensor, %struct.nvbios_therm_sensor* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.nvbios_therm_sensor*, %struct.nvbios_therm_sensor** %3, align 8
  %78 = getelementptr inbounds %struct.nvbios_therm_sensor, %struct.nvbios_therm_sensor* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.nvbios_therm_sensor*, %struct.nvbios_therm_sensor** %3, align 8
  %82 = getelementptr inbounds %struct.nvbios_therm_sensor, %struct.nvbios_therm_sensor* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.nvbios_therm_sensor*, %struct.nvbios_therm_sensor** %3, align 8
  %86 = getelementptr inbounds %struct.nvbios_therm_sensor, %struct.nvbios_therm_sensor* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @nvkm_debug(%struct.nvkm_subdev* %56, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %60, i32 %64, i32 %68, i32 %72, i32 %76, i32 %80, i32 %84, i32 %88)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @nvkm_debug(%struct.nvkm_subdev*, i8*, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
