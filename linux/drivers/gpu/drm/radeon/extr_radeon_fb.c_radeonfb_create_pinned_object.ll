; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_fb.c_radeonfb_create_pinned_object.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_fb.c_radeonfb_create_pinned_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_fbdev = type { %struct.radeon_device* }
%struct.radeon_device = type { i64, i32, i32 }
%struct.drm_mode_fb_cmd2 = type { i32, i32*, i32 }
%struct.drm_gem_object = type { i32 }
%struct.drm_format_info = type { i32* }
%struct.radeon_bo = type { i32 }

@CHIP_R600 = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@RADEON_GEM_DOMAIN_VRAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"failed to allocate framebuffer (%d)\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@RADEON_TILING_MACRO = common dso_local global i32 0, align 4
@RADEON_TILING_SURFACE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"FB failed to set tiling flags\0A\00", align 1
@RADEON_TILING_SWAP_16BIT = common dso_local global i32 0, align 4
@RADEON_TILING_SWAP_32BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_fbdev*, %struct.drm_mode_fb_cmd2*, %struct.drm_gem_object**)* @radeonfb_create_pinned_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeonfb_create_pinned_object(%struct.radeon_fbdev* %0, %struct.drm_mode_fb_cmd2* %1, %struct.drm_gem_object** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.radeon_fbdev*, align 8
  %6 = alloca %struct.drm_mode_fb_cmd2*, align 8
  %7 = alloca %struct.drm_gem_object**, align 8
  %8 = alloca %struct.drm_format_info*, align 8
  %9 = alloca %struct.radeon_device*, align 8
  %10 = alloca %struct.drm_gem_object*, align 8
  %11 = alloca %struct.radeon_bo*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.radeon_fbdev* %0, %struct.radeon_fbdev** %5, align 8
  store %struct.drm_mode_fb_cmd2* %1, %struct.drm_mode_fb_cmd2** %6, align 8
  store %struct.drm_gem_object** %2, %struct.drm_gem_object*** %7, align 8
  %19 = load %struct.radeon_fbdev*, %struct.radeon_fbdev** %5, align 8
  %20 = getelementptr inbounds %struct.radeon_fbdev, %struct.radeon_fbdev* %19, i32 0, i32 0
  %21 = load %struct.radeon_device*, %struct.radeon_device** %20, align 8
  store %struct.radeon_device* %21, %struct.radeon_device** %9, align 8
  store %struct.drm_gem_object* null, %struct.drm_gem_object** %10, align 8
  store %struct.radeon_bo* null, %struct.radeon_bo** %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %22 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %6, align 8
  %23 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %17, align 4
  %25 = load %struct.radeon_device*, %struct.radeon_device** %9, align 8
  %26 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %6, align 8
  %29 = call %struct.drm_format_info* @drm_get_format_info(i32 %27, %struct.drm_mode_fb_cmd2* %28)
  store %struct.drm_format_info* %29, %struct.drm_format_info** %8, align 8
  %30 = load %struct.drm_format_info*, %struct.drm_format_info** %8, align 8
  %31 = getelementptr inbounds %struct.drm_format_info, %struct.drm_format_info* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %18, align 4
  %35 = load %struct.radeon_device*, %struct.radeon_device** %9, align 8
  %36 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %6, align 8
  %37 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %18, align 4
  %40 = load i32, i32* %12, align 4
  %41 = call i32 @radeon_align_pitch(%struct.radeon_device* %35, i32 %38, i32 %39, i32 %40)
  %42 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %6, align 8
  %43 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  store i32 %41, i32* %45, align 4
  %46 = load %struct.radeon_device*, %struct.radeon_device** %9, align 8
  %47 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @CHIP_R600, align 8
  %50 = icmp sge i64 %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %3
  %52 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %6, align 8
  %53 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @ALIGN(i32 %54, i32 8)
  store i32 %55, i32* %17, align 4
  br label %56

56:                                               ; preds = %51, %3
  %57 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %6, align 8
  %58 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %17, align 4
  %63 = mul nsw i32 %61, %62
  store i32 %63, i32* %16, align 4
  %64 = load i32, i32* %16, align 4
  %65 = load i32, i32* @PAGE_SIZE, align 4
  %66 = call i32 @ALIGN(i32 %64, i32 %65)
  store i32 %66, i32* %15, align 4
  %67 = load %struct.radeon_device*, %struct.radeon_device** %9, align 8
  %68 = load i32, i32* %15, align 4
  %69 = load i32, i32* @RADEON_GEM_DOMAIN_VRAM, align 4
  %70 = call i32 @radeon_gem_object_create(%struct.radeon_device* %67, i32 %68, i32 0, i32 %69, i32 0, i32 1, %struct.drm_gem_object** %10)
  store i32 %70, i32* %14, align 4
  %71 = load i32, i32* %14, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %56
  %74 = load i32, i32* %15, align 4
  %75 = call i32 @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %74)
  %76 = load i32, i32* @ENOMEM, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %4, align 4
  br label %152

78:                                               ; preds = %56
  %79 = load %struct.drm_gem_object*, %struct.drm_gem_object** %10, align 8
  %80 = call %struct.radeon_bo* @gem_to_radeon_bo(%struct.drm_gem_object* %79)
  store %struct.radeon_bo* %80, %struct.radeon_bo** %11, align 8
  %81 = load i32, i32* %12, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %78
  %84 = load i32, i32* @RADEON_TILING_MACRO, align 4
  store i32 %84, i32* %13, align 4
  br label %85

85:                                               ; preds = %83, %78
  %86 = load i32, i32* %13, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %107

88:                                               ; preds = %85
  %89 = load %struct.radeon_bo*, %struct.radeon_bo** %11, align 8
  %90 = load i32, i32* %13, align 4
  %91 = load i32, i32* @RADEON_TILING_SURFACE, align 4
  %92 = or i32 %90, %91
  %93 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %6, align 8
  %94 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @radeon_bo_set_tiling_flags(%struct.radeon_bo* %89, i32 %92, i32 %97)
  store i32 %98, i32* %14, align 4
  %99 = load i32, i32* %14, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %88
  %102 = load %struct.radeon_device*, %struct.radeon_device** %9, align 8
  %103 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @dev_err(i32 %104, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %106

106:                                              ; preds = %101, %88
  br label %107

107:                                              ; preds = %106, %85
  %108 = load %struct.radeon_bo*, %struct.radeon_bo** %11, align 8
  %109 = call i32 @radeon_bo_reserve(%struct.radeon_bo* %108, i32 0)
  store i32 %109, i32* %14, align 4
  %110 = load i32, i32* %14, align 4
  %111 = icmp ne i32 %110, 0
  %112 = zext i1 %111 to i32
  %113 = call i64 @unlikely(i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %107
  br label %147

116:                                              ; preds = %107
  %117 = load %struct.radeon_bo*, %struct.radeon_bo** %11, align 8
  %118 = load i32, i32* @RADEON_GEM_DOMAIN_VRAM, align 4
  %119 = load %struct.radeon_device*, %struct.radeon_device** %9, align 8
  %120 = call i64 @ASIC_IS_AVIVO(%struct.radeon_device* %119)
  %121 = icmp ne i64 %120, 0
  %122 = zext i1 %121 to i64
  %123 = select i1 %121, i32 0, i32 134217728
  %124 = call i32 @radeon_bo_pin_restricted(%struct.radeon_bo* %117, i32 %118, i32 %123, i32* null)
  store i32 %124, i32* %14, align 4
  %125 = load i32, i32* %14, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %116
  %128 = load %struct.radeon_bo*, %struct.radeon_bo** %11, align 8
  %129 = call i32 @radeon_bo_unreserve(%struct.radeon_bo* %128)
  br label %147

130:                                              ; preds = %116
  %131 = load i32, i32* %12, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %130
  %134 = load %struct.radeon_bo*, %struct.radeon_bo** %11, align 8
  %135 = call i32 @radeon_bo_check_tiling(%struct.radeon_bo* %134, i32 0, i32 0)
  br label %136

136:                                              ; preds = %133, %130
  %137 = load %struct.radeon_bo*, %struct.radeon_bo** %11, align 8
  %138 = call i32 @radeon_bo_kmap(%struct.radeon_bo* %137, i32* null)
  store i32 %138, i32* %14, align 4
  %139 = load %struct.radeon_bo*, %struct.radeon_bo** %11, align 8
  %140 = call i32 @radeon_bo_unreserve(%struct.radeon_bo* %139)
  %141 = load i32, i32* %14, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %136
  br label %147

144:                                              ; preds = %136
  %145 = load %struct.drm_gem_object*, %struct.drm_gem_object** %10, align 8
  %146 = load %struct.drm_gem_object**, %struct.drm_gem_object*** %7, align 8
  store %struct.drm_gem_object* %145, %struct.drm_gem_object** %146, align 8
  store i32 0, i32* %4, align 4
  br label %152

147:                                              ; preds = %143, %127, %115
  %148 = load %struct.drm_gem_object*, %struct.drm_gem_object** %10, align 8
  %149 = call i32 @radeonfb_destroy_pinned_object(%struct.drm_gem_object* %148)
  %150 = load %struct.drm_gem_object**, %struct.drm_gem_object*** %7, align 8
  store %struct.drm_gem_object* null, %struct.drm_gem_object** %150, align 8
  %151 = load i32, i32* %14, align 4
  store i32 %151, i32* %4, align 4
  br label %152

152:                                              ; preds = %147, %144, %73
  %153 = load i32, i32* %4, align 4
  ret i32 %153
}

declare dso_local %struct.drm_format_info* @drm_get_format_info(i32, %struct.drm_mode_fb_cmd2*) #1

declare dso_local i32 @radeon_align_pitch(%struct.radeon_device*, i32, i32, i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @radeon_gem_object_create(%struct.radeon_device*, i32, i32, i32, i32, i32, %struct.drm_gem_object**) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local %struct.radeon_bo* @gem_to_radeon_bo(%struct.drm_gem_object*) #1

declare dso_local i32 @radeon_bo_set_tiling_flags(%struct.radeon_bo*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @radeon_bo_reserve(%struct.radeon_bo*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @radeon_bo_pin_restricted(%struct.radeon_bo*, i32, i32, i32*) #1

declare dso_local i64 @ASIC_IS_AVIVO(%struct.radeon_device*) #1

declare dso_local i32 @radeon_bo_unreserve(%struct.radeon_bo*) #1

declare dso_local i32 @radeon_bo_check_tiling(%struct.radeon_bo*, i32, i32) #1

declare dso_local i32 @radeon_bo_kmap(%struct.radeon_bo*, i32*) #1

declare dso_local i32 @radeonfb_destroy_pinned_object(%struct.drm_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
