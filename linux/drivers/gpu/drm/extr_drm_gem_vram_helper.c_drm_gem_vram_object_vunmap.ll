; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_gem_vram_helper.c_drm_gem_vram_object_vunmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_gem_vram_helper.c_drm_gem_vram_object_vunmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_object = type { i32 }
%struct.drm_gem_vram_object = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_gem_object*, i8*)* @drm_gem_vram_object_vunmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drm_gem_vram_object_vunmap(%struct.drm_gem_object* %0, i8* %1) #0 {
  %3 = alloca %struct.drm_gem_object*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.drm_gem_vram_object*, align 8
  store %struct.drm_gem_object* %0, %struct.drm_gem_object** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %7 = call %struct.drm_gem_vram_object* @drm_gem_vram_of_gem(%struct.drm_gem_object* %6)
  store %struct.drm_gem_vram_object* %7, %struct.drm_gem_vram_object** %5, align 8
  %8 = load %struct.drm_gem_vram_object*, %struct.drm_gem_vram_object** %5, align 8
  %9 = call i32 @drm_gem_vram_kunmap(%struct.drm_gem_vram_object* %8)
  %10 = load %struct.drm_gem_vram_object*, %struct.drm_gem_vram_object** %5, align 8
  %11 = call i32 @drm_gem_vram_unpin(%struct.drm_gem_vram_object* %10)
  ret void
}

declare dso_local %struct.drm_gem_vram_object* @drm_gem_vram_of_gem(%struct.drm_gem_object*) #1

declare dso_local i32 @drm_gem_vram_kunmap(%struct.drm_gem_vram_object*) #1

declare dso_local i32 @drm_gem_vram_unpin(%struct.drm_gem_vram_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
