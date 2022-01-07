; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/therm/extr_temp.c_nvkm_therm_temp_set_defaults.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/therm/extr_temp.c_nvkm_therm_temp_set_defaults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_therm = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, i64 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvkm_therm*)* @nvkm_therm_temp_set_defaults to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvkm_therm_temp_set_defaults(%struct.nvkm_therm* %0) #0 {
  %2 = alloca %struct.nvkm_therm*, align 8
  store %struct.nvkm_therm* %0, %struct.nvkm_therm** %2, align 8
  %3 = load %struct.nvkm_therm*, %struct.nvkm_therm** %2, align 8
  %4 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 4
  store i64 0, i64* %5, align 8
  %6 = load %struct.nvkm_therm*, %struct.nvkm_therm** %2, align 8
  %7 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 3
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  store i32 90, i32* %9, align 8
  %10 = load %struct.nvkm_therm*, %struct.nvkm_therm** %2, align 8
  %11 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  store i32 3, i32* %13, align 4
  %14 = load %struct.nvkm_therm*, %struct.nvkm_therm** %2, align 8
  %15 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  store i32 95, i32* %17, align 8
  %18 = load %struct.nvkm_therm*, %struct.nvkm_therm** %2, align 8
  %19 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  store i32 3, i32* %21, align 4
  %22 = load %struct.nvkm_therm*, %struct.nvkm_therm** %2, align 8
  %23 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  store i32 105, i32* %25, align 8
  %26 = load %struct.nvkm_therm*, %struct.nvkm_therm** %2, align 8
  %27 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  store i32 5, i32* %29, align 4
  %30 = load %struct.nvkm_therm*, %struct.nvkm_therm** %2, align 8
  %31 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  store i32 135, i32* %33, align 8
  %34 = load %struct.nvkm_therm*, %struct.nvkm_therm** %2, align 8
  %35 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  store i32 5, i32* %37, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
