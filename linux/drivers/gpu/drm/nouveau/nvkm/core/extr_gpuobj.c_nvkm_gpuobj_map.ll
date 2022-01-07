; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/core/extr_gpuobj.c_nvkm_gpuobj_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/core/extr_gpuobj.c_nvkm_gpuobj_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_gpuobj = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.nvkm_vmm = type { i32 }
%struct.nvkm_vma = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_gpuobj*, i64, %struct.nvkm_vmm*, %struct.nvkm_vma*, i8*, i32)* @nvkm_gpuobj_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvkm_gpuobj_map(%struct.nvkm_gpuobj* %0, i64 %1, %struct.nvkm_vmm* %2, %struct.nvkm_vma* %3, i8* %4, i32 %5) #0 {
  %7 = alloca %struct.nvkm_gpuobj*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.nvkm_vmm*, align 8
  %10 = alloca %struct.nvkm_vma*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.nvkm_gpuobj* %0, %struct.nvkm_gpuobj** %7, align 8
  store i64 %1, i64* %8, align 8
  store %struct.nvkm_vmm* %2, %struct.nvkm_vmm** %9, align 8
  store %struct.nvkm_vma* %3, %struct.nvkm_vma** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  %13 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %7, align 8
  %14 = getelementptr inbounds %struct.nvkm_gpuobj, %struct.nvkm_gpuobj* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %7, align 8
  %17 = getelementptr inbounds %struct.nvkm_gpuobj, %struct.nvkm_gpuobj* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %8, align 8
  %22 = add nsw i64 %20, %21
  %23 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %9, align 8
  %24 = load %struct.nvkm_vma*, %struct.nvkm_vma** %10, align 8
  %25 = load i8*, i8** %11, align 8
  %26 = load i32, i32* %12, align 4
  %27 = call i32 @nvkm_memory_map(i32 %15, i64 %22, %struct.nvkm_vmm* %23, %struct.nvkm_vma* %24, i8* %25, i32 %26)
  ret i32 %27
}

declare dso_local i32 @nvkm_memory_map(i32, i64, %struct.nvkm_vmm*, %struct.nvkm_vma*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
