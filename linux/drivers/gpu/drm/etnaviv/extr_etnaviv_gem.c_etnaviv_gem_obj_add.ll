; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_gem.c_etnaviv_gem_obj_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_gem.c_etnaviv_gem_obj_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.etnaviv_drm_private* }
%struct.etnaviv_drm_private = type { i32, i32 }
%struct.drm_gem_object = type { i32 }
%struct.etnaviv_gem_object = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @etnaviv_gem_obj_add(%struct.drm_device* %0, %struct.drm_gem_object* %1) #0 {
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.drm_gem_object*, align 8
  %5 = alloca %struct.etnaviv_drm_private*, align 8
  %6 = alloca %struct.etnaviv_gem_object*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store %struct.drm_gem_object* %1, %struct.drm_gem_object** %4, align 8
  %7 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %8 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %7, i32 0, i32 0
  %9 = load %struct.etnaviv_drm_private*, %struct.etnaviv_drm_private** %8, align 8
  store %struct.etnaviv_drm_private* %9, %struct.etnaviv_drm_private** %5, align 8
  %10 = load %struct.drm_gem_object*, %struct.drm_gem_object** %4, align 8
  %11 = call %struct.etnaviv_gem_object* @to_etnaviv_bo(%struct.drm_gem_object* %10)
  store %struct.etnaviv_gem_object* %11, %struct.etnaviv_gem_object** %6, align 8
  %12 = load %struct.etnaviv_drm_private*, %struct.etnaviv_drm_private** %5, align 8
  %13 = getelementptr inbounds %struct.etnaviv_drm_private, %struct.etnaviv_drm_private* %12, i32 0, i32 0
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.etnaviv_gem_object*, %struct.etnaviv_gem_object** %6, align 8
  %16 = getelementptr inbounds %struct.etnaviv_gem_object, %struct.etnaviv_gem_object* %15, i32 0, i32 0
  %17 = load %struct.etnaviv_drm_private*, %struct.etnaviv_drm_private** %5, align 8
  %18 = getelementptr inbounds %struct.etnaviv_drm_private, %struct.etnaviv_drm_private* %17, i32 0, i32 1
  %19 = call i32 @list_add_tail(i32* %16, i32* %18)
  %20 = load %struct.etnaviv_drm_private*, %struct.etnaviv_drm_private** %5, align 8
  %21 = getelementptr inbounds %struct.etnaviv_drm_private, %struct.etnaviv_drm_private* %20, i32 0, i32 0
  %22 = call i32 @mutex_unlock(i32* %21)
  ret void
}

declare dso_local %struct.etnaviv_gem_object* @to_etnaviv_bo(%struct.drm_gem_object*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
