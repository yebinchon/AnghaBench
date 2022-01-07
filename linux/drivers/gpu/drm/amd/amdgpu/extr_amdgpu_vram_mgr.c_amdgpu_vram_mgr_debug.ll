; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_vram_mgr.c_amdgpu_vram_mgr_debug.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_vram_mgr.c_amdgpu_vram_mgr_debug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_mem_type_manager = type { i32, %struct.amdgpu_vram_mgr* }
%struct.amdgpu_vram_mgr = type { i32, i32 }
%struct.drm_printer = type { i32 }

@.str = private unnamed_addr constant [57 x i8] c"man size:%llu pages, ram usage:%lluMB, vis usage:%lluMB\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ttm_mem_type_manager*, %struct.drm_printer*)* @amdgpu_vram_mgr_debug to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amdgpu_vram_mgr_debug(%struct.ttm_mem_type_manager* %0, %struct.drm_printer* %1) #0 {
  %3 = alloca %struct.ttm_mem_type_manager*, align 8
  %4 = alloca %struct.drm_printer*, align 8
  %5 = alloca %struct.amdgpu_vram_mgr*, align 8
  store %struct.ttm_mem_type_manager* %0, %struct.ttm_mem_type_manager** %3, align 8
  store %struct.drm_printer* %1, %struct.drm_printer** %4, align 8
  %6 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %3, align 8
  %7 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %6, i32 0, i32 1
  %8 = load %struct.amdgpu_vram_mgr*, %struct.amdgpu_vram_mgr** %7, align 8
  store %struct.amdgpu_vram_mgr* %8, %struct.amdgpu_vram_mgr** %5, align 8
  %9 = load %struct.amdgpu_vram_mgr*, %struct.amdgpu_vram_mgr** %5, align 8
  %10 = getelementptr inbounds %struct.amdgpu_vram_mgr, %struct.amdgpu_vram_mgr* %9, i32 0, i32 0
  %11 = call i32 @spin_lock(i32* %10)
  %12 = load %struct.amdgpu_vram_mgr*, %struct.amdgpu_vram_mgr** %5, align 8
  %13 = getelementptr inbounds %struct.amdgpu_vram_mgr, %struct.amdgpu_vram_mgr* %12, i32 0, i32 1
  %14 = load %struct.drm_printer*, %struct.drm_printer** %4, align 8
  %15 = call i32 @drm_mm_print(i32* %13, %struct.drm_printer* %14)
  %16 = load %struct.amdgpu_vram_mgr*, %struct.amdgpu_vram_mgr** %5, align 8
  %17 = getelementptr inbounds %struct.amdgpu_vram_mgr, %struct.amdgpu_vram_mgr* %16, i32 0, i32 0
  %18 = call i32 @spin_unlock(i32* %17)
  %19 = load %struct.drm_printer*, %struct.drm_printer** %4, align 8
  %20 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %3, align 8
  %21 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %3, align 8
  %24 = call i32 @amdgpu_vram_mgr_usage(%struct.ttm_mem_type_manager* %23)
  %25 = ashr i32 %24, 20
  %26 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %3, align 8
  %27 = call i32 @amdgpu_vram_mgr_vis_usage(%struct.ttm_mem_type_manager* %26)
  %28 = ashr i32 %27, 20
  %29 = call i32 @drm_printf(%struct.drm_printer* %19, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %25, i32 %28)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @drm_mm_print(i32*, %struct.drm_printer*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @drm_printf(%struct.drm_printer*, i8*, i32, i32, i32) #1

declare dso_local i32 @amdgpu_vram_mgr_usage(%struct.ttm_mem_type_manager*) #1

declare dso_local i32 @amdgpu_vram_mgr_vis_usage(%struct.ttm_mem_type_manager*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
