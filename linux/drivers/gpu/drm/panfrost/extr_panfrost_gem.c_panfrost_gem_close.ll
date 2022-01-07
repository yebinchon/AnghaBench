; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panfrost/extr_panfrost_gem.c_panfrost_gem_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panfrost/extr_panfrost_gem.c_panfrost_gem_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_object = type { i32 }
%struct.drm_file = type { %struct.panfrost_file_priv* }
%struct.panfrost_file_priv = type { i32 }
%struct.panfrost_gem_object = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_gem_object*, %struct.drm_file*)* @panfrost_gem_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @panfrost_gem_close(%struct.drm_gem_object* %0, %struct.drm_file* %1) #0 {
  %3 = alloca %struct.drm_gem_object*, align 8
  %4 = alloca %struct.drm_file*, align 8
  %5 = alloca %struct.panfrost_gem_object*, align 8
  %6 = alloca %struct.panfrost_file_priv*, align 8
  store %struct.drm_gem_object* %0, %struct.drm_gem_object** %3, align 8
  store %struct.drm_file* %1, %struct.drm_file** %4, align 8
  %7 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %8 = call %struct.panfrost_gem_object* @to_panfrost_bo(%struct.drm_gem_object* %7)
  store %struct.panfrost_gem_object* %8, %struct.panfrost_gem_object** %5, align 8
  %9 = load %struct.drm_file*, %struct.drm_file** %4, align 8
  %10 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %9, i32 0, i32 0
  %11 = load %struct.panfrost_file_priv*, %struct.panfrost_file_priv** %10, align 8
  store %struct.panfrost_file_priv* %11, %struct.panfrost_file_priv** %6, align 8
  %12 = load %struct.panfrost_gem_object*, %struct.panfrost_gem_object** %5, align 8
  %13 = getelementptr inbounds %struct.panfrost_gem_object, %struct.panfrost_gem_object* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load %struct.panfrost_gem_object*, %struct.panfrost_gem_object** %5, align 8
  %18 = call i32 @panfrost_mmu_unmap(%struct.panfrost_gem_object* %17)
  br label %19

19:                                               ; preds = %16, %2
  %20 = load %struct.panfrost_file_priv*, %struct.panfrost_file_priv** %6, align 8
  %21 = getelementptr inbounds %struct.panfrost_file_priv, %struct.panfrost_file_priv* %20, i32 0, i32 0
  %22 = call i32 @spin_lock(i32* %21)
  %23 = load %struct.panfrost_gem_object*, %struct.panfrost_gem_object** %5, align 8
  %24 = getelementptr inbounds %struct.panfrost_gem_object, %struct.panfrost_gem_object* %23, i32 0, i32 0
  %25 = call i64 @drm_mm_node_allocated(i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %19
  %28 = load %struct.panfrost_gem_object*, %struct.panfrost_gem_object** %5, align 8
  %29 = getelementptr inbounds %struct.panfrost_gem_object, %struct.panfrost_gem_object* %28, i32 0, i32 0
  %30 = call i32 @drm_mm_remove_node(i32* %29)
  br label %31

31:                                               ; preds = %27, %19
  %32 = load %struct.panfrost_file_priv*, %struct.panfrost_file_priv** %6, align 8
  %33 = getelementptr inbounds %struct.panfrost_file_priv, %struct.panfrost_file_priv* %32, i32 0, i32 0
  %34 = call i32 @spin_unlock(i32* %33)
  ret void
}

declare dso_local %struct.panfrost_gem_object* @to_panfrost_bo(%struct.drm_gem_object*) #1

declare dso_local i32 @panfrost_mmu_unmap(%struct.panfrost_gem_object*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @drm_mm_node_allocated(i32*) #1

declare dso_local i32 @drm_mm_remove_node(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
