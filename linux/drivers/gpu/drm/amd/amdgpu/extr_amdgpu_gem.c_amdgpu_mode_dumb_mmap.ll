; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_gem.c_amdgpu_mode_dumb_mmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_gem.c_amdgpu_mode_dumb_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_file = type { i32 }
%struct.drm_device = type { i32 }
%struct.drm_gem_object = type { i32 }
%struct.amdgpu_bo = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@AMDGPU_GEM_CREATE_NO_CPU_ACCESS = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_mode_dumb_mmap(%struct.drm_file* %0, %struct.drm_device* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_file*, align 8
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.drm_gem_object*, align 8
  %11 = alloca %struct.amdgpu_bo*, align 8
  store %struct.drm_file* %0, %struct.drm_file** %6, align 8
  store %struct.drm_device* %1, %struct.drm_device** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %12 = load %struct.drm_file*, %struct.drm_file** %6, align 8
  %13 = load i32, i32* %8, align 4
  %14 = call %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_file* %12, i32 %13)
  store %struct.drm_gem_object* %14, %struct.drm_gem_object** %10, align 8
  %15 = load %struct.drm_gem_object*, %struct.drm_gem_object** %10, align 8
  %16 = icmp eq %struct.drm_gem_object* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load i32, i32* @ENOENT, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %47

20:                                               ; preds = %4
  %21 = load %struct.drm_gem_object*, %struct.drm_gem_object** %10, align 8
  %22 = call %struct.amdgpu_bo* @gem_to_amdgpu_bo(%struct.drm_gem_object* %21)
  store %struct.amdgpu_bo* %22, %struct.amdgpu_bo** %11, align 8
  %23 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %11, align 8
  %24 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @amdgpu_ttm_tt_get_usermm(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %20
  %30 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %11, align 8
  %31 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @AMDGPU_GEM_CREATE_NO_CPU_ACCESS, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %29, %20
  %37 = load %struct.drm_gem_object*, %struct.drm_gem_object** %10, align 8
  %38 = call i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object* %37)
  %39 = load i32, i32* @EPERM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %5, align 4
  br label %47

41:                                               ; preds = %29
  %42 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %11, align 8
  %43 = call i32 @amdgpu_bo_mmap_offset(%struct.amdgpu_bo* %42)
  %44 = load i32*, i32** %9, align 8
  store i32 %43, i32* %44, align 4
  %45 = load %struct.drm_gem_object*, %struct.drm_gem_object** %10, align 8
  %46 = call i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object* %45)
  store i32 0, i32* %5, align 4
  br label %47

47:                                               ; preds = %41, %36, %17
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

declare dso_local %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_file*, i32) #1

declare dso_local %struct.amdgpu_bo* @gem_to_amdgpu_bo(%struct.drm_gem_object*) #1

declare dso_local i64 @amdgpu_ttm_tt_get_usermm(i32) #1

declare dso_local i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object*) #1

declare dso_local i32 @amdgpu_bo_mmap_offset(%struct.amdgpu_bo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
