; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_vram_mm_helper.c_bo_driver_evict_flags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_vram_mm_helper.c_bo_driver_evict_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_buffer_object = type { i32 }
%struct.ttm_placement = type { i32 }
%struct.drm_vram_mm = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.ttm_buffer_object*, %struct.ttm_placement*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ttm_buffer_object*, %struct.ttm_placement*)* @bo_driver_evict_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bo_driver_evict_flags(%struct.ttm_buffer_object* %0, %struct.ttm_placement* %1) #0 {
  %3 = alloca %struct.ttm_buffer_object*, align 8
  %4 = alloca %struct.ttm_placement*, align 8
  %5 = alloca %struct.drm_vram_mm*, align 8
  store %struct.ttm_buffer_object* %0, %struct.ttm_buffer_object** %3, align 8
  store %struct.ttm_placement* %1, %struct.ttm_placement** %4, align 8
  %6 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %3, align 8
  %7 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.drm_vram_mm* @drm_vram_mm_of_bdev(i32 %8)
  store %struct.drm_vram_mm* %9, %struct.drm_vram_mm** %5, align 8
  %10 = load %struct.drm_vram_mm*, %struct.drm_vram_mm** %5, align 8
  %11 = getelementptr inbounds %struct.drm_vram_mm, %struct.drm_vram_mm* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = icmp ne %struct.TYPE_2__* %12, null
  br i1 %13, label %14, label %30

14:                                               ; preds = %2
  %15 = load %struct.drm_vram_mm*, %struct.drm_vram_mm** %5, align 8
  %16 = getelementptr inbounds %struct.drm_vram_mm, %struct.drm_vram_mm* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32 (%struct.ttm_buffer_object*, %struct.ttm_placement*)*, i32 (%struct.ttm_buffer_object*, %struct.ttm_placement*)** %18, align 8
  %20 = icmp ne i32 (%struct.ttm_buffer_object*, %struct.ttm_placement*)* %19, null
  br i1 %20, label %21, label %30

21:                                               ; preds = %14
  %22 = load %struct.drm_vram_mm*, %struct.drm_vram_mm** %5, align 8
  %23 = getelementptr inbounds %struct.drm_vram_mm, %struct.drm_vram_mm* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32 (%struct.ttm_buffer_object*, %struct.ttm_placement*)*, i32 (%struct.ttm_buffer_object*, %struct.ttm_placement*)** %25, align 8
  %27 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %3, align 8
  %28 = load %struct.ttm_placement*, %struct.ttm_placement** %4, align 8
  %29 = call i32 %26(%struct.ttm_buffer_object* %27, %struct.ttm_placement* %28)
  br label %30

30:                                               ; preds = %21, %14, %2
  ret void
}

declare dso_local %struct.drm_vram_mm* @drm_vram_mm_of_bdev(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
