; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_object.h_amdgpu_bo_in_cpu_visible_vram.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_object.h_amdgpu_bo_in_cpu_visible_vram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_bo = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i64, i64, %struct.drm_mm_node* }
%struct.drm_mm_node = type { i32, i64 }
%struct.amdgpu_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@TTM_PL_VRAM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_bo*)* @amdgpu_bo_in_cpu_visible_vram to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_bo_in_cpu_visible_vram(%struct.amdgpu_bo* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_bo*, align 8
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_mm_node*, align 8
  %7 = alloca i64, align 8
  store %struct.amdgpu_bo* %0, %struct.amdgpu_bo** %3, align 8
  %8 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %3, align 8
  %9 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.amdgpu_device* @amdgpu_ttm_adev(i32 %11)
  store %struct.amdgpu_device* %12, %struct.amdgpu_device** %4, align 8
  %13 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %14 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @PAGE_SHIFT, align 4
  %18 = lshr i32 %16, %17
  store i32 %18, i32* %5, align 4
  %19 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %3, align 8
  %20 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 2
  %23 = load %struct.drm_mm_node*, %struct.drm_mm_node** %22, align 8
  store %struct.drm_mm_node* %23, %struct.drm_mm_node** %6, align 8
  %24 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %3, align 8
  %25 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @TTM_PL_VRAM, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %58

32:                                               ; preds = %1
  %33 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %3, align 8
  %34 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %7, align 8
  br label %38

38:                                               ; preds = %49, %32
  %39 = load i64, i64* %7, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %57

41:                                               ; preds = %38
  %42 = load %struct.drm_mm_node*, %struct.drm_mm_node** %6, align 8
  %43 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = icmp ult i32 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  store i32 1, i32* %2, align 4
  br label %58

48:                                               ; preds = %41
  br label %49

49:                                               ; preds = %48
  %50 = load %struct.drm_mm_node*, %struct.drm_mm_node** %6, align 8
  %51 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %7, align 8
  %54 = sub i64 %53, %52
  store i64 %54, i64* %7, align 8
  %55 = load %struct.drm_mm_node*, %struct.drm_mm_node** %6, align 8
  %56 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %55, i32 1
  store %struct.drm_mm_node* %56, %struct.drm_mm_node** %6, align 8
  br label %38

57:                                               ; preds = %38
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %57, %47, %31
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local %struct.amdgpu_device* @amdgpu_ttm_adev(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
