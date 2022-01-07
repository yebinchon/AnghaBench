; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_gem.c_msm_gem_iova.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_gem.c_msm_gem_iova.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_object = type { i32 }
%struct.msm_gem_address_space = type { i32 }
%struct.msm_gem_object = type { i32 }
%struct.msm_gem_vma = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @msm_gem_iova(%struct.drm_gem_object* %0, %struct.msm_gem_address_space* %1) #0 {
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
  %15 = load %struct.msm_gem_object*, %struct.msm_gem_object** %5, align 8
  %16 = getelementptr inbounds %struct.msm_gem_object, %struct.msm_gem_object* %15, i32 0, i32 0
  %17 = call i32 @mutex_unlock(i32* %16)
  %18 = load %struct.msm_gem_vma*, %struct.msm_gem_vma** %6, align 8
  %19 = icmp ne %struct.msm_gem_vma* %18, null
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i32 @WARN_ON(i32 %21)
  %23 = load %struct.msm_gem_vma*, %struct.msm_gem_vma** %6, align 8
  %24 = icmp ne %struct.msm_gem_vma* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %2
  %26 = load %struct.msm_gem_vma*, %struct.msm_gem_vma** %6, align 8
  %27 = getelementptr inbounds %struct.msm_gem_vma, %struct.msm_gem_vma* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  br label %30

29:                                               ; preds = %2
  br label %30

30:                                               ; preds = %29, %25
  %31 = phi i32 [ %28, %25 ], [ 0, %29 ]
  ret i32 %31
}

declare dso_local %struct.msm_gem_object* @to_msm_bo(%struct.drm_gem_object*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.msm_gem_vma* @lookup_vma(%struct.drm_gem_object*, %struct.msm_gem_address_space*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
