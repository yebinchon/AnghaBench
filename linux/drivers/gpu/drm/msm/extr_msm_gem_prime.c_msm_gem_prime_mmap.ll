; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_gem_prime.c_msm_gem_prime_mmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_gem_prime.c_msm_gem_prime_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_object = type { i32 }
%struct.vm_area_struct = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @msm_gem_prime_mmap(%struct.drm_gem_object* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_gem_object*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca i32, align 4
  store %struct.drm_gem_object* %0, %struct.drm_gem_object** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  %7 = load %struct.drm_gem_object*, %struct.drm_gem_object** %4, align 8
  %8 = load %struct.drm_gem_object*, %struct.drm_gem_object** %4, align 8
  %9 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %12 = call i32 @drm_gem_mmap_obj(%struct.drm_gem_object* %7, i32 %10, %struct.vm_area_struct* %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %3, align 4
  br label %23

17:                                               ; preds = %2
  %18 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %19 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %22 = call i32 @msm_gem_mmap_obj(i32 %20, %struct.vm_area_struct* %21)
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %17, %15
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local i32 @drm_gem_mmap_obj(%struct.drm_gem_object*, i32, %struct.vm_area_struct*) #1

declare dso_local i32 @msm_gem_mmap_obj(i32, %struct.vm_area_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
