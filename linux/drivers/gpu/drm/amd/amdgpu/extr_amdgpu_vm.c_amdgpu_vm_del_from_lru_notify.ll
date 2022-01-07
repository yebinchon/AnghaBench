; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_vm.c_amdgpu_vm_del_from_lru_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_vm.c_amdgpu_vm_del_from_lru_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_buffer_object = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }
%struct.amdgpu_bo = type { %struct.TYPE_10__, %struct.amdgpu_vm_bo_base*, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.amdgpu_vm_bo_base = type { %struct.amdgpu_vm*, %struct.amdgpu_vm_bo_base* }
%struct.amdgpu_vm = type { i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64 }

@TTM_PL_FLAG_NO_EVICT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @amdgpu_vm_del_from_lru_notify(%struct.ttm_buffer_object* %0) #0 {
  %2 = alloca %struct.ttm_buffer_object*, align 8
  %3 = alloca %struct.amdgpu_bo*, align 8
  %4 = alloca %struct.amdgpu_vm_bo_base*, align 8
  %5 = alloca %struct.amdgpu_vm*, align 8
  store %struct.ttm_buffer_object* %0, %struct.ttm_buffer_object** %2, align 8
  %6 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %2, align 8
  %7 = call i32 @amdgpu_bo_is_amdgpu_bo(%struct.ttm_buffer_object* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %61

10:                                               ; preds = %1
  %11 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %2, align 8
  %12 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @TTM_PL_FLAG_NO_EVICT, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %10
  br label %61

19:                                               ; preds = %10
  %20 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %2, align 8
  %21 = call %struct.amdgpu_bo* @ttm_to_amdgpu_bo(%struct.ttm_buffer_object* %20)
  store %struct.amdgpu_bo* %21, %struct.amdgpu_bo** %3, align 8
  %22 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %3, align 8
  %23 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %19
  br label %61

27:                                               ; preds = %19
  %28 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %3, align 8
  %29 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %28, i32 0, i32 1
  %30 = load %struct.amdgpu_vm_bo_base*, %struct.amdgpu_vm_bo_base** %29, align 8
  store %struct.amdgpu_vm_bo_base* %30, %struct.amdgpu_vm_bo_base** %4, align 8
  br label %31

31:                                               ; preds = %57, %27
  %32 = load %struct.amdgpu_vm_bo_base*, %struct.amdgpu_vm_bo_base** %4, align 8
  %33 = icmp ne %struct.amdgpu_vm_bo_base* %32, null
  br i1 %33, label %34, label %61

34:                                               ; preds = %31
  %35 = load %struct.amdgpu_vm_bo_base*, %struct.amdgpu_vm_bo_base** %4, align 8
  %36 = getelementptr inbounds %struct.amdgpu_vm_bo_base, %struct.amdgpu_vm_bo_base* %35, i32 0, i32 0
  %37 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %36, align 8
  store %struct.amdgpu_vm* %37, %struct.amdgpu_vm** %5, align 8
  %38 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %3, align 8
  %39 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %5, align 8
  %44 = getelementptr inbounds %struct.amdgpu_vm, %struct.amdgpu_vm* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %42, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %34
  %54 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %5, align 8
  %55 = getelementptr inbounds %struct.amdgpu_vm, %struct.amdgpu_vm* %54, i32 0, i32 0
  store i32 0, i32* %55, align 8
  br label %56

56:                                               ; preds = %53, %34
  br label %57

57:                                               ; preds = %56
  %58 = load %struct.amdgpu_vm_bo_base*, %struct.amdgpu_vm_bo_base** %4, align 8
  %59 = getelementptr inbounds %struct.amdgpu_vm_bo_base, %struct.amdgpu_vm_bo_base* %58, i32 0, i32 1
  %60 = load %struct.amdgpu_vm_bo_base*, %struct.amdgpu_vm_bo_base** %59, align 8
  store %struct.amdgpu_vm_bo_base* %60, %struct.amdgpu_vm_bo_base** %4, align 8
  br label %31

61:                                               ; preds = %9, %18, %26, %31
  ret void
}

declare dso_local i32 @amdgpu_bo_is_amdgpu_bo(%struct.ttm_buffer_object*) #1

declare dso_local %struct.amdgpu_bo* @ttm_to_amdgpu_bo(%struct.ttm_buffer_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
