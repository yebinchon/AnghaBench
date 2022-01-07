; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_vm.c_amdgpu_vm_bo_param.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_vm.c_amdgpu_vm_bo_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }
%struct.amdgpu_vm = type { %struct.TYPE_10__, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.amdgpu_bo_param = type { i32, i32, i32, i32, i32, i32 }

@AMDGPU_GPU_PAGE_SIZE = common dso_local global i32 0, align 4
@AMDGPU_GEM_DOMAIN_VRAM = common dso_local global i32 0, align 4
@AMDGPU_GEM_CREATE_VRAM_CONTIGUOUS = common dso_local global i32 0, align 4
@AMDGPU_GEM_CREATE_CPU_GTT_USWC = common dso_local global i32 0, align 4
@AMDGPU_GEM_CREATE_CPU_ACCESS_REQUIRED = common dso_local global i32 0, align 4
@AMDGPU_GEM_CREATE_SHADOW = common dso_local global i32 0, align 4
@ttm_bo_type_kernel = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, %struct.amdgpu_vm*, i32, %struct.amdgpu_bo_param*)* @amdgpu_vm_bo_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amdgpu_vm_bo_param(%struct.amdgpu_device* %0, %struct.amdgpu_vm* %1, i32 %2, %struct.amdgpu_bo_param* %3) #0 {
  %5 = alloca %struct.amdgpu_device*, align 8
  %6 = alloca %struct.amdgpu_vm*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.amdgpu_bo_param*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %5, align 8
  store %struct.amdgpu_vm* %1, %struct.amdgpu_vm** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.amdgpu_bo_param* %3, %struct.amdgpu_bo_param** %8, align 8
  %9 = load %struct.amdgpu_bo_param*, %struct.amdgpu_bo_param** %8, align 8
  %10 = call i32 @memset(%struct.amdgpu_bo_param* %9, i32 0, i32 24)
  %11 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @amdgpu_vm_bo_size(%struct.amdgpu_device* %11, i32 %12)
  %14 = load %struct.amdgpu_bo_param*, %struct.amdgpu_bo_param** %8, align 8
  %15 = getelementptr inbounds %struct.amdgpu_bo_param, %struct.amdgpu_bo_param* %14, i32 0, i32 5
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* @AMDGPU_GPU_PAGE_SIZE, align 4
  %17 = load %struct.amdgpu_bo_param*, %struct.amdgpu_bo_param** %8, align 8
  %18 = getelementptr inbounds %struct.amdgpu_bo_param, %struct.amdgpu_bo_param* %17, i32 0, i32 4
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* @AMDGPU_GEM_DOMAIN_VRAM, align 4
  %20 = load %struct.amdgpu_bo_param*, %struct.amdgpu_bo_param** %8, align 8
  %21 = getelementptr inbounds %struct.amdgpu_bo_param, %struct.amdgpu_bo_param* %20, i32 0, i32 3
  store i32 %19, i32* %21, align 4
  %22 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %23 = load %struct.amdgpu_bo_param*, %struct.amdgpu_bo_param** %8, align 8
  %24 = getelementptr inbounds %struct.amdgpu_bo_param, %struct.amdgpu_bo_param* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @amdgpu_bo_get_preferred_pin_domain(%struct.amdgpu_device* %22, i32 %25)
  %27 = load %struct.amdgpu_bo_param*, %struct.amdgpu_bo_param** %8, align 8
  %28 = getelementptr inbounds %struct.amdgpu_bo_param, %struct.amdgpu_bo_param* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @AMDGPU_GEM_CREATE_VRAM_CONTIGUOUS, align 4
  %30 = load i32, i32* @AMDGPU_GEM_CREATE_CPU_GTT_USWC, align 4
  %31 = or i32 %29, %30
  %32 = load %struct.amdgpu_bo_param*, %struct.amdgpu_bo_param** %8, align 8
  %33 = getelementptr inbounds %struct.amdgpu_bo_param, %struct.amdgpu_bo_param* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %6, align 8
  %35 = getelementptr inbounds %struct.amdgpu_vm, %struct.amdgpu_vm* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %4
  %39 = load i32, i32* @AMDGPU_GEM_CREATE_CPU_ACCESS_REQUIRED, align 4
  %40 = load %struct.amdgpu_bo_param*, %struct.amdgpu_bo_param** %8, align 8
  %41 = getelementptr inbounds %struct.amdgpu_bo_param, %struct.amdgpu_bo_param* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 4
  br label %67

44:                                               ; preds = %4
  %45 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %6, align 8
  %46 = getelementptr inbounds %struct.amdgpu_vm, %struct.amdgpu_vm* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = icmp ne %struct.TYPE_8__* %49, null
  br i1 %50, label %51, label %60

51:                                               ; preds = %44
  %52 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %6, align 8
  %53 = getelementptr inbounds %struct.amdgpu_vm, %struct.amdgpu_vm* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %51, %44
  %61 = load i32, i32* @AMDGPU_GEM_CREATE_SHADOW, align 4
  %62 = load %struct.amdgpu_bo_param*, %struct.amdgpu_bo_param** %8, align 8
  %63 = getelementptr inbounds %struct.amdgpu_bo_param, %struct.amdgpu_bo_param* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 4
  br label %66

66:                                               ; preds = %60, %51
  br label %67

67:                                               ; preds = %66, %38
  %68 = load i32, i32* @ttm_bo_type_kernel, align 4
  %69 = load %struct.amdgpu_bo_param*, %struct.amdgpu_bo_param** %8, align 8
  %70 = getelementptr inbounds %struct.amdgpu_bo_param, %struct.amdgpu_bo_param* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 4
  %71 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %6, align 8
  %72 = getelementptr inbounds %struct.amdgpu_vm, %struct.amdgpu_vm* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %74, align 8
  %76 = icmp ne %struct.TYPE_8__* %75, null
  br i1 %76, label %77, label %89

77:                                               ; preds = %67
  %78 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %6, align 8
  %79 = getelementptr inbounds %struct.amdgpu_vm, %struct.amdgpu_vm* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.amdgpu_bo_param*, %struct.amdgpu_bo_param** %8, align 8
  %88 = getelementptr inbounds %struct.amdgpu_bo_param, %struct.amdgpu_bo_param* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 4
  br label %89

89:                                               ; preds = %77, %67
  ret void
}

declare dso_local i32 @memset(%struct.amdgpu_bo_param*, i32, i32) #1

declare dso_local i32 @amdgpu_vm_bo_size(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @amdgpu_bo_get_preferred_pin_domain(%struct.amdgpu_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
