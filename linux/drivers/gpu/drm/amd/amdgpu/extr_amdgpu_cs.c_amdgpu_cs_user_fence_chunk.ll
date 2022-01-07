; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_cs.c_amdgpu_cs_user_fence_chunk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_cs.c_amdgpu_cs_user_fence_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_cs_parser = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.drm_amdgpu_cs_chunk_fence = type { i32, i32 }
%struct.drm_gem_object = type { i32 }
%struct.amdgpu_bo = type { %struct.TYPE_6__ }

@EINVAL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_cs_parser*, %struct.drm_amdgpu_cs_chunk_fence*, i32*)* @amdgpu_cs_user_fence_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_cs_user_fence_chunk(%struct.amdgpu_cs_parser* %0, %struct.drm_amdgpu_cs_chunk_fence* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.amdgpu_cs_parser*, align 8
  %6 = alloca %struct.drm_amdgpu_cs_chunk_fence*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.drm_gem_object*, align 8
  %9 = alloca %struct.amdgpu_bo*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.amdgpu_cs_parser* %0, %struct.amdgpu_cs_parser** %5, align 8
  store %struct.drm_amdgpu_cs_chunk_fence* %1, %struct.drm_amdgpu_cs_chunk_fence** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %5, align 8
  %13 = getelementptr inbounds %struct.amdgpu_cs_parser, %struct.amdgpu_cs_parser* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.drm_amdgpu_cs_chunk_fence*, %struct.drm_amdgpu_cs_chunk_fence** %6, align 8
  %16 = getelementptr inbounds %struct.drm_amdgpu_cs_chunk_fence, %struct.drm_amdgpu_cs_chunk_fence* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.drm_gem_object* @drm_gem_object_lookup(i32 %14, i32 %17)
  store %struct.drm_gem_object* %18, %struct.drm_gem_object** %8, align 8
  %19 = load %struct.drm_gem_object*, %struct.drm_gem_object** %8, align 8
  %20 = icmp eq %struct.drm_gem_object* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %77

24:                                               ; preds = %3
  %25 = load %struct.drm_gem_object*, %struct.drm_gem_object** %8, align 8
  %26 = call i32 @gem_to_amdgpu_bo(%struct.drm_gem_object* %25)
  %27 = call %struct.amdgpu_bo* @amdgpu_bo_ref(i32 %26)
  store %struct.amdgpu_bo* %27, %struct.amdgpu_bo** %9, align 8
  %28 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %5, align 8
  %29 = getelementptr inbounds %struct.amdgpu_cs_parser, %struct.amdgpu_cs_parser* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  store i64 0, i64* %30, align 8
  %31 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %9, align 8
  %32 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %31, i32 0, i32 0
  %33 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %5, align 8
  %34 = getelementptr inbounds %struct.amdgpu_cs_parser, %struct.amdgpu_cs_parser* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  store %struct.TYPE_6__* %32, %struct.TYPE_6__** %36, align 8
  %37 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %5, align 8
  %38 = getelementptr inbounds %struct.amdgpu_cs_parser, %struct.amdgpu_cs_parser* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  store i32 2, i32* %40, align 8
  %41 = load %struct.drm_gem_object*, %struct.drm_gem_object** %8, align 8
  %42 = call i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object* %41)
  %43 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %9, align 8
  %44 = call i64 @amdgpu_bo_size(%struct.amdgpu_bo* %43)
  store i64 %44, i64* %10, align 8
  %45 = load i64, i64* %10, align 8
  %46 = load i64, i64* @PAGE_SIZE, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %56, label %48

48:                                               ; preds = %24
  %49 = load %struct.drm_amdgpu_cs_chunk_fence*, %struct.drm_amdgpu_cs_chunk_fence** %6, align 8
  %50 = getelementptr inbounds %struct.drm_amdgpu_cs_chunk_fence, %struct.drm_amdgpu_cs_chunk_fence* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, 8
  %53 = sext i32 %52 to i64
  %54 = load i64, i64* %10, align 8
  %55 = icmp ugt i64 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %48, %24
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %11, align 4
  br label %74

59:                                               ; preds = %48
  %60 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %9, align 8
  %61 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @amdgpu_ttm_tt_get_usermm(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %59
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %11, align 4
  br label %74

69:                                               ; preds = %59
  %70 = load %struct.drm_amdgpu_cs_chunk_fence*, %struct.drm_amdgpu_cs_chunk_fence** %6, align 8
  %71 = getelementptr inbounds %struct.drm_amdgpu_cs_chunk_fence, %struct.drm_amdgpu_cs_chunk_fence* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32*, i32** %7, align 8
  store i32 %72, i32* %73, align 4
  store i32 0, i32* %4, align 4
  br label %77

74:                                               ; preds = %66, %56
  %75 = call i32 @amdgpu_bo_unref(%struct.amdgpu_bo** %9)
  %76 = load i32, i32* %11, align 4
  store i32 %76, i32* %4, align 4
  br label %77

77:                                               ; preds = %74, %69, %21
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local %struct.drm_gem_object* @drm_gem_object_lookup(i32, i32) #1

declare dso_local %struct.amdgpu_bo* @amdgpu_bo_ref(i32) #1

declare dso_local i32 @gem_to_amdgpu_bo(%struct.drm_gem_object*) #1

declare dso_local i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object*) #1

declare dso_local i64 @amdgpu_bo_size(%struct.amdgpu_bo*) #1

declare dso_local i64 @amdgpu_ttm_tt_get_usermm(i32) #1

declare dso_local i32 @amdgpu_bo_unref(%struct.amdgpu_bo**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
