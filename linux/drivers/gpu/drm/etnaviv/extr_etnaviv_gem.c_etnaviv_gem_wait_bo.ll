; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_gem.c_etnaviv_gem_wait_bo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_gem.c_etnaviv_gem_wait_bo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.etnaviv_gpu = type { i32 }
%struct.drm_gem_object = type { i32 }
%struct.timespec = type { i32 }
%struct.etnaviv_gem_object = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @etnaviv_gem_wait_bo(%struct.etnaviv_gpu* %0, %struct.drm_gem_object* %1, %struct.timespec* %2) #0 {
  %4 = alloca %struct.etnaviv_gpu*, align 8
  %5 = alloca %struct.drm_gem_object*, align 8
  %6 = alloca %struct.timespec*, align 8
  %7 = alloca %struct.etnaviv_gem_object*, align 8
  store %struct.etnaviv_gpu* %0, %struct.etnaviv_gpu** %4, align 8
  store %struct.drm_gem_object* %1, %struct.drm_gem_object** %5, align 8
  store %struct.timespec* %2, %struct.timespec** %6, align 8
  %8 = load %struct.drm_gem_object*, %struct.drm_gem_object** %5, align 8
  %9 = call %struct.etnaviv_gem_object* @to_etnaviv_bo(%struct.drm_gem_object* %8)
  store %struct.etnaviv_gem_object* %9, %struct.etnaviv_gem_object** %7, align 8
  %10 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %4, align 8
  %11 = load %struct.etnaviv_gem_object*, %struct.etnaviv_gem_object** %7, align 8
  %12 = load %struct.timespec*, %struct.timespec** %6, align 8
  %13 = call i32 @etnaviv_gpu_wait_obj_inactive(%struct.etnaviv_gpu* %10, %struct.etnaviv_gem_object* %11, %struct.timespec* %12)
  ret i32 %13
}

declare dso_local %struct.etnaviv_gem_object* @to_etnaviv_bo(%struct.drm_gem_object*) #1

declare dso_local i32 @etnaviv_gpu_wait_obj_inactive(%struct.etnaviv_gpu*, %struct.etnaviv_gem_object*, %struct.timespec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
