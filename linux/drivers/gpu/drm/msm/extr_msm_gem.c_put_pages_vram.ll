; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_gem.c_put_pages_vram.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_gem.c_put_pages_vram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_object = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.msm_drm_private* }
%struct.msm_drm_private = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.msm_gem_object = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_gem_object*)* @put_pages_vram to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @put_pages_vram(%struct.drm_gem_object* %0) #0 {
  %2 = alloca %struct.drm_gem_object*, align 8
  %3 = alloca %struct.msm_gem_object*, align 8
  %4 = alloca %struct.msm_drm_private*, align 8
  store %struct.drm_gem_object* %0, %struct.drm_gem_object** %2, align 8
  %5 = load %struct.drm_gem_object*, %struct.drm_gem_object** %2, align 8
  %6 = call %struct.msm_gem_object* @to_msm_bo(%struct.drm_gem_object* %5)
  store %struct.msm_gem_object* %6, %struct.msm_gem_object** %3, align 8
  %7 = load %struct.drm_gem_object*, %struct.drm_gem_object** %2, align 8
  %8 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.msm_drm_private*, %struct.msm_drm_private** %10, align 8
  store %struct.msm_drm_private* %11, %struct.msm_drm_private** %4, align 8
  %12 = load %struct.msm_drm_private*, %struct.msm_drm_private** %4, align 8
  %13 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = call i32 @spin_lock(i32* %14)
  %16 = load %struct.msm_gem_object*, %struct.msm_gem_object** %3, align 8
  %17 = getelementptr inbounds %struct.msm_gem_object, %struct.msm_gem_object* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @drm_mm_remove_node(i32 %18)
  %20 = load %struct.msm_drm_private*, %struct.msm_drm_private** %4, align 8
  %21 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = call i32 @spin_unlock(i32* %22)
  %24 = load %struct.msm_gem_object*, %struct.msm_gem_object** %3, align 8
  %25 = getelementptr inbounds %struct.msm_gem_object, %struct.msm_gem_object* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @kvfree(i32 %26)
  ret void
}

declare dso_local %struct.msm_gem_object* @to_msm_bo(%struct.drm_gem_object*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @drm_mm_remove_node(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @kvfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
