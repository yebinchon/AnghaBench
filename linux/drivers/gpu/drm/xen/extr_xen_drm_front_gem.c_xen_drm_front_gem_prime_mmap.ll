; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/xen/extr_xen_drm_front_gem.c_xen_drm_front_gem_prime_mmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/xen/extr_xen_drm_front_gem.c_xen_drm_front_gem_prime_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_object = type { i32 }
%struct.vm_area_struct = type { i32 }
%struct.xen_gem_object = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xen_drm_front_gem_prime_mmap(%struct.drm_gem_object* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_gem_object*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca %struct.xen_gem_object*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_gem_object* %0, %struct.drm_gem_object** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  %8 = load %struct.drm_gem_object*, %struct.drm_gem_object** %4, align 8
  %9 = load %struct.drm_gem_object*, %struct.drm_gem_object** %4, align 8
  %10 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %13 = call i32 @drm_gem_mmap_obj(%struct.drm_gem_object* %8, i32 %11, %struct.vm_area_struct* %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %7, align 4
  store i32 %17, i32* %3, align 4
  br label %24

18:                                               ; preds = %2
  %19 = load %struct.drm_gem_object*, %struct.drm_gem_object** %4, align 8
  %20 = call %struct.xen_gem_object* @to_xen_gem_obj(%struct.drm_gem_object* %19)
  store %struct.xen_gem_object* %20, %struct.xen_gem_object** %6, align 8
  %21 = load %struct.xen_gem_object*, %struct.xen_gem_object** %6, align 8
  %22 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %23 = call i32 @gem_mmap_obj(%struct.xen_gem_object* %21, %struct.vm_area_struct* %22)
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %18, %16
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i32 @drm_gem_mmap_obj(%struct.drm_gem_object*, i32, %struct.vm_area_struct*) #1

declare dso_local %struct.xen_gem_object* @to_xen_gem_obj(%struct.drm_gem_object*) #1

declare dso_local i32 @gem_mmap_obj(%struct.xen_gem_object*, %struct.vm_area_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
