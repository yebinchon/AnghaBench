; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_object.c_amdgpu_bo_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_object.c_amdgpu_bo_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_buffer_object = type { i32 }
%struct.amdgpu_device = type { i32 }
%struct.amdgpu_bo = type { i64, %struct.amdgpu_bo*, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ttm_buffer_object*)* @amdgpu_bo_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amdgpu_bo_destroy(%struct.ttm_buffer_object* %0) #0 {
  %2 = alloca %struct.ttm_buffer_object*, align 8
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca %struct.amdgpu_bo*, align 8
  store %struct.ttm_buffer_object* %0, %struct.ttm_buffer_object** %2, align 8
  %5 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %2, align 8
  %6 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.amdgpu_device* @amdgpu_ttm_adev(i32 %7)
  store %struct.amdgpu_device* %8, %struct.amdgpu_device** %3, align 8
  %9 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %2, align 8
  %10 = call %struct.amdgpu_bo* @ttm_to_amdgpu_bo(%struct.ttm_buffer_object* %9)
  store %struct.amdgpu_bo* %10, %struct.amdgpu_bo** %4, align 8
  %11 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %4, align 8
  %12 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %4, align 8
  %17 = call i32 @amdgpu_bo_subtract_pin_size(%struct.amdgpu_bo* %16)
  br label %18

18:                                               ; preds = %15, %1
  %19 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %4, align 8
  %20 = call i32 @amdgpu_bo_kunmap(%struct.amdgpu_bo* %19)
  %21 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %4, align 8
  %22 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %18
  %28 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %4, align 8
  %29 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %28, i32 0, i32 4
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %4, align 8
  %32 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %31, i32 0, i32 4
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @drm_prime_gem_destroy(%struct.TYPE_5__* %30, i32 %34)
  br label %36

36:                                               ; preds = %27, %18
  %37 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %4, align 8
  %38 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %37, i32 0, i32 4
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = call i32 @drm_gem_object_release(%struct.TYPE_5__* %39)
  %41 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %4, align 8
  %42 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %41, i32 0, i32 3
  %43 = call i32 @list_empty(i32* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %55, label %45

45:                                               ; preds = %36
  %46 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %47 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %46, i32 0, i32 0
  %48 = call i32 @mutex_lock(i32* %47)
  %49 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %4, align 8
  %50 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %49, i32 0, i32 3
  %51 = call i32 @list_del_init(i32* %50)
  %52 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %53 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %52, i32 0, i32 0
  %54 = call i32 @mutex_unlock(i32* %53)
  br label %55

55:                                               ; preds = %45, %36
  %56 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %4, align 8
  %57 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %56, i32 0, i32 2
  %58 = call i32 @amdgpu_bo_unref(i32* %57)
  %59 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %4, align 8
  %60 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %59, i32 0, i32 1
  %61 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %60, align 8
  %62 = call i32 @kfree(%struct.amdgpu_bo* %61)
  %63 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %4, align 8
  %64 = call i32 @kfree(%struct.amdgpu_bo* %63)
  ret void
}

declare dso_local %struct.amdgpu_device* @amdgpu_ttm_adev(i32) #1

declare dso_local %struct.amdgpu_bo* @ttm_to_amdgpu_bo(%struct.ttm_buffer_object*) #1

declare dso_local i32 @amdgpu_bo_subtract_pin_size(%struct.amdgpu_bo*) #1

declare dso_local i32 @amdgpu_bo_kunmap(%struct.amdgpu_bo*) #1

declare dso_local i32 @drm_prime_gem_destroy(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @drm_gem_object_release(%struct.TYPE_5__*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @amdgpu_bo_unref(i32*) #1

declare dso_local i32 @kfree(%struct.amdgpu_bo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
