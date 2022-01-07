; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_gem_vram_helper.c_drm_gem_vram_bo_driver_evict_flags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_gem_vram_helper.c_drm_gem_vram_bo_driver_evict_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_buffer_object = type { i32 }
%struct.ttm_placement = type { i32 }
%struct.drm_gem_vram_object = type { %struct.ttm_placement }

@TTM_PL_FLAG_SYSTEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_gem_vram_bo_driver_evict_flags(%struct.ttm_buffer_object* %0, %struct.ttm_placement* %1) #0 {
  %3 = alloca %struct.ttm_buffer_object*, align 8
  %4 = alloca %struct.ttm_placement*, align 8
  %5 = alloca %struct.drm_gem_vram_object*, align 8
  store %struct.ttm_buffer_object* %0, %struct.ttm_buffer_object** %3, align 8
  store %struct.ttm_placement* %1, %struct.ttm_placement** %4, align 8
  %6 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %3, align 8
  %7 = call i32 @drm_is_gem_vram(%struct.ttm_buffer_object* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %21

10:                                               ; preds = %2
  %11 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %3, align 8
  %12 = call %struct.drm_gem_vram_object* @drm_gem_vram_of_bo(%struct.ttm_buffer_object* %11)
  store %struct.drm_gem_vram_object* %12, %struct.drm_gem_vram_object** %5, align 8
  %13 = load %struct.drm_gem_vram_object*, %struct.drm_gem_vram_object** %5, align 8
  %14 = load i32, i32* @TTM_PL_FLAG_SYSTEM, align 4
  %15 = call i32 @drm_gem_vram_placement(%struct.drm_gem_vram_object* %13, i32 %14)
  %16 = load %struct.ttm_placement*, %struct.ttm_placement** %4, align 8
  %17 = load %struct.drm_gem_vram_object*, %struct.drm_gem_vram_object** %5, align 8
  %18 = getelementptr inbounds %struct.drm_gem_vram_object, %struct.drm_gem_vram_object* %17, i32 0, i32 0
  %19 = bitcast %struct.ttm_placement* %16 to i8*
  %20 = bitcast %struct.ttm_placement* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %19, i8* align 4 %20, i64 4, i1 false)
  br label %21

21:                                               ; preds = %10, %9
  ret void
}

declare dso_local i32 @drm_is_gem_vram(%struct.ttm_buffer_object*) #1

declare dso_local %struct.drm_gem_vram_object* @drm_gem_vram_of_bo(%struct.ttm_buffer_object*) #1

declare dso_local i32 @drm_gem_vram_placement(%struct.drm_gem_vram_object*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
