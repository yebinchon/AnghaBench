; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_dma_buf.c_amdgpu_dma_buf_map_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_dma_buf.c_amdgpu_dma_buf_map_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_buf = type { %struct.drm_gem_object* }
%struct.drm_gem_object = type { i32 }
%struct.dma_buf_attachment = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.amdgpu_bo = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.amdgpu_device = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }

@AMDGPU_GEM_DOMAIN_GTT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_buf*, %struct.dma_buf_attachment*)* @amdgpu_dma_buf_map_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_dma_buf_map_attach(%struct.dma_buf* %0, %struct.dma_buf_attachment* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dma_buf*, align 8
  %5 = alloca %struct.dma_buf_attachment*, align 8
  %6 = alloca %struct.drm_gem_object*, align 8
  %7 = alloca %struct.amdgpu_bo*, align 8
  %8 = alloca %struct.amdgpu_device*, align 8
  %9 = alloca i64, align 8
  store %struct.dma_buf* %0, %struct.dma_buf** %4, align 8
  store %struct.dma_buf_attachment* %1, %struct.dma_buf_attachment** %5, align 8
  %10 = load %struct.dma_buf*, %struct.dma_buf** %4, align 8
  %11 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %10, i32 0, i32 0
  %12 = load %struct.drm_gem_object*, %struct.drm_gem_object** %11, align 8
  store %struct.drm_gem_object* %12, %struct.drm_gem_object** %6, align 8
  %13 = load %struct.drm_gem_object*, %struct.drm_gem_object** %6, align 8
  %14 = call %struct.amdgpu_bo* @gem_to_amdgpu_bo(%struct.drm_gem_object* %13)
  store %struct.amdgpu_bo* %14, %struct.amdgpu_bo** %7, align 8
  %15 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %7, align 8
  %16 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.amdgpu_device* @amdgpu_ttm_adev(i32 %18)
  store %struct.amdgpu_device* %19, %struct.amdgpu_device** %8, align 8
  %20 = load %struct.dma_buf*, %struct.dma_buf** %4, align 8
  %21 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %5, align 8
  %22 = call i64 @drm_gem_map_attach(%struct.dma_buf* %20, %struct.dma_buf_attachment* %21)
  store i64 %22, i64* %9, align 8
  %23 = load i64, i64* %9, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %2
  %26 = load i64, i64* %9, align 8
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %3, align 4
  br label %98

28:                                               ; preds = %2
  %29 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %7, align 8
  %30 = call i64 @amdgpu_bo_reserve(%struct.amdgpu_bo* %29, i32 0)
  store i64 %30, i64* %9, align 8
  %31 = load i64, i64* %9, align 8
  %32 = icmp ne i64 %31, 0
  %33 = zext i1 %32 to i32
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  br label %88

37:                                               ; preds = %28
  %38 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %5, align 8
  %39 = getelementptr inbounds %struct.dma_buf_attachment, %struct.dma_buf_attachment* %38, i32 0, i32 0
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %44 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %43, i32 0, i32 0
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %42, %47
  br i1 %48, label %49, label %60

49:                                               ; preds = %37
  %50 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %7, align 8
  %51 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @__dma_resv_make_exclusive(i32 %54)
  store i64 %55, i64* %9, align 8
  %56 = load i64, i64* %9, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %49
  br label %85

59:                                               ; preds = %49
  br label %60

60:                                               ; preds = %59, %37
  %61 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %7, align 8
  %62 = load i32, i32* @AMDGPU_GEM_DOMAIN_GTT, align 4
  %63 = call i64 @amdgpu_bo_pin(%struct.amdgpu_bo* %61, i32 %62)
  store i64 %63, i64* %9, align 8
  %64 = load i64, i64* %9, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  br label %85

67:                                               ; preds = %60
  %68 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %5, align 8
  %69 = getelementptr inbounds %struct.dma_buf_attachment, %struct.dma_buf_attachment* %68, i32 0, i32 0
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %74 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %73, i32 0, i32 0
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %72, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %67
  %80 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %7, align 8
  %81 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %81, align 4
  br label %84

84:                                               ; preds = %79, %67
  br label %85

85:                                               ; preds = %84, %66, %58
  %86 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %7, align 8
  %87 = call i32 @amdgpu_bo_unreserve(%struct.amdgpu_bo* %86)
  br label %88

88:                                               ; preds = %85, %36
  %89 = load i64, i64* %9, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %88
  %92 = load %struct.dma_buf*, %struct.dma_buf** %4, align 8
  %93 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %5, align 8
  %94 = call i32 @drm_gem_map_detach(%struct.dma_buf* %92, %struct.dma_buf_attachment* %93)
  br label %95

95:                                               ; preds = %91, %88
  %96 = load i64, i64* %9, align 8
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %3, align 4
  br label %98

98:                                               ; preds = %95, %25
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local %struct.amdgpu_bo* @gem_to_amdgpu_bo(%struct.drm_gem_object*) #1

declare dso_local %struct.amdgpu_device* @amdgpu_ttm_adev(i32) #1

declare dso_local i64 @drm_gem_map_attach(%struct.dma_buf*, %struct.dma_buf_attachment*) #1

declare dso_local i64 @amdgpu_bo_reserve(%struct.amdgpu_bo*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @__dma_resv_make_exclusive(i32) #1

declare dso_local i64 @amdgpu_bo_pin(%struct.amdgpu_bo*, i32) #1

declare dso_local i32 @amdgpu_bo_unreserve(%struct.amdgpu_bo*) #1

declare dso_local i32 @drm_gem_map_detach(%struct.dma_buf*, %struct.dma_buf_attachment*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
