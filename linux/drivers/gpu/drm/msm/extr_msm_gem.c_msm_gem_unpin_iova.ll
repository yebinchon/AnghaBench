; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_gem.c_msm_gem_unpin_iova.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_gem.c_msm_gem_unpin_iova.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_object = type { i32 }
%struct.msm_gem_address_space = type { i32 }
%struct.msm_gem_object = type { i32 }
%struct.msm_gem_vma = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @msm_gem_unpin_iova(%struct.drm_gem_object* %0, %struct.msm_gem_address_space* %1) #0 {
  %3 = alloca %struct.drm_gem_object*, align 8
  %4 = alloca %struct.msm_gem_address_space*, align 8
  %5 = alloca %struct.msm_gem_object*, align 8
  %6 = alloca %struct.msm_gem_vma*, align 8
  store %struct.drm_gem_object* %0, %struct.drm_gem_object** %3, align 8
  store %struct.msm_gem_address_space* %1, %struct.msm_gem_address_space** %4, align 8
  %7 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %8 = call %struct.msm_gem_object* @to_msm_bo(%struct.drm_gem_object* %7)
  store %struct.msm_gem_object* %8, %struct.msm_gem_object** %5, align 8
  %9 = load %struct.msm_gem_object*, %struct.msm_gem_object** %5, align 8
  %10 = getelementptr inbounds %struct.msm_gem_object, %struct.msm_gem_object* %9, i32 0, i32 0
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %13 = load %struct.msm_gem_address_space*, %struct.msm_gem_address_space** %4, align 8
  %14 = call %struct.msm_gem_vma* @lookup_vma(%struct.drm_gem_object* %12, %struct.msm_gem_address_space* %13)
  store %struct.msm_gem_vma* %14, %struct.msm_gem_vma** %6, align 8
  %15 = load %struct.msm_gem_vma*, %struct.msm_gem_vma** %6, align 8
  %16 = icmp ne %struct.msm_gem_vma* %15, null
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @WARN_ON(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %2
  %22 = load %struct.msm_gem_address_space*, %struct.msm_gem_address_space** %4, align 8
  %23 = load %struct.msm_gem_vma*, %struct.msm_gem_vma** %6, align 8
  %24 = call i32 @msm_gem_unmap_vma(%struct.msm_gem_address_space* %22, %struct.msm_gem_vma* %23)
  br label %25

25:                                               ; preds = %21, %2
  %26 = load %struct.msm_gem_object*, %struct.msm_gem_object** %5, align 8
  %27 = getelementptr inbounds %struct.msm_gem_object, %struct.msm_gem_object* %26, i32 0, i32 0
  %28 = call i32 @mutex_unlock(i32* %27)
  ret void
}

declare dso_local %struct.msm_gem_object* @to_msm_bo(%struct.drm_gem_object*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.msm_gem_vma* @lookup_vma(%struct.drm_gem_object*, %struct.msm_gem_address_space*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @msm_gem_unmap_vma(%struct.msm_gem_address_space*, %struct.msm_gem_vma*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
