; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fault/extr_user.c_nvkm_ufault_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fault/extr_user.c_nvkm_ufault_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_object = type { i32 }
%struct.nvkm_fault_buffer = type { i32, i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 (%struct.nvkm_device*, i32)* }

@NVKM_OBJECT_MAP_IO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_object*, i8*, i32, i32*, i64*, i64*)* @nvkm_ufault_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvkm_ufault_map(%struct.nvkm_object* %0, i8* %1, i32 %2, i32* %3, i64* %4, i64* %5) #0 {
  %7 = alloca %struct.nvkm_object*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca %struct.nvkm_fault_buffer*, align 8
  %14 = alloca %struct.nvkm_device*, align 8
  store %struct.nvkm_object* %0, %struct.nvkm_object** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i64* %4, i64** %11, align 8
  store i64* %5, i64** %12, align 8
  %15 = load %struct.nvkm_object*, %struct.nvkm_object** %7, align 8
  %16 = call %struct.nvkm_fault_buffer* @nvkm_fault_buffer(%struct.nvkm_object* %15)
  store %struct.nvkm_fault_buffer* %16, %struct.nvkm_fault_buffer** %13, align 8
  %17 = load %struct.nvkm_fault_buffer*, %struct.nvkm_fault_buffer** %13, align 8
  %18 = getelementptr inbounds %struct.nvkm_fault_buffer, %struct.nvkm_fault_buffer* %17, i32 0, i32 2
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.nvkm_device*, %struct.nvkm_device** %21, align 8
  store %struct.nvkm_device* %22, %struct.nvkm_device** %14, align 8
  %23 = load i32, i32* @NVKM_OBJECT_MAP_IO, align 4
  %24 = load i32*, i32** %10, align 8
  store i32 %23, i32* %24, align 4
  %25 = load %struct.nvkm_device*, %struct.nvkm_device** %14, align 8
  %26 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %25, i32 0, i32 0
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i64 (%struct.nvkm_device*, i32)*, i64 (%struct.nvkm_device*, i32)** %28, align 8
  %30 = load %struct.nvkm_device*, %struct.nvkm_device** %14, align 8
  %31 = call i64 %29(%struct.nvkm_device* %30, i32 3)
  %32 = load %struct.nvkm_fault_buffer*, %struct.nvkm_fault_buffer** %13, align 8
  %33 = getelementptr inbounds %struct.nvkm_fault_buffer, %struct.nvkm_fault_buffer* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %31, %34
  %36 = load i64*, i64** %11, align 8
  store i64 %35, i64* %36, align 8
  %37 = load %struct.nvkm_fault_buffer*, %struct.nvkm_fault_buffer** %13, align 8
  %38 = getelementptr inbounds %struct.nvkm_fault_buffer, %struct.nvkm_fault_buffer* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @nvkm_memory_size(i32 %39)
  %41 = load i64*, i64** %12, align 8
  store i64 %40, i64* %41, align 8
  ret i32 0
}

declare dso_local %struct.nvkm_fault_buffer* @nvkm_fault_buffer(%struct.nvkm_object*) #1

declare dso_local i64 @nvkm_memory_size(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
