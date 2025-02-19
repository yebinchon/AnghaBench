; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_gem.c_msm_gem_kernel_put.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_gem.c_msm_gem_kernel_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_object = type { i32 }
%struct.msm_gem_address_space = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @msm_gem_kernel_put(%struct.drm_gem_object* %0, %struct.msm_gem_address_space* %1, i32 %2) #0 {
  %4 = alloca %struct.drm_gem_object*, align 8
  %5 = alloca %struct.msm_gem_address_space*, align 8
  %6 = alloca i32, align 4
  store %struct.drm_gem_object* %0, %struct.drm_gem_object** %4, align 8
  store %struct.msm_gem_address_space* %1, %struct.msm_gem_address_space** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.drm_gem_object*, %struct.drm_gem_object** %4, align 8
  %8 = call i64 @IS_ERR_OR_NULL(%struct.drm_gem_object* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  br label %25

11:                                               ; preds = %3
  %12 = load %struct.drm_gem_object*, %struct.drm_gem_object** %4, align 8
  %13 = call i32 @msm_gem_put_vaddr(%struct.drm_gem_object* %12)
  %14 = load %struct.drm_gem_object*, %struct.drm_gem_object** %4, align 8
  %15 = load %struct.msm_gem_address_space*, %struct.msm_gem_address_space** %5, align 8
  %16 = call i32 @msm_gem_unpin_iova(%struct.drm_gem_object* %14, %struct.msm_gem_address_space* %15)
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %11
  %20 = load %struct.drm_gem_object*, %struct.drm_gem_object** %4, align 8
  %21 = call i32 @drm_gem_object_put(%struct.drm_gem_object* %20)
  br label %25

22:                                               ; preds = %11
  %23 = load %struct.drm_gem_object*, %struct.drm_gem_object** %4, align 8
  %24 = call i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object* %23)
  br label %25

25:                                               ; preds = %10, %22, %19
  ret void
}

declare dso_local i64 @IS_ERR_OR_NULL(%struct.drm_gem_object*) #1

declare dso_local i32 @msm_gem_put_vaddr(%struct.drm_gem_object*) #1

declare dso_local i32 @msm_gem_unpin_iova(%struct.drm_gem_object*, %struct.msm_gem_address_space*) #1

declare dso_local i32 @drm_gem_object_put(%struct.drm_gem_object*) #1

declare dso_local i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
