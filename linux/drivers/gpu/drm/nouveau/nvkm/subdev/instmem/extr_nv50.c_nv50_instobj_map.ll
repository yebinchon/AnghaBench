; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/instmem/extr_nv50.c_nv50_instobj_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/instmem/extr_nv50.c_nv50_instobj_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_memory = type { i32 }
%struct.nvkm_vmm = type { i32 }
%struct.nvkm_vma = type { i32 }
%struct.TYPE_2__ = type { %struct.nvkm_memory* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_memory*, i32, %struct.nvkm_vmm*, %struct.nvkm_vma*, i8*, i32)* @nv50_instobj_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv50_instobj_map(%struct.nvkm_memory* %0, i32 %1, %struct.nvkm_vmm* %2, %struct.nvkm_vma* %3, i8* %4, i32 %5) #0 {
  %7 = alloca %struct.nvkm_memory*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nvkm_vmm*, align 8
  %10 = alloca %struct.nvkm_vma*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.nvkm_memory* %0, %struct.nvkm_memory** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.nvkm_vmm* %2, %struct.nvkm_vmm** %9, align 8
  store %struct.nvkm_vma* %3, %struct.nvkm_vma** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  %13 = load %struct.nvkm_memory*, %struct.nvkm_memory** %7, align 8
  %14 = call %struct.TYPE_2__* @nv50_instobj(%struct.nvkm_memory* %13)
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.nvkm_memory*, %struct.nvkm_memory** %15, align 8
  store %struct.nvkm_memory* %16, %struct.nvkm_memory** %7, align 8
  %17 = load %struct.nvkm_memory*, %struct.nvkm_memory** %7, align 8
  %18 = load i32, i32* %8, align 4
  %19 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %9, align 8
  %20 = load %struct.nvkm_vma*, %struct.nvkm_vma** %10, align 8
  %21 = load i8*, i8** %11, align 8
  %22 = load i32, i32* %12, align 4
  %23 = call i32 @nvkm_memory_map(%struct.nvkm_memory* %17, i32 %18, %struct.nvkm_vmm* %19, %struct.nvkm_vma* %20, i8* %21, i32 %22)
  ret i32 %23
}

declare dso_local %struct.TYPE_2__* @nv50_instobj(%struct.nvkm_memory*) #1

declare dso_local i32 @nvkm_memory_map(%struct.nvkm_memory*, i32, %struct.nvkm_vmm*, %struct.nvkm_vma*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
