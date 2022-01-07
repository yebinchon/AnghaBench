; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_cs.c_amdgpu_cs_wait_any_fence.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_cs.c_amdgpu_cs_wait_any_fence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }
%struct.drm_file = type { i32 }
%union.drm_amdgpu_wait_fences = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.drm_amdgpu_fence = type { i32 }
%struct.dma_fence = type { i64 }
%struct.TYPE_3__ = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, %struct.drm_file*, %union.drm_amdgpu_wait_fences*, %struct.drm_amdgpu_fence*)* @amdgpu_cs_wait_any_fence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_cs_wait_any_fence(%struct.amdgpu_device* %0, %struct.drm_file* %1, %union.drm_amdgpu_wait_fences* %2, %struct.drm_amdgpu_fence* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.amdgpu_device*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %union.drm_amdgpu_wait_fences*, align 8
  %9 = alloca %struct.drm_amdgpu_fence*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.dma_fence**, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca %struct.dma_fence*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %6, align 8
  store %struct.drm_file* %1, %struct.drm_file** %7, align 8
  store %union.drm_amdgpu_wait_fences* %2, %union.drm_amdgpu_wait_fences** %8, align 8
  store %struct.drm_amdgpu_fence* %3, %struct.drm_amdgpu_fence** %9, align 8
  %17 = load %union.drm_amdgpu_wait_fences*, %union.drm_amdgpu_wait_fences** %8, align 8
  %18 = bitcast %union.drm_amdgpu_wait_fences* %17 to %struct.TYPE_3__*
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @amdgpu_gem_timeout(i32 %20)
  store i64 %21, i64* %10, align 8
  %22 = load %union.drm_amdgpu_wait_fences*, %union.drm_amdgpu_wait_fences** %8, align 8
  %23 = bitcast %union.drm_amdgpu_wait_fences* %22 to %struct.TYPE_3__*
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %11, align 4
  store i32 -1, i32* %12, align 4
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.dma_fence** @kcalloc(i32 %26, i32 8, i32 %27)
  store %struct.dma_fence** %28, %struct.dma_fence*** %13, align 8
  %29 = load %struct.dma_fence**, %struct.dma_fence*** %13, align 8
  %30 = icmp eq %struct.dma_fence** %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %4
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %131

34:                                               ; preds = %4
  store i32 0, i32* %14, align 4
  br label %35

35:                                               ; preds = %66, %34
  %36 = load i32, i32* %14, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp ult i32 %36, %37
  br i1 %38, label %39, label %69

39:                                               ; preds = %35
  %40 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %41 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %42 = load %struct.drm_amdgpu_fence*, %struct.drm_amdgpu_fence** %9, align 8
  %43 = load i32, i32* %14, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.drm_amdgpu_fence, %struct.drm_amdgpu_fence* %42, i64 %44
  %46 = call %struct.dma_fence* @amdgpu_cs_get_fence(%struct.amdgpu_device* %40, %struct.drm_file* %41, %struct.drm_amdgpu_fence* %45)
  store %struct.dma_fence* %46, %struct.dma_fence** %16, align 8
  %47 = load %struct.dma_fence*, %struct.dma_fence** %16, align 8
  %48 = call i64 @IS_ERR(%struct.dma_fence* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %39
  %51 = load %struct.dma_fence*, %struct.dma_fence** %16, align 8
  %52 = call i64 @PTR_ERR(%struct.dma_fence* %51)
  store i64 %52, i64* %15, align 8
  br label %111

53:                                               ; preds = %39
  %54 = load %struct.dma_fence*, %struct.dma_fence** %16, align 8
  %55 = icmp ne %struct.dma_fence* %54, null
  br i1 %55, label %56, label %62

56:                                               ; preds = %53
  %57 = load %struct.dma_fence*, %struct.dma_fence** %16, align 8
  %58 = load %struct.dma_fence**, %struct.dma_fence*** %13, align 8
  %59 = load i32, i32* %14, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds %struct.dma_fence*, %struct.dma_fence** %58, i64 %60
  store %struct.dma_fence* %57, %struct.dma_fence** %61, align 8
  br label %64

62:                                               ; preds = %53
  store i64 1, i64* %15, align 8
  %63 = load i32, i32* %14, align 4
  store i32 %63, i32* %12, align 4
  br label %78

64:                                               ; preds = %56
  br label %65

65:                                               ; preds = %64
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %14, align 4
  %68 = add i32 %67, 1
  store i32 %68, i32* %14, align 4
  br label %35

69:                                               ; preds = %35
  %70 = load %struct.dma_fence**, %struct.dma_fence*** %13, align 8
  %71 = load i32, i32* %11, align 4
  %72 = load i64, i64* %10, align 8
  %73 = call i64 @dma_fence_wait_any_timeout(%struct.dma_fence** %70, i32 %71, i32 1, i64 %72, i32* %12)
  store i64 %73, i64* %15, align 8
  %74 = load i64, i64* %15, align 8
  %75 = icmp slt i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %69
  br label %111

77:                                               ; preds = %69
  br label %78

78:                                               ; preds = %77, %62
  %79 = load %union.drm_amdgpu_wait_fences*, %union.drm_amdgpu_wait_fences** %8, align 8
  %80 = call i32 @memset(%union.drm_amdgpu_wait_fences* %79, i32 0, i32 8)
  %81 = load i64, i64* %15, align 8
  %82 = icmp sgt i64 %81, 0
  %83 = zext i1 %82 to i32
  %84 = load %union.drm_amdgpu_wait_fences*, %union.drm_amdgpu_wait_fences** %8, align 8
  %85 = bitcast %union.drm_amdgpu_wait_fences* %84 to %struct.TYPE_4__*
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  store i32 %83, i32* %86, align 4
  %87 = load i32, i32* %12, align 4
  %88 = load %union.drm_amdgpu_wait_fences*, %union.drm_amdgpu_wait_fences** %8, align 8
  %89 = bitcast %union.drm_amdgpu_wait_fences* %88 to %struct.TYPE_4__*
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  store i32 %87, i32* %90, align 4
  %91 = load i32, i32* %12, align 4
  %92 = load i32, i32* %11, align 4
  %93 = icmp ult i32 %91, %92
  br i1 %93, label %94, label %109

94:                                               ; preds = %78
  %95 = load %struct.dma_fence**, %struct.dma_fence*** %13, align 8
  %96 = load i32, i32* %12, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds %struct.dma_fence*, %struct.dma_fence** %95, i64 %97
  %99 = load %struct.dma_fence*, %struct.dma_fence** %98, align 8
  %100 = icmp ne %struct.dma_fence* %99, null
  br i1 %100, label %101, label %109

101:                                              ; preds = %94
  %102 = load %struct.dma_fence**, %struct.dma_fence*** %13, align 8
  %103 = load i32, i32* %12, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds %struct.dma_fence*, %struct.dma_fence** %102, i64 %104
  %106 = load %struct.dma_fence*, %struct.dma_fence** %105, align 8
  %107 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  store i64 %108, i64* %15, align 8
  br label %110

109:                                              ; preds = %94, %78
  store i64 0, i64* %15, align 8
  br label %110

110:                                              ; preds = %109, %101
  br label %111

111:                                              ; preds = %110, %76, %50
  store i32 0, i32* %14, align 4
  br label %112

112:                                              ; preds = %123, %111
  %113 = load i32, i32* %14, align 4
  %114 = load i32, i32* %11, align 4
  %115 = icmp ult i32 %113, %114
  br i1 %115, label %116, label %126

116:                                              ; preds = %112
  %117 = load %struct.dma_fence**, %struct.dma_fence*** %13, align 8
  %118 = load i32, i32* %14, align 4
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds %struct.dma_fence*, %struct.dma_fence** %117, i64 %119
  %121 = load %struct.dma_fence*, %struct.dma_fence** %120, align 8
  %122 = call i32 @dma_fence_put(%struct.dma_fence* %121)
  br label %123

123:                                              ; preds = %116
  %124 = load i32, i32* %14, align 4
  %125 = add i32 %124, 1
  store i32 %125, i32* %14, align 4
  br label %112

126:                                              ; preds = %112
  %127 = load %struct.dma_fence**, %struct.dma_fence*** %13, align 8
  %128 = call i32 @kfree(%struct.dma_fence** %127)
  %129 = load i64, i64* %15, align 8
  %130 = trunc i64 %129 to i32
  store i32 %130, i32* %5, align 4
  br label %131

131:                                              ; preds = %126, %31
  %132 = load i32, i32* %5, align 4
  ret i32 %132
}

declare dso_local i64 @amdgpu_gem_timeout(i32) #1

declare dso_local %struct.dma_fence** @kcalloc(i32, i32, i32) #1

declare dso_local %struct.dma_fence* @amdgpu_cs_get_fence(%struct.amdgpu_device*, %struct.drm_file*, %struct.drm_amdgpu_fence*) #1

declare dso_local i64 @IS_ERR(%struct.dma_fence*) #1

declare dso_local i64 @PTR_ERR(%struct.dma_fence*) #1

declare dso_local i64 @dma_fence_wait_any_timeout(%struct.dma_fence**, i32, i32, i64, i32*) #1

declare dso_local i32 @memset(%union.drm_amdgpu_wait_fences*, i32, i32) #1

declare dso_local i32 @dma_fence_put(%struct.dma_fence*) #1

declare dso_local i32 @kfree(%struct.dma_fence**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
