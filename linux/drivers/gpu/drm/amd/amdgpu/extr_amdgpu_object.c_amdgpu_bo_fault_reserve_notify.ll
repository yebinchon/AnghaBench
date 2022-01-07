; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_object.c_amdgpu_bo_fault_reserve_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_object.c_amdgpu_bo_fault_reserve_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_buffer_object = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64, i64, i64 }
%struct.amdgpu_device = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.ttm_operation_ctx = type { i32, i32 }
%struct.amdgpu_bo = type { i64, %struct.TYPE_6__, i32*, i32 }
%struct.TYPE_6__ = type { i32, i32* }

@AMDGPU_GEM_CREATE_CPU_ACCESS_REQUIRED = common dso_local global i32 0, align 4
@TTM_PL_VRAM = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@AMDGPU_GEM_DOMAIN_VRAM = common dso_local global i32 0, align 4
@AMDGPU_GEM_DOMAIN_GTT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_bo_fault_reserve_notify(%struct.ttm_buffer_object* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ttm_buffer_object*, align 8
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca %struct.ttm_operation_ctx, align 4
  %6 = alloca %struct.amdgpu_bo*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.ttm_buffer_object* %0, %struct.ttm_buffer_object** %3, align 8
  %10 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %3, align 8
  %11 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.amdgpu_device* @amdgpu_ttm_adev(i32 %12)
  store %struct.amdgpu_device* %13, %struct.amdgpu_device** %4, align 8
  %14 = bitcast %struct.ttm_operation_ctx* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %14, i8 0, i64 8, i1 false)
  %15 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %3, align 8
  %16 = call i32 @amdgpu_bo_is_amdgpu_bo(%struct.ttm_buffer_object* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %120

19:                                               ; preds = %1
  %20 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %3, align 8
  %21 = call %struct.amdgpu_bo* @ttm_to_amdgpu_bo(%struct.ttm_buffer_object* %20)
  store %struct.amdgpu_bo* %21, %struct.amdgpu_bo** %6, align 8
  %22 = load i32, i32* @AMDGPU_GEM_CREATE_CPU_ACCESS_REQUIRED, align 4
  %23 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %6, align 8
  %24 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 8
  %27 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %3, align 8
  %28 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @TTM_PL_VRAM, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %120

34:                                               ; preds = %19
  %35 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %3, align 8
  %36 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @PAGE_SHIFT, align 8
  %40 = shl i64 %38, %39
  store i64 %40, i64* %8, align 8
  %41 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %3, align 8
  %42 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @PAGE_SHIFT, align 8
  %46 = shl i64 %44, %45
  store i64 %46, i64* %7, align 8
  %47 = load i64, i64* %7, align 8
  %48 = load i64, i64* %8, align 8
  %49 = add i64 %47, %48
  %50 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %51 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ule i64 %49, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %34
  store i32 0, i32* %2, align 4
  br label %120

56:                                               ; preds = %34
  %57 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %6, align 8
  %58 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp sgt i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %2, align 4
  br label %120

64:                                               ; preds = %56
  %65 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %66 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %65, i32 0, i32 1
  %67 = call i32 @atomic64_inc(i32* %66)
  %68 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %6, align 8
  %69 = load i32, i32* @AMDGPU_GEM_DOMAIN_VRAM, align 4
  %70 = load i32, i32* @AMDGPU_GEM_DOMAIN_GTT, align 4
  %71 = or i32 %69, %70
  %72 = call i32 @amdgpu_bo_placement_from_domain(%struct.amdgpu_bo* %68, i32 %71)
  %73 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %6, align 8
  %74 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  store i32 1, i32* %75, align 8
  %76 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %6, align 8
  %77 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %76, i32 0, i32 2
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 1
  %80 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %6, align 8
  %81 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  store i32* %79, i32** %82, align 8
  %83 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %3, align 8
  %84 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %6, align 8
  %85 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %84, i32 0, i32 1
  %86 = call i32 @ttm_bo_validate(%struct.ttm_buffer_object* %83, %struct.TYPE_6__* %85, %struct.ttm_operation_ctx* %5)
  store i32 %86, i32* %9, align 4
  %87 = load i32, i32* %9, align 4
  %88 = icmp ne i32 %87, 0
  %89 = zext i1 %88 to i32
  %90 = call i64 @unlikely(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %64
  %93 = load i32, i32* %9, align 4
  store i32 %93, i32* %2, align 4
  br label %120

94:                                               ; preds = %64
  %95 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %3, align 8
  %96 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @PAGE_SHIFT, align 8
  %100 = shl i64 %98, %99
  store i64 %100, i64* %7, align 8
  %101 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %3, align 8
  %102 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @TTM_PL_VRAM, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %119

107:                                              ; preds = %94
  %108 = load i64, i64* %7, align 8
  %109 = load i64, i64* %8, align 8
  %110 = add i64 %108, %109
  %111 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %112 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = icmp ugt i64 %110, %114
  br i1 %115, label %116, label %119

116:                                              ; preds = %107
  %117 = load i32, i32* @EINVAL, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %2, align 4
  br label %120

119:                                              ; preds = %107, %94
  store i32 0, i32* %2, align 4
  br label %120

120:                                              ; preds = %119, %116, %92, %61, %55, %33, %18
  %121 = load i32, i32* %2, align 4
  ret i32 %121
}

declare dso_local %struct.amdgpu_device* @amdgpu_ttm_adev(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @amdgpu_bo_is_amdgpu_bo(%struct.ttm_buffer_object*) #1

declare dso_local %struct.amdgpu_bo* @ttm_to_amdgpu_bo(%struct.ttm_buffer_object*) #1

declare dso_local i32 @atomic64_inc(i32*) #1

declare dso_local i32 @amdgpu_bo_placement_from_domain(%struct.amdgpu_bo*, i32) #1

declare dso_local i32 @ttm_bo_validate(%struct.ttm_buffer_object*, %struct.TYPE_6__*, %struct.ttm_operation_ctx*) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
