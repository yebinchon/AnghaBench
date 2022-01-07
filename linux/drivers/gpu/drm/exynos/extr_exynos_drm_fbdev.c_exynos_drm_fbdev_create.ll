; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_fbdev.c_exynos_drm_fbdev_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_fbdev.c_exynos_drm_fbdev_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_fb_helper = type { %struct.exynos_drm_gem*, %struct.drm_device* }
%struct.exynos_drm_gem = type { i32 }
%struct.drm_device = type { i32 }
%struct.drm_fb_helper_surface_size = type { i32, i64, i32, i32 }
%struct.exynos_drm_fbdev = type { %struct.exynos_drm_gem* }
%struct.drm_mode_fb_cmd2 = type { i32, i64, i32*, i32, i32 }

@.str = private unnamed_addr constant [42 x i8] c"surface width(%d), height(%d) and bpp(%d\0A\00", align 1
@EXYNOS_BO_CONTIG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [65 x i8] c"contiguous FB allocation failed, falling back to non-contiguous\0A\00", align 1
@EXYNOS_BO_NONCONTIG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"failed to create drm framebuffer.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_fb_helper*, %struct.drm_fb_helper_surface_size*)* @exynos_drm_fbdev_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos_drm_fbdev_create(%struct.drm_fb_helper* %0, %struct.drm_fb_helper_surface_size* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_fb_helper*, align 8
  %5 = alloca %struct.drm_fb_helper_surface_size*, align 8
  %6 = alloca %struct.exynos_drm_fbdev*, align 8
  %7 = alloca %struct.exynos_drm_gem*, align 8
  %8 = alloca %struct.drm_device*, align 8
  %9 = alloca %struct.drm_mode_fb_cmd2, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.drm_fb_helper* %0, %struct.drm_fb_helper** %4, align 8
  store %struct.drm_fb_helper_surface_size* %1, %struct.drm_fb_helper_surface_size** %5, align 8
  %12 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %4, align 8
  %13 = call %struct.exynos_drm_fbdev* @to_exynos_fbdev(%struct.drm_fb_helper* %12)
  store %struct.exynos_drm_fbdev* %13, %struct.exynos_drm_fbdev** %6, align 8
  %14 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %4, align 8
  %15 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %14, i32 0, i32 1
  %16 = load %struct.drm_device*, %struct.drm_device** %15, align 8
  store %struct.drm_device* %16, %struct.drm_device** %8, align 8
  %17 = bitcast %struct.drm_mode_fb_cmd2* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %17, i8 0, i64 32, i1 false)
  %18 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %19 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.drm_fb_helper_surface_size*, %struct.drm_fb_helper_surface_size** %5, align 8
  %22 = getelementptr inbounds %struct.drm_fb_helper_surface_size, %struct.drm_fb_helper_surface_size* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.drm_fb_helper_surface_size*, %struct.drm_fb_helper_surface_size** %5, align 8
  %25 = getelementptr inbounds %struct.drm_fb_helper_surface_size, %struct.drm_fb_helper_surface_size* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.drm_fb_helper_surface_size*, %struct.drm_fb_helper_surface_size** %5, align 8
  %28 = getelementptr inbounds %struct.drm_fb_helper_surface_size, %struct.drm_fb_helper_surface_size* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @DRM_DEV_DEBUG_KMS(i32 %20, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %23, i64 %26, i32 %29)
  %31 = load %struct.drm_fb_helper_surface_size*, %struct.drm_fb_helper_surface_size** %5, align 8
  %32 = getelementptr inbounds %struct.drm_fb_helper_surface_size, %struct.drm_fb_helper_surface_size* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %9, i32 0, i32 0
  store i32 %33, i32* %34, align 8
  %35 = load %struct.drm_fb_helper_surface_size*, %struct.drm_fb_helper_surface_size** %5, align 8
  %36 = getelementptr inbounds %struct.drm_fb_helper_surface_size, %struct.drm_fb_helper_surface_size* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %9, i32 0, i32 1
  store i64 %37, i64* %38, align 8
  %39 = load %struct.drm_fb_helper_surface_size*, %struct.drm_fb_helper_surface_size** %5, align 8
  %40 = getelementptr inbounds %struct.drm_fb_helper_surface_size, %struct.drm_fb_helper_surface_size* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.drm_fb_helper_surface_size*, %struct.drm_fb_helper_surface_size** %5, align 8
  %43 = getelementptr inbounds %struct.drm_fb_helper_surface_size, %struct.drm_fb_helper_surface_size* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = ashr i32 %44, 3
  %46 = mul nsw i32 %41, %45
  %47 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %9, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  store i32 %46, i32* %49, align 4
  %50 = load %struct.drm_fb_helper_surface_size*, %struct.drm_fb_helper_surface_size** %5, align 8
  %51 = getelementptr inbounds %struct.drm_fb_helper_surface_size, %struct.drm_fb_helper_surface_size* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.drm_fb_helper_surface_size*, %struct.drm_fb_helper_surface_size** %5, align 8
  %54 = getelementptr inbounds %struct.drm_fb_helper_surface_size, %struct.drm_fb_helper_surface_size* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @drm_mode_legacy_fb_format(i32 %52, i32 %55)
  %57 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %9, i32 0, i32 3
  store i32 %56, i32* %57, align 8
  %58 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %9, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %9, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = mul i64 %62, %64
  store i64 %65, i64* %10, align 8
  %66 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %67 = load i32, i32* @EXYNOS_BO_CONTIG, align 4
  %68 = load i64, i64* %10, align 8
  %69 = call %struct.exynos_drm_gem* @exynos_drm_gem_create(%struct.drm_device* %66, i32 %67, i64 %68)
  store %struct.exynos_drm_gem* %69, %struct.exynos_drm_gem** %7, align 8
  %70 = load %struct.exynos_drm_gem*, %struct.exynos_drm_gem** %7, align 8
  %71 = call i64 @IS_ERR(%struct.exynos_drm_gem* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %86

73:                                               ; preds = %2
  %74 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %75 = call i64 @is_drm_iommu_supported(%struct.drm_device* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %73
  %78 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %79 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @dev_warn(i32 %80, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0))
  %82 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %83 = load i32, i32* @EXYNOS_BO_NONCONTIG, align 4
  %84 = load i64, i64* %10, align 8
  %85 = call %struct.exynos_drm_gem* @exynos_drm_gem_create(%struct.drm_device* %82, i32 %83, i64 %84)
  store %struct.exynos_drm_gem* %85, %struct.exynos_drm_gem** %7, align 8
  br label %86

86:                                               ; preds = %77, %73, %2
  %87 = load %struct.exynos_drm_gem*, %struct.exynos_drm_gem** %7, align 8
  %88 = call i64 @IS_ERR(%struct.exynos_drm_gem* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %86
  %91 = load %struct.exynos_drm_gem*, %struct.exynos_drm_gem** %7, align 8
  %92 = call i32 @PTR_ERR(%struct.exynos_drm_gem* %91)
  store i32 %92, i32* %3, align 4
  br label %134

93:                                               ; preds = %86
  %94 = load %struct.exynos_drm_gem*, %struct.exynos_drm_gem** %7, align 8
  %95 = load %struct.exynos_drm_fbdev*, %struct.exynos_drm_fbdev** %6, align 8
  %96 = getelementptr inbounds %struct.exynos_drm_fbdev, %struct.exynos_drm_fbdev* %95, i32 0, i32 0
  store %struct.exynos_drm_gem* %94, %struct.exynos_drm_gem** %96, align 8
  %97 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %98 = call %struct.exynos_drm_gem* @exynos_drm_framebuffer_init(%struct.drm_device* %97, %struct.drm_mode_fb_cmd2* %9, %struct.exynos_drm_gem** %7, i32 1)
  %99 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %4, align 8
  %100 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %99, i32 0, i32 0
  store %struct.exynos_drm_gem* %98, %struct.exynos_drm_gem** %100, align 8
  %101 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %4, align 8
  %102 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %101, i32 0, i32 0
  %103 = load %struct.exynos_drm_gem*, %struct.exynos_drm_gem** %102, align 8
  %104 = call i64 @IS_ERR(%struct.exynos_drm_gem* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %115

106:                                              ; preds = %93
  %107 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %108 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @DRM_DEV_ERROR(i32 %109, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %111 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %4, align 8
  %112 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %111, i32 0, i32 0
  %113 = load %struct.exynos_drm_gem*, %struct.exynos_drm_gem** %112, align 8
  %114 = call i32 @PTR_ERR(%struct.exynos_drm_gem* %113)
  store i32 %114, i32* %11, align 4
  br label %130

115:                                              ; preds = %93
  %116 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %4, align 8
  %117 = load %struct.drm_fb_helper_surface_size*, %struct.drm_fb_helper_surface_size** %5, align 8
  %118 = load %struct.exynos_drm_gem*, %struct.exynos_drm_gem** %7, align 8
  %119 = call i32 @exynos_drm_fbdev_update(%struct.drm_fb_helper* %116, %struct.drm_fb_helper_surface_size* %117, %struct.exynos_drm_gem* %118)
  store i32 %119, i32* %11, align 4
  %120 = load i32, i32* %11, align 4
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %115
  br label %125

123:                                              ; preds = %115
  %124 = load i32, i32* %11, align 4
  store i32 %124, i32* %3, align 4
  br label %134

125:                                              ; preds = %122
  %126 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %4, align 8
  %127 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %126, i32 0, i32 0
  %128 = load %struct.exynos_drm_gem*, %struct.exynos_drm_gem** %127, align 8
  %129 = call i32 @drm_framebuffer_cleanup(%struct.exynos_drm_gem* %128)
  br label %130

130:                                              ; preds = %125, %106
  %131 = load %struct.exynos_drm_gem*, %struct.exynos_drm_gem** %7, align 8
  %132 = call i32 @exynos_drm_gem_destroy(%struct.exynos_drm_gem* %131)
  %133 = load i32, i32* %11, align 4
  store i32 %133, i32* %3, align 4
  br label %134

134:                                              ; preds = %130, %123, %90
  %135 = load i32, i32* %3, align 4
  ret i32 %135
}

declare dso_local %struct.exynos_drm_fbdev* @to_exynos_fbdev(%struct.drm_fb_helper*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @DRM_DEV_DEBUG_KMS(i32, i8*, i32, i64, i32) #1

declare dso_local i32 @drm_mode_legacy_fb_format(i32, i32) #1

declare dso_local %struct.exynos_drm_gem* @exynos_drm_gem_create(%struct.drm_device*, i32, i64) #1

declare dso_local i64 @IS_ERR(%struct.exynos_drm_gem*) #1

declare dso_local i64 @is_drm_iommu_supported(%struct.drm_device*) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @PTR_ERR(%struct.exynos_drm_gem*) #1

declare dso_local %struct.exynos_drm_gem* @exynos_drm_framebuffer_init(%struct.drm_device*, %struct.drm_mode_fb_cmd2*, %struct.exynos_drm_gem**, i32) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*) #1

declare dso_local i32 @exynos_drm_fbdev_update(%struct.drm_fb_helper*, %struct.drm_fb_helper_surface_size*, %struct.exynos_drm_gem*) #1

declare dso_local i32 @drm_framebuffer_cleanup(%struct.exynos_drm_gem*) #1

declare dso_local i32 @exynos_drm_gem_destroy(%struct.exynos_drm_gem*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
