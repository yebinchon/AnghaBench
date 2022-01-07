; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_vmm.c_nvkm_vmm_put.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_vmm.c_nvkm_vmm_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_vmm = type { i32 }
%struct.nvkm_vma = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvkm_vmm_put(%struct.nvkm_vmm* %0, %struct.nvkm_vma** %1) #0 {
  %3 = alloca %struct.nvkm_vmm*, align 8
  %4 = alloca %struct.nvkm_vma**, align 8
  %5 = alloca %struct.nvkm_vma*, align 8
  store %struct.nvkm_vmm* %0, %struct.nvkm_vmm** %3, align 8
  store %struct.nvkm_vma** %1, %struct.nvkm_vma*** %4, align 8
  %6 = load %struct.nvkm_vma**, %struct.nvkm_vma*** %4, align 8
  %7 = load %struct.nvkm_vma*, %struct.nvkm_vma** %6, align 8
  store %struct.nvkm_vma* %7, %struct.nvkm_vma** %5, align 8
  %8 = load %struct.nvkm_vma*, %struct.nvkm_vma** %5, align 8
  %9 = icmp ne %struct.nvkm_vma* %8, null
  br i1 %9, label %10, label %21

10:                                               ; preds = %2
  %11 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %3, align 8
  %12 = getelementptr inbounds %struct.nvkm_vmm, %struct.nvkm_vmm* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %3, align 8
  %15 = load %struct.nvkm_vma*, %struct.nvkm_vma** %5, align 8
  %16 = call i32 @nvkm_vmm_put_locked(%struct.nvkm_vmm* %14, %struct.nvkm_vma* %15)
  %17 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %3, align 8
  %18 = getelementptr inbounds %struct.nvkm_vmm, %struct.nvkm_vmm* %17, i32 0, i32 0
  %19 = call i32 @mutex_unlock(i32* %18)
  %20 = load %struct.nvkm_vma**, %struct.nvkm_vma*** %4, align 8
  store %struct.nvkm_vma* null, %struct.nvkm_vma** %20, align 8
  br label %21

21:                                               ; preds = %10, %2
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @nvkm_vmm_put_locked(%struct.nvkm_vmm*, %struct.nvkm_vma*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
