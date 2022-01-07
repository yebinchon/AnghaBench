; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_fb.c_amdgpufb_create_pinned_object.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_fb.c_amdgpufb_create_pinned_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_fbdev = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { i32, i32 }
%struct.drm_mode_fb_cmd2 = type { i32, i32*, i32 }
%struct.drm_gem_object = type { i32 }
%struct.drm_format_info = type { i64* }
%struct.amdgpu_bo = type { i32 }

@AMDGPU_GEM_CREATE_CPU_ACCESS_REQUIRED = common dso_local global i32 0, align 4
@AMDGPU_GEM_CREATE_VRAM_CONTIGUOUS = common dso_local global i32 0, align 4
@AMDGPU_GEM_CREATE_VRAM_CLEARED = common dso_local global i32 0, align 4
@AMDGPU_GEM_CREATE_CPU_GTT_USWC = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@ttm_bo_type_kernel = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"failed to allocate framebuffer (%d)\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ARRAY_MODE = common dso_local global i32 0, align 4
@GRPH_ARRAY_2D_TILED_THIN1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"FB failed to set tiling flags\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"%p bind failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_fbdev*, %struct.drm_mode_fb_cmd2*, %struct.drm_gem_object**)* @amdgpufb_create_pinned_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpufb_create_pinned_object(%struct.amdgpu_fbdev* %0, %struct.drm_mode_fb_cmd2* %1, %struct.drm_gem_object** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.amdgpu_fbdev*, align 8
  %6 = alloca %struct.drm_mode_fb_cmd2*, align 8
  %7 = alloca %struct.drm_gem_object**, align 8
  %8 = alloca %struct.drm_format_info*, align 8
  %9 = alloca %struct.amdgpu_device*, align 8
  %10 = alloca %struct.drm_gem_object*, align 8
  %11 = alloca %struct.amdgpu_bo*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store %struct.amdgpu_fbdev* %0, %struct.amdgpu_fbdev** %5, align 8
  store %struct.drm_mode_fb_cmd2* %1, %struct.drm_mode_fb_cmd2** %6, align 8
  store %struct.drm_gem_object** %2, %struct.drm_gem_object*** %7, align 8
  %21 = load %struct.amdgpu_fbdev*, %struct.amdgpu_fbdev** %5, align 8
  %22 = getelementptr inbounds %struct.amdgpu_fbdev, %struct.amdgpu_fbdev* %21, i32 0, i32 0
  %23 = load %struct.amdgpu_device*, %struct.amdgpu_device** %22, align 8
  store %struct.amdgpu_device* %23, %struct.amdgpu_device** %9, align 8
  store %struct.drm_gem_object* null, %struct.drm_gem_object** %10, align 8
  store %struct.amdgpu_bo* null, %struct.amdgpu_bo** %11, align 8
  store i32 0, i32* %12, align 4
  store i64 0, i64* %13, align 8
  %24 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %6, align 8
  %25 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %18, align 4
  %27 = load i32, i32* @AMDGPU_GEM_CREATE_CPU_ACCESS_REQUIRED, align 4
  %28 = load i32, i32* @AMDGPU_GEM_CREATE_VRAM_CONTIGUOUS, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @AMDGPU_GEM_CREATE_VRAM_CLEARED, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @AMDGPU_GEM_CREATE_CPU_GTT_USWC, align 4
  %33 = or i32 %31, %32
  store i32 %33, i32* %20, align 4
  %34 = load %struct.amdgpu_device*, %struct.amdgpu_device** %9, align 8
  %35 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %6, align 8
  %38 = call %struct.drm_format_info* @drm_get_format_info(i32 %36, %struct.drm_mode_fb_cmd2* %37)
  store %struct.drm_format_info* %38, %struct.drm_format_info** %8, align 8
  %39 = load %struct.drm_format_info*, %struct.drm_format_info** %8, align 8
  %40 = getelementptr inbounds %struct.drm_format_info, %struct.drm_format_info* %39, i32 0, i32 0
  %41 = load i64*, i64** %40, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 0
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %19, align 8
  %44 = load %struct.amdgpu_device*, %struct.amdgpu_device** %9, align 8
  %45 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %6, align 8
  %46 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load i64, i64* %19, align 8
  %49 = load i32, i32* %12, align 4
  %50 = call i32 @amdgpu_align_pitch(%struct.amdgpu_device* %44, i32 %47, i64 %48, i32 %49)
  %51 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %6, align 8
  %52 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  store i32 %50, i32* %54, align 4
  %55 = load %struct.amdgpu_device*, %struct.amdgpu_device** %9, align 8
  %56 = load i32, i32* %20, align 4
  %57 = call i64 @amdgpu_display_supported_domains(%struct.amdgpu_device* %55, i32 %56)
  store i64 %57, i64* %14, align 8
  %58 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %6, align 8
  %59 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @ALIGN(i32 %60, i32 8)
  store i32 %61, i32* %18, align 4
  %62 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %6, align 8
  %63 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %18, align 4
  %68 = mul nsw i32 %66, %67
  store i32 %68, i32* %17, align 4
  %69 = load i32, i32* %17, align 4
  %70 = load i32, i32* @PAGE_SIZE, align 4
  %71 = call i32 @ALIGN(i32 %69, i32 %70)
  store i32 %71, i32* %16, align 4
  %72 = load %struct.amdgpu_device*, %struct.amdgpu_device** %9, align 8
  %73 = load i32, i32* %16, align 4
  %74 = load i64, i64* %14, align 8
  %75 = load i32, i32* %20, align 4
  %76 = load i32, i32* @ttm_bo_type_kernel, align 4
  %77 = call i32 @amdgpu_gem_object_create(%struct.amdgpu_device* %72, i32 %73, i32 0, i64 %74, i32 %75, i32 %76, i32* null, %struct.drm_gem_object** %10)
  store i32 %77, i32* %15, align 4
  %78 = load i32, i32* %15, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %3
  %81 = load i32, i32* %16, align 4
  %82 = call i32 @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %81)
  %83 = load i32, i32* @ENOMEM, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %4, align 4
  br label %157

85:                                               ; preds = %3
  %86 = load %struct.drm_gem_object*, %struct.drm_gem_object** %10, align 8
  %87 = call %struct.amdgpu_bo* @gem_to_amdgpu_bo(%struct.drm_gem_object* %86)
  store %struct.amdgpu_bo* %87, %struct.amdgpu_bo** %11, align 8
  %88 = load i32, i32* %12, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %85
  %91 = load i32, i32* @ARRAY_MODE, align 4
  %92 = load i32, i32* @GRPH_ARRAY_2D_TILED_THIN1, align 4
  %93 = call i64 @AMDGPU_TILING_SET(i32 %91, i32 %92)
  store i64 %93, i64* %13, align 8
  br label %94

94:                                               ; preds = %90, %85
  %95 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %11, align 8
  %96 = call i32 @amdgpu_bo_reserve(%struct.amdgpu_bo* %95, i32 0)
  store i32 %96, i32* %15, align 4
  %97 = load i32, i32* %15, align 4
  %98 = icmp ne i32 %97, 0
  %99 = zext i1 %98 to i32
  %100 = call i64 @unlikely(i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %94
  br label %152

103:                                              ; preds = %94
  %104 = load i64, i64* %13, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %118

106:                                              ; preds = %103
  %107 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %11, align 8
  %108 = load i64, i64* %13, align 8
  %109 = call i32 @amdgpu_bo_set_tiling_flags(%struct.amdgpu_bo* %107, i64 %108)
  store i32 %109, i32* %15, align 4
  %110 = load i32, i32* %15, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %106
  %113 = load %struct.amdgpu_device*, %struct.amdgpu_device** %9, align 8
  %114 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 (i32, i8*, ...) @dev_err(i32 %115, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %117

117:                                              ; preds = %112, %106
  br label %118

118:                                              ; preds = %117, %103
  %119 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %11, align 8
  %120 = load i64, i64* %14, align 8
  %121 = call i32 @amdgpu_bo_pin(%struct.amdgpu_bo* %119, i64 %120)
  store i32 %121, i32* %15, align 4
  %122 = load i32, i32* %15, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %118
  %125 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %11, align 8
  %126 = call i32 @amdgpu_bo_unreserve(%struct.amdgpu_bo* %125)
  br label %152

127:                                              ; preds = %118
  %128 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %11, align 8
  %129 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %128, i32 0, i32 0
  %130 = call i32 @amdgpu_ttm_alloc_gart(i32* %129)
  store i32 %130, i32* %15, align 4
  %131 = load i32, i32* %15, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %141

133:                                              ; preds = %127
  %134 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %11, align 8
  %135 = call i32 @amdgpu_bo_unreserve(%struct.amdgpu_bo* %134)
  %136 = load %struct.amdgpu_device*, %struct.amdgpu_device** %9, align 8
  %137 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %11, align 8
  %140 = call i32 (i32, i8*, ...) @dev_err(i32 %138, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), %struct.amdgpu_bo* %139)
  br label %152

141:                                              ; preds = %127
  %142 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %11, align 8
  %143 = call i32 @amdgpu_bo_kmap(%struct.amdgpu_bo* %142, i32* null)
  store i32 %143, i32* %15, align 4
  %144 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %11, align 8
  %145 = call i32 @amdgpu_bo_unreserve(%struct.amdgpu_bo* %144)
  %146 = load i32, i32* %15, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %141
  br label %152

149:                                              ; preds = %141
  %150 = load %struct.drm_gem_object*, %struct.drm_gem_object** %10, align 8
  %151 = load %struct.drm_gem_object**, %struct.drm_gem_object*** %7, align 8
  store %struct.drm_gem_object* %150, %struct.drm_gem_object** %151, align 8
  store i32 0, i32* %4, align 4
  br label %157

152:                                              ; preds = %148, %133, %124, %102
  %153 = load %struct.drm_gem_object*, %struct.drm_gem_object** %10, align 8
  %154 = call i32 @amdgpufb_destroy_pinned_object(%struct.drm_gem_object* %153)
  %155 = load %struct.drm_gem_object**, %struct.drm_gem_object*** %7, align 8
  store %struct.drm_gem_object* null, %struct.drm_gem_object** %155, align 8
  %156 = load i32, i32* %15, align 4
  store i32 %156, i32* %4, align 4
  br label %157

157:                                              ; preds = %152, %149, %80
  %158 = load i32, i32* %4, align 4
  ret i32 %158
}

declare dso_local %struct.drm_format_info* @drm_get_format_info(i32, %struct.drm_mode_fb_cmd2*) #1

declare dso_local i32 @amdgpu_align_pitch(%struct.amdgpu_device*, i32, i64, i32) #1

declare dso_local i64 @amdgpu_display_supported_domains(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @amdgpu_gem_object_create(%struct.amdgpu_device*, i32, i32, i64, i32, i32, i32*, %struct.drm_gem_object**) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local %struct.amdgpu_bo* @gem_to_amdgpu_bo(%struct.drm_gem_object*) #1

declare dso_local i64 @AMDGPU_TILING_SET(i32, i32) #1

declare dso_local i32 @amdgpu_bo_reserve(%struct.amdgpu_bo*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @amdgpu_bo_set_tiling_flags(%struct.amdgpu_bo*, i64) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @amdgpu_bo_pin(%struct.amdgpu_bo*, i64) #1

declare dso_local i32 @amdgpu_bo_unreserve(%struct.amdgpu_bo*) #1

declare dso_local i32 @amdgpu_ttm_alloc_gart(i32*) #1

declare dso_local i32 @amdgpu_bo_kmap(%struct.amdgpu_bo*, i32*) #1

declare dso_local i32 @amdgpufb_destroy_pinned_object(%struct.drm_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
