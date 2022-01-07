; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_channv50.c_nv50_disp_chan_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_channv50.c_nv50_disp_chan_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_object = type { i32 }
%struct.nv50_disp_chan = type { %struct.TYPE_7__*, %struct.TYPE_11__* }
%struct.TYPE_7__ = type { i64 (%struct.nv50_disp_chan*, i64*)* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64 (%struct.nvkm_device*, i32)* }

@NVKM_OBJECT_MAP_IO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_object*, i8*, i32, i32*, i64*, i64*)* @nv50_disp_chan_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv50_disp_chan_map(%struct.nvkm_object* %0, i8* %1, i32 %2, i32* %3, i64* %4, i64* %5) #0 {
  %7 = alloca %struct.nvkm_object*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca %struct.nv50_disp_chan*, align 8
  %14 = alloca %struct.nvkm_device*, align 8
  %15 = alloca i64, align 8
  store %struct.nvkm_object* %0, %struct.nvkm_object** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i64* %4, i64** %11, align 8
  store i64* %5, i64** %12, align 8
  %16 = load %struct.nvkm_object*, %struct.nvkm_object** %7, align 8
  %17 = call %struct.nv50_disp_chan* @nv50_disp_chan(%struct.nvkm_object* %16)
  store %struct.nv50_disp_chan* %17, %struct.nv50_disp_chan** %13, align 8
  %18 = load %struct.nv50_disp_chan*, %struct.nv50_disp_chan** %13, align 8
  %19 = getelementptr inbounds %struct.nv50_disp_chan, %struct.nv50_disp_chan* %18, i32 0, i32 1
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load %struct.nvkm_device*, %struct.nvkm_device** %24, align 8
  store %struct.nvkm_device* %25, %struct.nvkm_device** %14, align 8
  %26 = load %struct.nvkm_device*, %struct.nvkm_device** %14, align 8
  %27 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %26, i32 0, i32 0
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = load i64 (%struct.nvkm_device*, i32)*, i64 (%struct.nvkm_device*, i32)** %29, align 8
  %31 = load %struct.nvkm_device*, %struct.nvkm_device** %14, align 8
  %32 = call i64 %30(%struct.nvkm_device* %31, i32 0)
  store i64 %32, i64* %15, align 8
  %33 = load i32, i32* @NVKM_OBJECT_MAP_IO, align 4
  %34 = load i32*, i32** %10, align 8
  store i32 %33, i32* %34, align 4
  %35 = load i64, i64* %15, align 8
  %36 = load %struct.nv50_disp_chan*, %struct.nv50_disp_chan** %13, align 8
  %37 = getelementptr inbounds %struct.nv50_disp_chan, %struct.nv50_disp_chan* %36, i32 0, i32 0
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i64 (%struct.nv50_disp_chan*, i64*)*, i64 (%struct.nv50_disp_chan*, i64*)** %39, align 8
  %41 = load %struct.nv50_disp_chan*, %struct.nv50_disp_chan** %13, align 8
  %42 = load i64*, i64** %12, align 8
  %43 = call i64 %40(%struct.nv50_disp_chan* %41, i64* %42)
  %44 = add nsw i64 %35, %43
  %45 = load i64*, i64** %11, align 8
  store i64 %44, i64* %45, align 8
  ret i32 0
}

declare dso_local %struct.nv50_disp_chan* @nv50_disp_chan(%struct.nvkm_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
