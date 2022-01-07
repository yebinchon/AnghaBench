; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/therm/extr_temp.c_nvkm_therm_temp_safety_checks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/therm/extr_temp.c_nvkm_therm_temp_safety_checks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_therm = type { %struct.nvbios_therm_sensor }
%struct.nvbios_therm_sensor = type { %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_8__ }
%struct.TYPE_7__ = type { i8* }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_5__ = type { i8* }
%struct.TYPE_8__ = type { i8* }

@u8 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvkm_therm*)* @nvkm_therm_temp_safety_checks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvkm_therm_temp_safety_checks(%struct.nvkm_therm* %0) #0 {
  %2 = alloca %struct.nvkm_therm*, align 8
  %3 = alloca %struct.nvbios_therm_sensor*, align 8
  store %struct.nvkm_therm* %0, %struct.nvkm_therm** %2, align 8
  %4 = load %struct.nvkm_therm*, %struct.nvkm_therm** %2, align 8
  %5 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %4, i32 0, i32 0
  store %struct.nvbios_therm_sensor* %5, %struct.nvbios_therm_sensor** %3, align 8
  %6 = load i32, i32* @u8, align 4
  %7 = load %struct.nvbios_therm_sensor*, %struct.nvbios_therm_sensor** %3, align 8
  %8 = getelementptr inbounds %struct.nvbios_therm_sensor, %struct.nvbios_therm_sensor* %7, i32 0, i32 3
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  %11 = call i8* @max_t(i32 %6, i8* %10, i32 2)
  %12 = load %struct.nvbios_therm_sensor*, %struct.nvbios_therm_sensor** %3, align 8
  %13 = getelementptr inbounds %struct.nvbios_therm_sensor, %struct.nvbios_therm_sensor* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  store i8* %11, i8** %14, align 8
  %15 = load i32, i32* @u8, align 4
  %16 = load %struct.nvbios_therm_sensor*, %struct.nvbios_therm_sensor** %3, align 8
  %17 = getelementptr inbounds %struct.nvbios_therm_sensor, %struct.nvbios_therm_sensor* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = call i8* @max_t(i32 %15, i8* %19, i32 2)
  %21 = load %struct.nvbios_therm_sensor*, %struct.nvbios_therm_sensor** %3, align 8
  %22 = getelementptr inbounds %struct.nvbios_therm_sensor, %struct.nvbios_therm_sensor* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  store i8* %20, i8** %23, align 8
  %24 = load i32, i32* @u8, align 4
  %25 = load %struct.nvbios_therm_sensor*, %struct.nvbios_therm_sensor** %3, align 8
  %26 = getelementptr inbounds %struct.nvbios_therm_sensor, %struct.nvbios_therm_sensor* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i8* @max_t(i32 %24, i8* %28, i32 2)
  %30 = load %struct.nvbios_therm_sensor*, %struct.nvbios_therm_sensor** %3, align 8
  %31 = getelementptr inbounds %struct.nvbios_therm_sensor, %struct.nvbios_therm_sensor* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  store i8* %29, i8** %32, align 8
  %33 = load i32, i32* @u8, align 4
  %34 = load %struct.nvbios_therm_sensor*, %struct.nvbios_therm_sensor** %3, align 8
  %35 = getelementptr inbounds %struct.nvbios_therm_sensor, %struct.nvbios_therm_sensor* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = call i8* @max_t(i32 %33, i8* %37, i32 2)
  %39 = load %struct.nvbios_therm_sensor*, %struct.nvbios_therm_sensor** %3, align 8
  %40 = getelementptr inbounds %struct.nvbios_therm_sensor, %struct.nvbios_therm_sensor* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  store i8* %38, i8** %41, align 8
  ret void
}

declare dso_local i8* @max_t(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
