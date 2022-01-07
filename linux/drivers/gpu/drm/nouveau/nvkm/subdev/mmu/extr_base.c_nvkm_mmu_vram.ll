; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_base.c_nvkm_mmu_vram.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_base.c_nvkm_mmu_vram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_mmu = type { %struct.TYPE_9__*, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_6__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { %struct.TYPE_10__*, %struct.TYPE_8__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.nvkm_mm }
%struct.nvkm_mm = type { i32 }

@NVKM_RAM_MM_NORMAL = common dso_local global i32 0, align 4
@NVKM_RAM_MM_NOMAP = common dso_local global i32 0, align 4
@NVKM_RAM_MM_MIXED = common dso_local global i32 0, align 4
@NVKM_MEM_KIND = common dso_local global i32 0, align 4
@NVKM_MEM_VRAM = common dso_local global i32 0, align 4
@NVKM_RAM_MM_SHIFT = common dso_local global i32 0, align 4
@NVKM_MEM_COMP = common dso_local global i32 0, align 4
@NVKM_MEM_DISP = common dso_local global i32 0, align 4
@NVKM_MEM_MAPPABLE = common dso_local global i32 0, align 4
@NVKM_MEM_COHERENT = common dso_local global i32 0, align 4
@NVKM_MEM_UNCACHED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvkm_mmu*)* @nvkm_mmu_vram to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvkm_mmu_vram(%struct.nvkm_mmu* %0) #0 {
  %2 = alloca %struct.nvkm_mmu*, align 8
  %3 = alloca %struct.nvkm_device*, align 8
  %4 = alloca %struct.nvkm_mm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.nvkm_mmu* %0, %struct.nvkm_mmu** %2, align 8
  %13 = load %struct.nvkm_mmu*, %struct.nvkm_mmu** %2, align 8
  %14 = getelementptr inbounds %struct.nvkm_mmu, %struct.nvkm_mmu* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load %struct.nvkm_device*, %struct.nvkm_device** %15, align 8
  store %struct.nvkm_device* %16, %struct.nvkm_device** %3, align 8
  %17 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %18 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %17, i32 0, i32 1
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  store %struct.nvkm_mm* %22, %struct.nvkm_mm** %4, align 8
  %23 = load %struct.nvkm_mm*, %struct.nvkm_mm** %4, align 8
  %24 = load i32, i32* @NVKM_RAM_MM_NORMAL, align 4
  %25 = call i32 @nvkm_mm_heap_size(%struct.nvkm_mm* %23, i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = load %struct.nvkm_mm*, %struct.nvkm_mm** %4, align 8
  %27 = load i32, i32* @NVKM_RAM_MM_NOMAP, align 4
  %28 = call i32 @nvkm_mm_heap_size(%struct.nvkm_mm* %26, i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load %struct.nvkm_mm*, %struct.nvkm_mm** %4, align 8
  %30 = load i32, i32* @NVKM_RAM_MM_MIXED, align 4
  %31 = call i32 @nvkm_mm_heap_size(%struct.nvkm_mm* %29, i32 %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* @NVKM_MEM_KIND, align 4
  %33 = load %struct.nvkm_mmu*, %struct.nvkm_mmu** %2, align 8
  %34 = getelementptr inbounds %struct.nvkm_mmu, %struct.nvkm_mmu* %33, i32 0, i32 0
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = mul nsw i32 %32, %41
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* @NVKM_MEM_VRAM, align 4
  store i32 %43, i32* %9, align 4
  %44 = load %struct.nvkm_mmu*, %struct.nvkm_mmu** %2, align 8
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @NVKM_RAM_MM_SHIFT, align 4
  %48 = shl i32 %46, %47
  %49 = call i32 @nvkm_mmu_heap(%struct.nvkm_mmu* %44, i32 %45, i32 %48)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* @NVKM_MEM_COMP, align 4
  %51 = load i32, i32* %9, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* @NVKM_MEM_DISP, align 4
  %54 = load i32, i32* %9, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %9, align 4
  %56 = load %struct.nvkm_mmu*, %struct.nvkm_mmu** %2, align 8
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* @NVKM_RAM_MM_SHIFT, align 4
  %60 = shl i32 %58, %59
  %61 = call i32 @nvkm_mmu_heap(%struct.nvkm_mmu* %56, i32 %57, i32 %60)
  store i32 %61, i32* %11, align 4
  %62 = load %struct.nvkm_mmu*, %struct.nvkm_mmu** %2, align 8
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @NVKM_RAM_MM_SHIFT, align 4
  %66 = shl i32 %64, %65
  %67 = call i32 @nvkm_mmu_heap(%struct.nvkm_mmu* %62, i32 %63, i32 %66)
  store i32 %67, i32* %12, align 4
  %68 = load %struct.nvkm_mmu*, %struct.nvkm_mmu** %2, align 8
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @nvkm_mmu_type(%struct.nvkm_mmu* %68, i32 %69, i32 %70)
  %72 = load %struct.nvkm_mmu*, %struct.nvkm_mmu** %2, align 8
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @nvkm_mmu_type(%struct.nvkm_mmu* %72, i32 %73, i32 %74)
  %76 = load %struct.nvkm_mmu*, %struct.nvkm_mmu** %2, align 8
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* %8, align 4
  %79 = call i32 @nvkm_mmu_type(%struct.nvkm_mmu* %76, i32 %77, i32 %78)
  %80 = load %struct.nvkm_mmu*, %struct.nvkm_mmu** %2, align 8
  %81 = call i32 @nvkm_mmu_host(%struct.nvkm_mmu* %80)
  %82 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %83 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %82, i32 0, i32 0
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %83, align 8
  %85 = icmp ne %struct.TYPE_10__* %84, null
  br i1 %85, label %86, label %120

86:                                               ; preds = %1
  %87 = load i32, i32* @NVKM_MEM_MAPPABLE, align 4
  %88 = load i32, i32* %8, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %8, align 4
  %90 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %91 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %90, i32 0, i32 0
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %105, label %96

96:                                               ; preds = %86
  %97 = load %struct.nvkm_mmu*, %struct.nvkm_mmu** %2, align 8
  %98 = load i32, i32* %11, align 4
  %99 = load i32, i32* %8, align 4
  %100 = call i32 @nvkm_mmu_type(%struct.nvkm_mmu* %97, i32 %98, i32 %99)
  %101 = load %struct.nvkm_mmu*, %struct.nvkm_mmu** %2, align 8
  %102 = load i32, i32* %10, align 4
  %103 = load i32, i32* %8, align 4
  %104 = call i32 @nvkm_mmu_type(%struct.nvkm_mmu* %101, i32 %102, i32 %103)
  br label %105

105:                                              ; preds = %96, %86
  %106 = load i32, i32* @NVKM_MEM_COHERENT, align 4
  %107 = load i32, i32* %8, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %8, align 4
  %109 = load i32, i32* @NVKM_MEM_UNCACHED, align 4
  %110 = load i32, i32* %8, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %8, align 4
  %112 = load %struct.nvkm_mmu*, %struct.nvkm_mmu** %2, align 8
  %113 = load i32, i32* %11, align 4
  %114 = load i32, i32* %8, align 4
  %115 = call i32 @nvkm_mmu_type(%struct.nvkm_mmu* %112, i32 %113, i32 %114)
  %116 = load %struct.nvkm_mmu*, %struct.nvkm_mmu** %2, align 8
  %117 = load i32, i32* %10, align 4
  %118 = load i32, i32* %8, align 4
  %119 = call i32 @nvkm_mmu_type(%struct.nvkm_mmu* %116, i32 %117, i32 %118)
  br label %120

120:                                              ; preds = %105, %1
  ret void
}

declare dso_local i32 @nvkm_mm_heap_size(%struct.nvkm_mm*, i32) #1

declare dso_local i32 @nvkm_mmu_heap(%struct.nvkm_mmu*, i32, i32) #1

declare dso_local i32 @nvkm_mmu_type(%struct.nvkm_mmu*, i32, i32) #1

declare dso_local i32 @nvkm_mmu_host(%struct.nvkm_mmu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
