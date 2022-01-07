; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/therm/extr_base.c_nvkm_therm_ctor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/therm/extr_base.c_nvkm_therm_ctor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_therm = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__, i32, i32, %struct.nvkm_therm_func*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.nvkm_device = type { i32 }
%struct.nvkm_therm_func = type { i32 }

@nvkm_therm = common dso_local global i32 0, align 4
@nvkm_therm_alarm = common dso_local global i32 0, align 4
@nvkm_therm_fan_user_get = common dso_local global i32 0, align 4
@nvkm_therm_fan_user_set = common dso_local global i32 0, align 4
@nvkm_therm_attr_get = common dso_local global i32 0, align 4
@nvkm_therm_attr_set = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"NvPmEnableGating\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvkm_therm_ctor(%struct.nvkm_therm* %0, %struct.nvkm_device* %1, i32 %2, %struct.nvkm_therm_func* %3) #0 {
  %5 = alloca %struct.nvkm_therm*, align 8
  %6 = alloca %struct.nvkm_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nvkm_therm_func*, align 8
  store %struct.nvkm_therm* %0, %struct.nvkm_therm** %5, align 8
  store %struct.nvkm_device* %1, %struct.nvkm_device** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.nvkm_therm_func* %3, %struct.nvkm_therm_func** %8, align 8
  %9 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %10 = load i32, i32* %7, align 4
  %11 = load %struct.nvkm_therm*, %struct.nvkm_therm** %5, align 8
  %12 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %11, i32 0, i32 11
  %13 = call i32 @nvkm_subdev_ctor(i32* @nvkm_therm, %struct.nvkm_device* %9, i32 %10, i32* %12)
  %14 = load %struct.nvkm_therm_func*, %struct.nvkm_therm_func** %8, align 8
  %15 = load %struct.nvkm_therm*, %struct.nvkm_therm** %5, align 8
  %16 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %15, i32 0, i32 10
  store %struct.nvkm_therm_func* %14, %struct.nvkm_therm_func** %16, align 8
  %17 = load %struct.nvkm_therm*, %struct.nvkm_therm** %5, align 8
  %18 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %17, i32 0, i32 9
  %19 = load i32, i32* @nvkm_therm_alarm, align 4
  %20 = call i32 @nvkm_alarm_init(i32* %18, i32 %19)
  %21 = load %struct.nvkm_therm*, %struct.nvkm_therm** %5, align 8
  %22 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %21, i32 0, i32 8
  %23 = call i32 @spin_lock_init(i32* %22)
  %24 = load %struct.nvkm_therm*, %struct.nvkm_therm** %5, align 8
  %25 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %24, i32 0, i32 7
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = call i32 @spin_lock_init(i32* %26)
  %28 = load i32, i32* @nvkm_therm_fan_user_get, align 4
  %29 = load %struct.nvkm_therm*, %struct.nvkm_therm** %5, align 8
  %30 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %29, i32 0, i32 6
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* @nvkm_therm_fan_user_set, align 4
  %32 = load %struct.nvkm_therm*, %struct.nvkm_therm** %5, align 8
  %33 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %32, i32 0, i32 5
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* @nvkm_therm_attr_get, align 4
  %35 = load %struct.nvkm_therm*, %struct.nvkm_therm** %5, align 8
  %36 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %35, i32 0, i32 4
  store i32 %34, i32* %36, align 8
  %37 = load i32, i32* @nvkm_therm_attr_set, align 4
  %38 = load %struct.nvkm_therm*, %struct.nvkm_therm** %5, align 8
  %39 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 4
  %40 = load %struct.nvkm_therm*, %struct.nvkm_therm** %5, align 8
  %41 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %40, i32 0, i32 1
  store i32 -1, i32* %41, align 4
  %42 = load %struct.nvkm_therm*, %struct.nvkm_therm** %5, align 8
  %43 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %42, i32 0, i32 0
  store i32 -1, i32* %43, align 8
  %44 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %45 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @nvkm_boolopt(i32 %46, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 0)
  %48 = load %struct.nvkm_therm*, %struct.nvkm_therm** %5, align 8
  %49 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 8
  ret void
}

declare dso_local i32 @nvkm_subdev_ctor(i32*, %struct.nvkm_device*, i32, i32*) #1

declare dso_local i32 @nvkm_alarm_init(i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @nvkm_boolopt(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
