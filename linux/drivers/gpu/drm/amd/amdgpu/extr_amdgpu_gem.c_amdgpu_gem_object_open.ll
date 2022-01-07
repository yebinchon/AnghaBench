; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_gem.c_amdgpu_gem_object_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_gem.c_amdgpu_gem_object_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.mm_struct* }
%struct.mm_struct = type { i32 }
%struct.drm_gem_object = type { i32 }
%struct.drm_file = type { %struct.amdgpu_fpriv* }
%struct.amdgpu_fpriv = type { %struct.amdgpu_vm }
%struct.amdgpu_vm = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64 }
%struct.amdgpu_bo = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__, i32, i32 }
%struct.TYPE_9__ = type { i64 }
%struct.amdgpu_device = type { i32 }
%struct.amdgpu_bo_va = type { i32 }

@current = common dso_local global %struct.TYPE_16__* null, align 8
@EPERM = common dso_local global i32 0, align 4
@AMDGPU_GEM_CREATE_VM_ALWAYS_VALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_gem_object_open(%struct.drm_gem_object* %0, %struct.drm_file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_gem_object*, align 8
  %5 = alloca %struct.drm_file*, align 8
  %6 = alloca %struct.amdgpu_bo*, align 8
  %7 = alloca %struct.amdgpu_device*, align 8
  %8 = alloca %struct.amdgpu_fpriv*, align 8
  %9 = alloca %struct.amdgpu_vm*, align 8
  %10 = alloca %struct.amdgpu_bo_va*, align 8
  %11 = alloca %struct.mm_struct*, align 8
  %12 = alloca i32, align 4
  store %struct.drm_gem_object* %0, %struct.drm_gem_object** %4, align 8
  store %struct.drm_file* %1, %struct.drm_file** %5, align 8
  %13 = load %struct.drm_gem_object*, %struct.drm_gem_object** %4, align 8
  %14 = call %struct.amdgpu_bo* @gem_to_amdgpu_bo(%struct.drm_gem_object* %13)
  store %struct.amdgpu_bo* %14, %struct.amdgpu_bo** %6, align 8
  %15 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %6, align 8
  %16 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.amdgpu_device* @amdgpu_ttm_adev(i32 %18)
  store %struct.amdgpu_device* %19, %struct.amdgpu_device** %7, align 8
  %20 = load %struct.drm_file*, %struct.drm_file** %5, align 8
  %21 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %20, i32 0, i32 0
  %22 = load %struct.amdgpu_fpriv*, %struct.amdgpu_fpriv** %21, align 8
  store %struct.amdgpu_fpriv* %22, %struct.amdgpu_fpriv** %8, align 8
  %23 = load %struct.amdgpu_fpriv*, %struct.amdgpu_fpriv** %8, align 8
  %24 = getelementptr inbounds %struct.amdgpu_fpriv, %struct.amdgpu_fpriv* %23, i32 0, i32 0
  store %struct.amdgpu_vm* %24, %struct.amdgpu_vm** %9, align 8
  %25 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %6, align 8
  %26 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call %struct.mm_struct* @amdgpu_ttm_tt_get_usermm(i32 %28)
  store %struct.mm_struct* %29, %struct.mm_struct** %11, align 8
  %30 = load %struct.mm_struct*, %struct.mm_struct** %11, align 8
  %31 = icmp ne %struct.mm_struct* %30, null
  br i1 %31, label %32, label %41

32:                                               ; preds = %2
  %33 = load %struct.mm_struct*, %struct.mm_struct** %11, align 8
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** @current, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 0
  %36 = load %struct.mm_struct*, %struct.mm_struct** %35, align 8
  %37 = icmp ne %struct.mm_struct* %33, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load i32, i32* @EPERM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %93

41:                                               ; preds = %32, %2
  %42 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %6, align 8
  %43 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @AMDGPU_GEM_CREATE_VM_ALWAYS_VALID, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %67

48:                                               ; preds = %41
  %49 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %6, align 8
  %50 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %9, align 8
  %55 = getelementptr inbounds %struct.amdgpu_vm, %struct.amdgpu_vm* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %53, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %48
  %65 = load i32, i32* @EPERM, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  br label %93

67:                                               ; preds = %48, %41
  %68 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %6, align 8
  %69 = call i32 @amdgpu_bo_reserve(%struct.amdgpu_bo* %68, i32 0)
  store i32 %69, i32* %12, align 4
  %70 = load i32, i32* %12, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %67
  %73 = load i32, i32* %12, align 4
  store i32 %73, i32* %3, align 4
  br label %93

74:                                               ; preds = %67
  %75 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %9, align 8
  %76 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %6, align 8
  %77 = call %struct.amdgpu_bo_va* @amdgpu_vm_bo_find(%struct.amdgpu_vm* %75, %struct.amdgpu_bo* %76)
  store %struct.amdgpu_bo_va* %77, %struct.amdgpu_bo_va** %10, align 8
  %78 = load %struct.amdgpu_bo_va*, %struct.amdgpu_bo_va** %10, align 8
  %79 = icmp ne %struct.amdgpu_bo_va* %78, null
  br i1 %79, label %85, label %80

80:                                               ; preds = %74
  %81 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %82 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %9, align 8
  %83 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %6, align 8
  %84 = call %struct.amdgpu_bo_va* @amdgpu_vm_bo_add(%struct.amdgpu_device* %81, %struct.amdgpu_vm* %82, %struct.amdgpu_bo* %83)
  store %struct.amdgpu_bo_va* %84, %struct.amdgpu_bo_va** %10, align 8
  br label %90

85:                                               ; preds = %74
  %86 = load %struct.amdgpu_bo_va*, %struct.amdgpu_bo_va** %10, align 8
  %87 = getelementptr inbounds %struct.amdgpu_bo_va, %struct.amdgpu_bo_va* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %87, align 4
  br label %90

90:                                               ; preds = %85, %80
  %91 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %6, align 8
  %92 = call i32 @amdgpu_bo_unreserve(%struct.amdgpu_bo* %91)
  store i32 0, i32* %3, align 4
  br label %93

93:                                               ; preds = %90, %72, %64, %38
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local %struct.amdgpu_bo* @gem_to_amdgpu_bo(%struct.drm_gem_object*) #1

declare dso_local %struct.amdgpu_device* @amdgpu_ttm_adev(i32) #1

declare dso_local %struct.mm_struct* @amdgpu_ttm_tt_get_usermm(i32) #1

declare dso_local i32 @amdgpu_bo_reserve(%struct.amdgpu_bo*, i32) #1

declare dso_local %struct.amdgpu_bo_va* @amdgpu_vm_bo_find(%struct.amdgpu_vm*, %struct.amdgpu_bo*) #1

declare dso_local %struct.amdgpu_bo_va* @amdgpu_vm_bo_add(%struct.amdgpu_device*, %struct.amdgpu_vm*, %struct.amdgpu_bo*) #1

declare dso_local i32 @amdgpu_bo_unreserve(%struct.amdgpu_bo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
