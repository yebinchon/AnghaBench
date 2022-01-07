; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/therm/extr_g84.c_g84_therm_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/therm/extr_g84.c_g84_therm_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_therm = type { %struct.TYPE_2__, %struct.nvbios_therm_sensor, %struct.nvkm_subdev }
%struct.TYPE_2__ = type { i32 }
%struct.nvbios_therm_sensor = type { i32, i32, i32, i32 }
%struct.nvkm_subdev = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@NVKM_THERM_THRS_DOWNCLOCK = common dso_local global i32 0, align 4
@NVKM_THERM_THRS_SHUTDOWN = common dso_local global i32 0, align 4
@NVKM_THERM_THRS_FANBOOST = common dso_local global i32 0, align 4
@NVKM_THERM_THRS_CRITICAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"intr %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvkm_therm*)* @g84_therm_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g84_therm_intr(%struct.nvkm_therm* %0) #0 {
  %2 = alloca %struct.nvkm_therm*, align 8
  %3 = alloca %struct.nvkm_subdev*, align 8
  %4 = alloca %struct.nvkm_device*, align 8
  %5 = alloca %struct.nvbios_therm_sensor*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.nvkm_therm* %0, %struct.nvkm_therm** %2, align 8
  %8 = load %struct.nvkm_therm*, %struct.nvkm_therm** %2, align 8
  %9 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %8, i32 0, i32 2
  store %struct.nvkm_subdev* %9, %struct.nvkm_subdev** %3, align 8
  %10 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %3, align 8
  %11 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %10, i32 0, i32 0
  %12 = load %struct.nvkm_device*, %struct.nvkm_device** %11, align 8
  store %struct.nvkm_device* %12, %struct.nvkm_device** %4, align 8
  %13 = load %struct.nvkm_therm*, %struct.nvkm_therm** %2, align 8
  %14 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %13, i32 0, i32 1
  store %struct.nvbios_therm_sensor* %14, %struct.nvbios_therm_sensor** %5, align 8
  %15 = load %struct.nvkm_therm*, %struct.nvkm_therm** %2, align 8
  %16 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %6, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %21 = call i32 @nvkm_rd32(%struct.nvkm_device* %20, i32 131328)
  %22 = and i32 %21, 1023
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = and i32 %23, 2
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %1
  %27 = load %struct.nvkm_therm*, %struct.nvkm_therm** %2, align 8
  %28 = load %struct.nvbios_therm_sensor*, %struct.nvbios_therm_sensor** %5, align 8
  %29 = getelementptr inbounds %struct.nvbios_therm_sensor, %struct.nvbios_therm_sensor* %28, i32 0, i32 3
  %30 = load i32, i32* @NVKM_THERM_THRS_DOWNCLOCK, align 4
  %31 = call i32 @g84_therm_threshold_hyst_emulation(%struct.nvkm_therm* %27, i32 132116, i32 24, i32* %29, i32 %30)
  %32 = load i32, i32* %7, align 4
  %33 = and i32 %32, -3
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %26, %1
  %35 = load i32, i32* %7, align 4
  %36 = and i32 %35, 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %34
  %39 = load %struct.nvkm_therm*, %struct.nvkm_therm** %2, align 8
  %40 = load %struct.nvbios_therm_sensor*, %struct.nvbios_therm_sensor** %5, align 8
  %41 = getelementptr inbounds %struct.nvbios_therm_sensor, %struct.nvbios_therm_sensor* %40, i32 0, i32 2
  %42 = load i32, i32* @NVKM_THERM_THRS_SHUTDOWN, align 4
  %43 = call i32 @g84_therm_threshold_hyst_emulation(%struct.nvkm_therm* %39, i32 132224, i32 20, i32* %41, i32 %42)
  %44 = load i32, i32* %7, align 4
  %45 = and i32 %44, -5
  store i32 %45, i32* %7, align 4
  br label %46

46:                                               ; preds = %38, %34
  %47 = load i32, i32* %7, align 4
  %48 = and i32 %47, 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %46
  %51 = load %struct.nvkm_therm*, %struct.nvkm_therm** %2, align 8
  %52 = load %struct.nvbios_therm_sensor*, %struct.nvbios_therm_sensor** %5, align 8
  %53 = getelementptr inbounds %struct.nvbios_therm_sensor, %struct.nvbios_therm_sensor* %52, i32 0, i32 1
  %54 = load i32, i32* @NVKM_THERM_THRS_FANBOOST, align 4
  %55 = call i32 @g84_therm_threshold_hyst_emulation(%struct.nvkm_therm* %51, i32 132292, i32 21, i32* %53, i32 %54)
  %56 = load i32, i32* %7, align 4
  %57 = and i32 %56, -9
  store i32 %57, i32* %7, align 4
  br label %58

58:                                               ; preds = %50, %46
  %59 = load i32, i32* %7, align 4
  %60 = and i32 %59, 16
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %58
  %63 = load %struct.nvkm_therm*, %struct.nvkm_therm** %2, align 8
  %64 = load %struct.nvbios_therm_sensor*, %struct.nvbios_therm_sensor** %5, align 8
  %65 = getelementptr inbounds %struct.nvbios_therm_sensor, %struct.nvbios_therm_sensor* %64, i32 0, i32 0
  %66 = load i32, i32* @NVKM_THERM_THRS_CRITICAL, align 4
  %67 = call i32 @g84_therm_threshold_hyst_emulation(%struct.nvkm_therm* %63, i32 132288, i32 22, i32* %65, i32 %66)
  %68 = load i32, i32* %7, align 4
  %69 = and i32 %68, -17
  store i32 %69, i32* %7, align 4
  br label %70

70:                                               ; preds = %62, %58
  %71 = load i32, i32* %7, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %70
  %74 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %3, align 8
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @nvkm_error(%struct.nvkm_subdev* %74, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %75)
  br label %77

77:                                               ; preds = %73, %70
  %78 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %79 = call i32 @nvkm_wr32(%struct.nvkm_device* %78, i32 131328, i32 -1)
  %80 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %81 = call i32 @nvkm_wr32(%struct.nvkm_device* %80, i32 4352, i32 65536)
  %82 = load %struct.nvkm_therm*, %struct.nvkm_therm** %2, align 8
  %83 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i64, i64* %6, align 8
  %86 = call i32 @spin_unlock_irqrestore(i32* %84, i64 %85)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i32 @g84_therm_threshold_hyst_emulation(%struct.nvkm_therm*, i32, i32, i32*, i32) #1

declare dso_local i32 @nvkm_error(%struct.nvkm_subdev*, i8*, i32) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
