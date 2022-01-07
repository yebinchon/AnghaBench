; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_vram_mm_helper.c_drm_vram_mm_mmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_vram_mm_helper.c_drm_vram_mm_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.vm_area_struct = type { i32 }
%struct.drm_vram_mm = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_vram_mm_mmap(%struct.file* %0, %struct.vm_area_struct* %1, %struct.drm_vram_mm* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca %struct.drm_vram_mm*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  store %struct.drm_vram_mm* %2, %struct.drm_vram_mm** %6, align 8
  %7 = load %struct.file*, %struct.file** %4, align 8
  %8 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %9 = load %struct.drm_vram_mm*, %struct.drm_vram_mm** %6, align 8
  %10 = getelementptr inbounds %struct.drm_vram_mm, %struct.drm_vram_mm* %9, i32 0, i32 0
  %11 = call i32 @ttm_bo_mmap(%struct.file* %7, %struct.vm_area_struct* %8, i32* %10)
  ret i32 %11
}

declare dso_local i32 @ttm_bo_mmap(%struct.file*, %struct.vm_area_struct*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
