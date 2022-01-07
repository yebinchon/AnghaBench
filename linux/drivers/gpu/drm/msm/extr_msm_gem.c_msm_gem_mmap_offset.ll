; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_gem.c_msm_gem_mmap_offset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_gem.c_msm_gem_mmap_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_object = type { i32 }
%struct.msm_gem_object = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @msm_gem_mmap_offset(%struct.drm_gem_object* %0) #0 {
  %2 = alloca %struct.drm_gem_object*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.msm_gem_object*, align 8
  store %struct.drm_gem_object* %0, %struct.drm_gem_object** %2, align 8
  %5 = load %struct.drm_gem_object*, %struct.drm_gem_object** %2, align 8
  %6 = call %struct.msm_gem_object* @to_msm_bo(%struct.drm_gem_object* %5)
  store %struct.msm_gem_object* %6, %struct.msm_gem_object** %4, align 8
  %7 = load %struct.msm_gem_object*, %struct.msm_gem_object** %4, align 8
  %8 = getelementptr inbounds %struct.msm_gem_object, %struct.msm_gem_object* %7, i32 0, i32 0
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.drm_gem_object*, %struct.drm_gem_object** %2, align 8
  %11 = call i32 @mmap_offset(%struct.drm_gem_object* %10)
  store i32 %11, i32* %3, align 4
  %12 = load %struct.msm_gem_object*, %struct.msm_gem_object** %4, align 8
  %13 = getelementptr inbounds %struct.msm_gem_object, %struct.msm_gem_object* %12, i32 0, i32 0
  %14 = call i32 @mutex_unlock(i32* %13)
  %15 = load i32, i32* %3, align 4
  ret i32 %15
}

declare dso_local %struct.msm_gem_object* @to_msm_bo(%struct.drm_gem_object*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mmap_offset(%struct.drm_gem_object*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
