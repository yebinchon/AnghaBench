; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_object.c_amdgpu_bo_move_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_object.c_amdgpu_bo_move_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_buffer_object = type { %struct.ttm_mem_reg, i32 }
%struct.ttm_mem_reg = type { i32 }
%struct.amdgpu_device = type { i32 }
%struct.amdgpu_bo = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @amdgpu_bo_move_notify(%struct.ttm_buffer_object* %0, i32 %1, %struct.ttm_mem_reg* %2) #0 {
  %4 = alloca %struct.ttm_buffer_object*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ttm_mem_reg*, align 8
  %7 = alloca %struct.amdgpu_device*, align 8
  %8 = alloca %struct.amdgpu_bo*, align 8
  %9 = alloca %struct.ttm_mem_reg*, align 8
  store %struct.ttm_buffer_object* %0, %struct.ttm_buffer_object** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ttm_mem_reg* %2, %struct.ttm_mem_reg** %6, align 8
  %10 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %4, align 8
  %11 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.amdgpu_device* @amdgpu_ttm_adev(i32 %12)
  store %struct.amdgpu_device* %13, %struct.amdgpu_device** %7, align 8
  %14 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %4, align 8
  %15 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %14, i32 0, i32 0
  store %struct.ttm_mem_reg* %15, %struct.ttm_mem_reg** %9, align 8
  %16 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %4, align 8
  %17 = call i32 @amdgpu_bo_is_amdgpu_bo(%struct.ttm_buffer_object* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  br label %48

20:                                               ; preds = %3
  %21 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %4, align 8
  %22 = call %struct.amdgpu_bo* @ttm_to_amdgpu_bo(%struct.ttm_buffer_object* %21)
  store %struct.amdgpu_bo* %22, %struct.amdgpu_bo** %8, align 8
  %23 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %24 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %8, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @amdgpu_vm_bo_invalidate(%struct.amdgpu_device* %23, %struct.amdgpu_bo* %24, i32 %25)
  %27 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %8, align 8
  %28 = call i32 @amdgpu_bo_kunmap(%struct.amdgpu_bo* %27)
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %20
  %32 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %33 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %32, i32 0, i32 0
  %34 = call i32 @atomic64_inc(i32* %33)
  br label %35

35:                                               ; preds = %31, %20
  %36 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %6, align 8
  %37 = icmp ne %struct.ttm_mem_reg* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %35
  br label %48

39:                                               ; preds = %35
  %40 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %8, align 8
  %41 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %6, align 8
  %42 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %9, align 8
  %45 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @trace_amdgpu_bo_move(%struct.amdgpu_bo* %40, i32 %43, i32 %46)
  br label %48

48:                                               ; preds = %39, %38, %19
  ret void
}

declare dso_local %struct.amdgpu_device* @amdgpu_ttm_adev(i32) #1

declare dso_local i32 @amdgpu_bo_is_amdgpu_bo(%struct.ttm_buffer_object*) #1

declare dso_local %struct.amdgpu_bo* @ttm_to_amdgpu_bo(%struct.ttm_buffer_object*) #1

declare dso_local i32 @amdgpu_vm_bo_invalidate(%struct.amdgpu_device*, %struct.amdgpu_bo*, i32) #1

declare dso_local i32 @amdgpu_bo_kunmap(%struct.amdgpu_bo*) #1

declare dso_local i32 @atomic64_inc(i32*) #1

declare dso_local i32 @trace_amdgpu_bo_move(%struct.amdgpu_bo*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
