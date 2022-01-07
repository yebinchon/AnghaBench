; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_ttm.c_radeon_ttm_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_ttm.c_radeon_ttm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_10__, %struct.TYPE_9__, i32, %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@radeon_bo_driver = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"failed initializing buffer object driver(%d).\0A\00", align 1
@TTM_PL_VRAM = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed initializing VRAM heap.\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@RADEON_GEM_DOMAIN_VRAM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"radeon: %uM of VRAM memory ready\0A\00", align 1
@TTM_PL_TT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"Failed initializing GTT heap.\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"radeon: %uM of GTT memory ready.\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"Failed to init debugfs\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_ttm_init(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %5 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %6 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 1
  %8 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %9 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %8, i32 0, i32 4
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %16 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %15, i32 0, i32 3
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = call i32 @dma_addressing_limited(i32* %18)
  %20 = call i32 @ttm_bo_device_init(i32* %7, i32* @radeon_bo_driver, i32 %14, i32 %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %1
  %24 = load i32, i32* %4, align 4
  %25 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* %4, align 4
  store i32 %26, i32* %2, align 4
  br label %128

27:                                               ; preds = %1
  %28 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %29 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  store i32 1, i32* %30, align 4
  %31 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %32 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 1
  %34 = load i32, i32* @TTM_PL_VRAM, align 4
  %35 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %36 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @PAGE_SHIFT, align 4
  %40 = ashr i32 %38, %39
  %41 = call i32 @ttm_bo_init_mm(i32* %33, i32 %34, i32 %40)
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %27
  %45 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i32, i32* %4, align 4
  store i32 %46, i32* %2, align 4
  br label %128

47:                                               ; preds = %27
  %48 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %49 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %50 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @radeon_ttm_set_active_vram_size(%struct.radeon_device* %48, i32 %52)
  %54 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %55 = load i32, i32* @PAGE_SIZE, align 4
  %56 = load i32, i32* @RADEON_GEM_DOMAIN_VRAM, align 4
  %57 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %58 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %57, i32 0, i32 2
  %59 = call i32 @radeon_bo_create(%struct.radeon_device* %54, i32 262144, i32 %55, i32 1, i32 %56, i32 0, i32* null, i32* null, i32* %58)
  store i32 %59, i32* %4, align 4
  %60 = load i32, i32* %4, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %47
  %63 = load i32, i32* %4, align 4
  store i32 %63, i32* %2, align 4
  br label %128

64:                                               ; preds = %47
  %65 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %66 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @radeon_bo_reserve(i32 %67, i32 0)
  store i32 %68, i32* %4, align 4
  %69 = load i32, i32* %4, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %64
  %72 = load i32, i32* %4, align 4
  store i32 %72, i32* %2, align 4
  br label %128

73:                                               ; preds = %64
  %74 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %75 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @RADEON_GEM_DOMAIN_VRAM, align 4
  %78 = call i32 @radeon_bo_pin(i32 %76, i32 %77, i32* null)
  store i32 %78, i32* %4, align 4
  %79 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %80 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @radeon_bo_unreserve(i32 %81)
  %83 = load i32, i32* %4, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %73
  %86 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %87 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %86, i32 0, i32 2
  %88 = call i32 @radeon_bo_unref(i32* %87)
  %89 = load i32, i32* %4, align 4
  store i32 %89, i32* %2, align 4
  br label %128

90:                                               ; preds = %73
  %91 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %92 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = sdiv i32 %94, 1048576
  %96 = call i32 @DRM_INFO(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %95)
  %97 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %98 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 1
  %100 = load i32, i32* @TTM_PL_TT, align 4
  %101 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %102 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @PAGE_SHIFT, align 4
  %106 = ashr i32 %104, %105
  %107 = call i32 @ttm_bo_init_mm(i32* %99, i32 %100, i32 %106)
  store i32 %107, i32* %4, align 4
  %108 = load i32, i32* %4, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %90
  %111 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %112 = load i32, i32* %4, align 4
  store i32 %112, i32* %2, align 4
  br label %128

113:                                              ; preds = %90
  %114 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %115 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = sdiv i32 %117, 1048576
  %119 = call i32 @DRM_INFO(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %118)
  %120 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %121 = call i32 @radeon_ttm_debugfs_init(%struct.radeon_device* %120)
  store i32 %121, i32* %4, align 4
  %122 = load i32, i32* %4, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %113
  %125 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  %126 = load i32, i32* %4, align 4
  store i32 %126, i32* %2, align 4
  br label %128

127:                                              ; preds = %113
  store i32 0, i32* %2, align 4
  br label %128

128:                                              ; preds = %127, %124, %110, %85, %71, %62, %44, %23
  %129 = load i32, i32* %2, align 4
  ret i32 %129
}

declare dso_local i32 @ttm_bo_device_init(i32*, i32*, i32, i32) #1

declare dso_local i32 @dma_addressing_limited(i32*) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i32 @ttm_bo_init_mm(i32*, i32, i32) #1

declare dso_local i32 @radeon_ttm_set_active_vram_size(%struct.radeon_device*, i32) #1

declare dso_local i32 @radeon_bo_create(%struct.radeon_device*, i32, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @radeon_bo_reserve(i32, i32) #1

declare dso_local i32 @radeon_bo_pin(i32, i32, i32*) #1

declare dso_local i32 @radeon_bo_unreserve(i32) #1

declare dso_local i32 @radeon_bo_unref(i32*) #1

declare dso_local i32 @DRM_INFO(i8*, i32) #1

declare dso_local i32 @radeon_ttm_debugfs_init(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
