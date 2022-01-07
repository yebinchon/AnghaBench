; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ttm.c_amdgpu_ttm_bo_eviction_valuable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ttm.c_amdgpu_ttm_bo_eviction_valuable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.ttm_buffer_object = type { i64, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64, i32, %struct.drm_mm_node* }
%struct.drm_mm_node = type { i64, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.ttm_place = type { i64, i64 }
%struct.dma_resv_list = type { i32, i32* }
%struct.dma_fence = type { i32 }

@ttm_bo_type_kernel = common dso_local global i64 0, align 8
@current = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ttm_buffer_object*, %struct.ttm_place*)* @amdgpu_ttm_bo_eviction_valuable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_ttm_bo_eviction_valuable(%struct.ttm_buffer_object* %0, %struct.ttm_place* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ttm_buffer_object*, align 8
  %5 = alloca %struct.ttm_place*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.drm_mm_node*, align 8
  %8 = alloca %struct.dma_resv_list*, align 8
  %9 = alloca %struct.dma_fence*, align 8
  %10 = alloca i32, align 4
  store %struct.ttm_buffer_object* %0, %struct.ttm_buffer_object** %4, align 8
  store %struct.ttm_place* %1, %struct.ttm_place** %5, align 8
  %11 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %4, align 8
  %12 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %6, align 8
  %15 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %4, align 8
  %16 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 2
  %18 = load %struct.drm_mm_node*, %struct.drm_mm_node** %17, align 8
  store %struct.drm_mm_node* %18, %struct.drm_mm_node** %7, align 8
  %19 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %4, align 8
  %20 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @ttm_bo_type_kernel, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %2
  %25 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %4, align 8
  %26 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @dma_resv_test_signaled_rcu(i32 %28, i32 1)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %123

32:                                               ; preds = %24, %2
  %33 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %4, align 8
  %34 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call %struct.dma_resv_list* @dma_resv_get_list(i32 %36)
  store %struct.dma_resv_list* %37, %struct.dma_resv_list** %8, align 8
  %38 = load %struct.dma_resv_list*, %struct.dma_resv_list** %8, align 8
  %39 = icmp ne %struct.dma_resv_list* %38, null
  br i1 %39, label %40, label %73

40:                                               ; preds = %32
  store i32 0, i32* %10, align 4
  br label %41

41:                                               ; preds = %69, %40
  %42 = load i32, i32* %10, align 4
  %43 = load %struct.dma_resv_list*, %struct.dma_resv_list** %8, align 8
  %44 = getelementptr inbounds %struct.dma_resv_list, %struct.dma_resv_list* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %72

47:                                               ; preds = %41
  %48 = load %struct.dma_resv_list*, %struct.dma_resv_list** %8, align 8
  %49 = getelementptr inbounds %struct.dma_resv_list, %struct.dma_resv_list* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %4, align 8
  %56 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @dma_resv_held(i32 %58)
  %60 = call %struct.dma_fence* @rcu_dereference_protected(i32 %54, i32 %59)
  store %struct.dma_fence* %60, %struct.dma_fence** %9, align 8
  %61 = load %struct.dma_fence*, %struct.dma_fence** %9, align 8
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @amdkfd_fence_check_mm(%struct.dma_fence* %61, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %47
  store i32 0, i32* %3, align 4
  br label %123

68:                                               ; preds = %47
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %10, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %10, align 4
  br label %41

72:                                               ; preds = %41
  br label %73

73:                                               ; preds = %72, %32
  %74 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %4, align 8
  %75 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  switch i32 %77, label %118 [
    i32 129, label %78
    i32 128, label %79
  ]

78:                                               ; preds = %73
  store i32 1, i32* %3, align 4
  br label %123

79:                                               ; preds = %73
  br label %80

80:                                               ; preds = %109, %79
  %81 = load i64, i64* %6, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %117

83:                                               ; preds = %80
  %84 = load %struct.ttm_place*, %struct.ttm_place** %5, align 8
  %85 = getelementptr inbounds %struct.ttm_place, %struct.ttm_place* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.drm_mm_node*, %struct.drm_mm_node** %7, align 8
  %88 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.drm_mm_node*, %struct.drm_mm_node** %7, align 8
  %91 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = add i64 %89, %92
  %94 = icmp ult i64 %86, %93
  br i1 %94, label %95, label %109

95:                                               ; preds = %83
  %96 = load %struct.ttm_place*, %struct.ttm_place** %5, align 8
  %97 = getelementptr inbounds %struct.ttm_place, %struct.ttm_place* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %95
  %101 = load %struct.ttm_place*, %struct.ttm_place** %5, align 8
  %102 = getelementptr inbounds %struct.ttm_place, %struct.ttm_place* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.drm_mm_node*, %struct.drm_mm_node** %7, align 8
  %105 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp ule i64 %103, %106
  br i1 %107, label %109, label %108

108:                                              ; preds = %100, %95
  store i32 1, i32* %3, align 4
  br label %123

109:                                              ; preds = %100, %83
  %110 = load %struct.drm_mm_node*, %struct.drm_mm_node** %7, align 8
  %111 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* %6, align 8
  %114 = sub i64 %113, %112
  store i64 %114, i64* %6, align 8
  %115 = load %struct.drm_mm_node*, %struct.drm_mm_node** %7, align 8
  %116 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %115, i32 1
  store %struct.drm_mm_node* %116, %struct.drm_mm_node** %7, align 8
  br label %80

117:                                              ; preds = %80
  store i32 0, i32* %3, align 4
  br label %123

118:                                              ; preds = %73
  br label %119

119:                                              ; preds = %118
  %120 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %4, align 8
  %121 = load %struct.ttm_place*, %struct.ttm_place** %5, align 8
  %122 = call i32 @ttm_bo_eviction_valuable(%struct.ttm_buffer_object* %120, %struct.ttm_place* %121)
  store i32 %122, i32* %3, align 4
  br label %123

123:                                              ; preds = %119, %117, %108, %78, %67, %31
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local i32 @dma_resv_test_signaled_rcu(i32, i32) #1

declare dso_local %struct.dma_resv_list* @dma_resv_get_list(i32) #1

declare dso_local %struct.dma_fence* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @dma_resv_held(i32) #1

declare dso_local i64 @amdkfd_fence_check_mm(%struct.dma_fence*, i32) #1

declare dso_local i32 @ttm_bo_eviction_valuable(%struct.ttm_buffer_object*, %struct.ttm_place*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
