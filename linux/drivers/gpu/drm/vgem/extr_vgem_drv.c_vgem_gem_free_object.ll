; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vgem/extr_vgem_drv.c_vgem_gem_free_object.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vgem/extr_vgem_drv.c_vgem_gem_free_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_object = type { i64 }
%struct.drm_vgem_gem_object = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_gem_object*)* @vgem_gem_free_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vgem_gem_free_object(%struct.drm_gem_object* %0) #0 {
  %2 = alloca %struct.drm_gem_object*, align 8
  %3 = alloca %struct.drm_vgem_gem_object*, align 8
  store %struct.drm_gem_object* %0, %struct.drm_gem_object** %2, align 8
  %4 = load %struct.drm_gem_object*, %struct.drm_gem_object** %2, align 8
  %5 = call %struct.drm_vgem_gem_object* @to_vgem_bo(%struct.drm_gem_object* %4)
  store %struct.drm_vgem_gem_object* %5, %struct.drm_vgem_gem_object** %3, align 8
  %6 = load %struct.drm_vgem_gem_object*, %struct.drm_vgem_gem_object** %3, align 8
  %7 = getelementptr inbounds %struct.drm_vgem_gem_object, %struct.drm_vgem_gem_object* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @kvfree(i32 %8)
  %10 = load %struct.drm_vgem_gem_object*, %struct.drm_vgem_gem_object** %3, align 8
  %11 = getelementptr inbounds %struct.drm_vgem_gem_object, %struct.drm_vgem_gem_object* %10, i32 0, i32 1
  %12 = call i32 @mutex_destroy(i32* %11)
  %13 = load %struct.drm_gem_object*, %struct.drm_gem_object** %2, align 8
  %14 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %1
  %18 = load %struct.drm_gem_object*, %struct.drm_gem_object** %2, align 8
  %19 = load %struct.drm_vgem_gem_object*, %struct.drm_vgem_gem_object** %3, align 8
  %20 = getelementptr inbounds %struct.drm_vgem_gem_object, %struct.drm_vgem_gem_object* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @drm_prime_gem_destroy(%struct.drm_gem_object* %18, i32 %21)
  br label %23

23:                                               ; preds = %17, %1
  %24 = load %struct.drm_gem_object*, %struct.drm_gem_object** %2, align 8
  %25 = call i32 @drm_gem_object_release(%struct.drm_gem_object* %24)
  %26 = load %struct.drm_vgem_gem_object*, %struct.drm_vgem_gem_object** %3, align 8
  %27 = call i32 @kfree(%struct.drm_vgem_gem_object* %26)
  ret void
}

declare dso_local %struct.drm_vgem_gem_object* @to_vgem_bo(%struct.drm_gem_object*) #1

declare dso_local i32 @kvfree(i32) #1

declare dso_local i32 @mutex_destroy(i32*) #1

declare dso_local i32 @drm_prime_gem_destroy(%struct.drm_gem_object*, i32) #1

declare dso_local i32 @drm_gem_object_release(%struct.drm_gem_object*) #1

declare dso_local i32 @kfree(%struct.drm_vgem_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
