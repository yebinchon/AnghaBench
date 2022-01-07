; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_gem.c_omap_gem_fault.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_gem.c_omap_gem_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_fault = type { %struct.vm_area_struct* }
%struct.vm_area_struct = type { %struct.drm_gem_object* }
%struct.drm_gem_object = type { i32 }
%struct.omap_gem_object = type { i32, i32 }

@OMAP_BO_TILED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @omap_gem_fault(%struct.vm_fault* %0) #0 {
  %2 = alloca %struct.vm_fault*, align 8
  %3 = alloca %struct.vm_area_struct*, align 8
  %4 = alloca %struct.drm_gem_object*, align 8
  %5 = alloca %struct.omap_gem_object*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.vm_fault* %0, %struct.vm_fault** %2, align 8
  %8 = load %struct.vm_fault*, %struct.vm_fault** %2, align 8
  %9 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %8, i32 0, i32 0
  %10 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  store %struct.vm_area_struct* %10, %struct.vm_area_struct** %3, align 8
  %11 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %12 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %11, i32 0, i32 0
  %13 = load %struct.drm_gem_object*, %struct.drm_gem_object** %12, align 8
  store %struct.drm_gem_object* %13, %struct.drm_gem_object** %4, align 8
  %14 = load %struct.drm_gem_object*, %struct.drm_gem_object** %4, align 8
  %15 = call %struct.omap_gem_object* @to_omap_bo(%struct.drm_gem_object* %14)
  store %struct.omap_gem_object* %15, %struct.omap_gem_object** %5, align 8
  %16 = load %struct.omap_gem_object*, %struct.omap_gem_object** %5, align 8
  %17 = getelementptr inbounds %struct.omap_gem_object, %struct.omap_gem_object* %16, i32 0, i32 1
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.drm_gem_object*, %struct.drm_gem_object** %4, align 8
  %20 = call i32 @omap_gem_attach_pages(%struct.drm_gem_object* %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @vmf_error(i32 %24)
  store i32 %25, i32* %7, align 4
  br label %44

26:                                               ; preds = %1
  %27 = load %struct.omap_gem_object*, %struct.omap_gem_object** %5, align 8
  %28 = getelementptr inbounds %struct.omap_gem_object, %struct.omap_gem_object* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @OMAP_BO_TILED, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %26
  %34 = load %struct.drm_gem_object*, %struct.drm_gem_object** %4, align 8
  %35 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %36 = load %struct.vm_fault*, %struct.vm_fault** %2, align 8
  %37 = call i32 @omap_gem_fault_2d(%struct.drm_gem_object* %34, %struct.vm_area_struct* %35, %struct.vm_fault* %36)
  store i32 %37, i32* %7, align 4
  br label %43

38:                                               ; preds = %26
  %39 = load %struct.drm_gem_object*, %struct.drm_gem_object** %4, align 8
  %40 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %41 = load %struct.vm_fault*, %struct.vm_fault** %2, align 8
  %42 = call i32 @omap_gem_fault_1d(%struct.drm_gem_object* %39, %struct.vm_area_struct* %40, %struct.vm_fault* %41)
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %38, %33
  br label %44

44:                                               ; preds = %43, %23
  %45 = load %struct.omap_gem_object*, %struct.omap_gem_object** %5, align 8
  %46 = getelementptr inbounds %struct.omap_gem_object, %struct.omap_gem_object* %45, i32 0, i32 1
  %47 = call i32 @mutex_unlock(i32* %46)
  %48 = load i32, i32* %7, align 4
  ret i32 %48
}

declare dso_local %struct.omap_gem_object* @to_omap_bo(%struct.drm_gem_object*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @omap_gem_attach_pages(%struct.drm_gem_object*) #1

declare dso_local i32 @vmf_error(i32) #1

declare dso_local i32 @omap_gem_fault_2d(%struct.drm_gem_object*, %struct.vm_area_struct*, %struct.vm_fault*) #1

declare dso_local i32 @omap_gem_fault_1d(%struct.drm_gem_object*, %struct.vm_area_struct*, %struct.vm_fault*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
