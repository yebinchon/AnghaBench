; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ttm.c_amdgpu_ttm_gart_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ttm.c_amdgpu_ttm_gart_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }
%struct.ttm_buffer_object = type { %struct.ttm_tt* }
%struct.ttm_tt = type { i64, i32* }
%struct.amdgpu_bo = type { i32 }
%struct.amdgpu_ttm_tt = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@AMDGPU_GEM_CREATE_MQD_GFX9 = common dso_local global i32 0, align 4
@AMDGPU_PTE_MTYPE_VG10_MASK = common dso_local global i64 0, align 8
@AMDGPU_MTYPE_NC = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"failed to bind %lu pages at 0x%08llX\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_ttm_gart_bind(%struct.amdgpu_device* %0, %struct.ttm_buffer_object* %1, i64 %2) #0 {
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca %struct.ttm_buffer_object*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.amdgpu_bo*, align 8
  %8 = alloca %struct.ttm_tt*, align 8
  %9 = alloca %struct.amdgpu_ttm_tt*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %4, align 8
  store %struct.ttm_buffer_object* %1, %struct.ttm_buffer_object** %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %5, align 8
  %13 = call %struct.amdgpu_bo* @ttm_to_amdgpu_bo(%struct.ttm_buffer_object* %12)
  store %struct.amdgpu_bo* %13, %struct.amdgpu_bo** %7, align 8
  %14 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %5, align 8
  %15 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %14, i32 0, i32 0
  %16 = load %struct.ttm_tt*, %struct.ttm_tt** %15, align 8
  store %struct.ttm_tt* %16, %struct.ttm_tt** %8, align 8
  %17 = load %struct.ttm_tt*, %struct.ttm_tt** %8, align 8
  %18 = bitcast %struct.ttm_tt* %17 to i8*
  %19 = bitcast i8* %18 to %struct.amdgpu_ttm_tt*
  store %struct.amdgpu_ttm_tt* %19, %struct.amdgpu_ttm_tt** %9, align 8
  %20 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %7, align 8
  %21 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @AMDGPU_GEM_CREATE_MQD_GFX9, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %79

26:                                               ; preds = %3
  store i64 1, i64* %11, align 8
  %27 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %28 = load %struct.amdgpu_ttm_tt*, %struct.amdgpu_ttm_tt** %9, align 8
  %29 = getelementptr inbounds %struct.amdgpu_ttm_tt, %struct.amdgpu_ttm_tt* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %11, align 8
  %32 = load %struct.ttm_tt*, %struct.ttm_tt** %8, align 8
  %33 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load %struct.amdgpu_ttm_tt*, %struct.amdgpu_ttm_tt** %9, align 8
  %36 = getelementptr inbounds %struct.amdgpu_ttm_tt, %struct.amdgpu_ttm_tt* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i64, i64* %6, align 8
  %40 = call i32 @amdgpu_gart_bind(%struct.amdgpu_device* %27, i64 %30, i64 %31, i32* %34, i32* %38, i64 %39)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %26
  br label %97

44:                                               ; preds = %26
  %45 = load i64, i64* @AMDGPU_PTE_MTYPE_VG10_MASK, align 8
  %46 = xor i64 %45, -1
  %47 = load i64, i64* %6, align 8
  %48 = and i64 %47, %46
  store i64 %48, i64* %6, align 8
  %49 = load i32, i32* @AMDGPU_MTYPE_NC, align 4
  %50 = call i64 @AMDGPU_PTE_MTYPE_VG10(i32 %49)
  %51 = load i64, i64* %6, align 8
  %52 = or i64 %51, %50
  store i64 %52, i64* %6, align 8
  %53 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %54 = load %struct.amdgpu_ttm_tt*, %struct.amdgpu_ttm_tt** %9, align 8
  %55 = getelementptr inbounds %struct.amdgpu_ttm_tt, %struct.amdgpu_ttm_tt* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %11, align 8
  %58 = load i64, i64* @PAGE_SHIFT, align 8
  %59 = shl i64 %57, %58
  %60 = add i64 %56, %59
  %61 = load %struct.ttm_tt*, %struct.ttm_tt** %8, align 8
  %62 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %11, align 8
  %65 = sub i64 %63, %64
  %66 = load %struct.ttm_tt*, %struct.ttm_tt** %8, align 8
  %67 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = load i64, i64* %11, align 8
  %70 = getelementptr inbounds i32, i32* %68, i64 %69
  %71 = load %struct.amdgpu_ttm_tt*, %struct.amdgpu_ttm_tt** %9, align 8
  %72 = getelementptr inbounds %struct.amdgpu_ttm_tt, %struct.amdgpu_ttm_tt* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load i64, i64* %11, align 8
  %76 = getelementptr inbounds i32, i32* %74, i64 %75
  %77 = load i64, i64* %6, align 8
  %78 = call i32 @amdgpu_gart_bind(%struct.amdgpu_device* %53, i64 %60, i64 %65, i32* %70, i32* %76, i64 %77)
  store i32 %78, i32* %10, align 4
  br label %96

79:                                               ; preds = %3
  %80 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %81 = load %struct.amdgpu_ttm_tt*, %struct.amdgpu_ttm_tt** %9, align 8
  %82 = getelementptr inbounds %struct.amdgpu_ttm_tt, %struct.amdgpu_ttm_tt* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.ttm_tt*, %struct.ttm_tt** %8, align 8
  %85 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.ttm_tt*, %struct.ttm_tt** %8, align 8
  %88 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = load %struct.amdgpu_ttm_tt*, %struct.amdgpu_ttm_tt** %9, align 8
  %91 = getelementptr inbounds %struct.amdgpu_ttm_tt, %struct.amdgpu_ttm_tt* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = load i64, i64* %6, align 8
  %95 = call i32 @amdgpu_gart_bind(%struct.amdgpu_device* %80, i64 %83, i64 %86, i32* %89, i32* %93, i64 %94)
  store i32 %95, i32* %10, align 4
  br label %96

96:                                               ; preds = %79, %44
  br label %97

97:                                               ; preds = %96, %43
  %98 = load i32, i32* %10, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %97
  %101 = load %struct.ttm_tt*, %struct.ttm_tt** %8, align 8
  %102 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.amdgpu_ttm_tt*, %struct.amdgpu_ttm_tt** %9, align 8
  %105 = getelementptr inbounds %struct.amdgpu_ttm_tt, %struct.amdgpu_ttm_tt* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %103, i64 %106)
  br label %108

108:                                              ; preds = %100, %97
  %109 = load i32, i32* %10, align 4
  ret i32 %109
}

declare dso_local %struct.amdgpu_bo* @ttm_to_amdgpu_bo(%struct.ttm_buffer_object*) #1

declare dso_local i32 @amdgpu_gart_bind(%struct.amdgpu_device*, i64, i64, i32*, i32*, i64) #1

declare dso_local i64 @AMDGPU_PTE_MTYPE_VG10(i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
