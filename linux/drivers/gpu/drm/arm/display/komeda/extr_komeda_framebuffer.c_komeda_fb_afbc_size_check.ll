; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_framebuffer.c_komeda_fb_afbc_size_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_framebuffer.c_komeda_fb_afbc_size_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.komeda_fb = type { i32, i32, i32, i64, %struct.drm_framebuffer }
%struct.drm_framebuffer = type { i32, i32, i32, i32*, %struct.drm_gem_object**, %struct.drm_format_info* }
%struct.drm_gem_object = type { i64 }
%struct.drm_format_info = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_mode_fb_cmd2 = type { i32* }

@.str = private unnamed_addr constant [29 x i8] c"Failed to lookup GEM object\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@AFBC_FORMAT_MOD_BLOCK_SIZE_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Invalid AFBC_FORMAT_MOD_BLOCK_SIZE: %lld.\0A\00", align 1
@AFBC_FORMAT_MOD_TILED = common dso_local global i32 0, align 4
@AFBC_TH_LAYOUT_ALIGNMENT = common dso_local global i32 0, align 4
@AFBC_TH_BODY_START_ALIGNMENT = common dso_local global i32 0, align 4
@AFBC_BODY_START_ALIGNMENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"afbc offset alignment check failed.\0A\00", align 1
@AFBC_SUPERBLK_PIXELS = common dso_local global i32 0, align 4
@AFBC_HEADER_SIZE = common dso_local global i32 0, align 4
@AFBC_SUPERBLK_ALIGNMENT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [59 x i8] c"afbc size check failed, obj_size: 0x%zx. min_size 0x%llx.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.komeda_fb*, %struct.drm_file*, %struct.drm_mode_fb_cmd2*)* @komeda_fb_afbc_size_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @komeda_fb_afbc_size_check(%struct.komeda_fb* %0, %struct.drm_file* %1, %struct.drm_mode_fb_cmd2* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.komeda_fb*, align 8
  %6 = alloca %struct.drm_file*, align 8
  %7 = alloca %struct.drm_mode_fb_cmd2*, align 8
  %8 = alloca %struct.drm_framebuffer*, align 8
  %9 = alloca %struct.drm_format_info*, align 8
  %10 = alloca %struct.drm_gem_object*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store %struct.komeda_fb* %0, %struct.komeda_fb** %5, align 8
  store %struct.drm_file* %1, %struct.drm_file** %6, align 8
  store %struct.drm_mode_fb_cmd2* %2, %struct.drm_mode_fb_cmd2** %7, align 8
  %17 = load %struct.komeda_fb*, %struct.komeda_fb** %5, align 8
  %18 = getelementptr inbounds %struct.komeda_fb, %struct.komeda_fb* %17, i32 0, i32 4
  store %struct.drm_framebuffer* %18, %struct.drm_framebuffer** %8, align 8
  %19 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %20 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %19, i32 0, i32 5
  %21 = load %struct.drm_format_info*, %struct.drm_format_info** %20, align 8
  store %struct.drm_format_info* %21, %struct.drm_format_info** %9, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %22 = load %struct.drm_file*, %struct.drm_file** %6, align 8
  %23 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %24 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_file* %22, i32 %27)
  store %struct.drm_gem_object* %28, %struct.drm_gem_object** %10, align 8
  %29 = load %struct.drm_gem_object*, %struct.drm_gem_object** %10, align 8
  %30 = icmp ne %struct.drm_gem_object* %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %3
  %32 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @ENOENT, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %161

35:                                               ; preds = %3
  %36 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %37 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @AFBC_FORMAT_MOD_BLOCK_SIZE_MASK, align 4
  %40 = and i32 %38, %39
  switch i32 %40, label %43 [
    i32 128, label %41
    i32 129, label %42
  ]

41:                                               ; preds = %35
  store i32 32, i32* %11, align 4
  store i32 8, i32* %12, align 4
  br label %50

42:                                               ; preds = %35
  store i32 16, i32* %11, align 4
  store i32 16, i32* %12, align 4
  br label %50

43:                                               ; preds = %35
  %44 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %45 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @AFBC_FORMAT_MOD_BLOCK_SIZE_MASK, align 4
  %48 = and i32 %46, %47
  %49 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %43, %42, %41
  %51 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %52 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @AFBC_FORMAT_MOD_TILED, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %50
  %58 = load i32, i32* @AFBC_TH_LAYOUT_ALIGNMENT, align 4
  %59 = load i32, i32* %11, align 4
  %60 = mul nsw i32 %59, %58
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* @AFBC_TH_LAYOUT_ALIGNMENT, align 4
  %62 = load i32, i32* %12, align 4
  %63 = mul nsw i32 %62, %61
  store i32 %63, i32* %12, align 4
  %64 = load i32, i32* @AFBC_TH_BODY_START_ALIGNMENT, align 4
  store i32 %64, i32* %13, align 4
  br label %67

65:                                               ; preds = %50
  %66 = load i32, i32* @AFBC_BODY_START_ALIGNMENT, align 4
  store i32 %66, i32* %13, align 4
  br label %67

67:                                               ; preds = %65, %57
  %68 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %69 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %11, align 4
  %72 = call i32 @ALIGN(i32 %70, i32 %71)
  %73 = load %struct.komeda_fb*, %struct.komeda_fb** %5, align 8
  %74 = getelementptr inbounds %struct.komeda_fb, %struct.komeda_fb* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %76 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %12, align 4
  %79 = call i32 @ALIGN(i32 %77, i32 %78)
  %80 = load %struct.komeda_fb*, %struct.komeda_fb** %5, align 8
  %81 = getelementptr inbounds %struct.komeda_fb, %struct.komeda_fb* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  %82 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %83 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %82, i32 0, i32 3
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %13, align 4
  %88 = srem i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %67
  %91 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  br label %156

92:                                               ; preds = %67
  %93 = load %struct.komeda_fb*, %struct.komeda_fb** %5, align 8
  %94 = getelementptr inbounds %struct.komeda_fb, %struct.komeda_fb* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.komeda_fb*, %struct.komeda_fb** %5, align 8
  %97 = getelementptr inbounds %struct.komeda_fb, %struct.komeda_fb* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = mul nsw i32 %95, %98
  %100 = load i32, i32* @AFBC_SUPERBLK_PIXELS, align 4
  %101 = sdiv i32 %99, %100
  store i32 %101, i32* %14, align 4
  %102 = load i32, i32* %14, align 4
  %103 = load i32, i32* @AFBC_HEADER_SIZE, align 4
  %104 = mul nsw i32 %102, %103
  %105 = load i32, i32* %13, align 4
  %106 = call i32 @ALIGN(i32 %104, i32 %105)
  %107 = load %struct.komeda_fb*, %struct.komeda_fb** %5, align 8
  %108 = getelementptr inbounds %struct.komeda_fb, %struct.komeda_fb* %107, i32 0, i32 2
  store i32 %106, i32* %108, align 8
  %109 = load %struct.drm_format_info*, %struct.drm_format_info** %9, align 8
  %110 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %111 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @komeda_get_afbc_format_bpp(%struct.drm_format_info* %109, i32 %112)
  store i32 %113, i32* %15, align 4
  %114 = load %struct.komeda_fb*, %struct.komeda_fb** %5, align 8
  %115 = getelementptr inbounds %struct.komeda_fb, %struct.komeda_fb* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* %14, align 4
  %118 = load i32, i32* %15, align 4
  %119 = load i32, i32* @AFBC_SUPERBLK_PIXELS, align 4
  %120 = mul nsw i32 %118, %119
  %121 = sdiv i32 %120, 8
  %122 = load i32, i32* @AFBC_SUPERBLK_ALIGNMENT, align 4
  %123 = call i32 @ALIGN(i32 %121, i32 %122)
  %124 = mul nsw i32 %117, %123
  %125 = add nsw i32 %116, %124
  %126 = sext i32 %125 to i64
  %127 = load %struct.komeda_fb*, %struct.komeda_fb** %5, align 8
  %128 = getelementptr inbounds %struct.komeda_fb, %struct.komeda_fb* %127, i32 0, i32 3
  store i64 %126, i64* %128, align 8
  %129 = load %struct.komeda_fb*, %struct.komeda_fb** %5, align 8
  %130 = getelementptr inbounds %struct.komeda_fb, %struct.komeda_fb* %129, i32 0, i32 3
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %133 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %132, i32 0, i32 3
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 0
  %136 = load i32, i32* %135, align 4
  %137 = sext i32 %136 to i64
  %138 = add nsw i64 %131, %137
  store i64 %138, i64* %16, align 8
  %139 = load i64, i64* %16, align 8
  %140 = load %struct.drm_gem_object*, %struct.drm_gem_object** %10, align 8
  %141 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = icmp sgt i64 %139, %142
  br i1 %143, label %144, label %150

144:                                              ; preds = %92
  %145 = load %struct.drm_gem_object*, %struct.drm_gem_object** %10, align 8
  %146 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* %16, align 8
  %149 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.3, i64 0, i64 0), i64 %147, i64 %148)
  br label %156

150:                                              ; preds = %92
  %151 = load %struct.drm_gem_object*, %struct.drm_gem_object** %10, align 8
  %152 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %153 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %152, i32 0, i32 4
  %154 = load %struct.drm_gem_object**, %struct.drm_gem_object*** %153, align 8
  %155 = getelementptr inbounds %struct.drm_gem_object*, %struct.drm_gem_object** %154, i64 0
  store %struct.drm_gem_object* %151, %struct.drm_gem_object** %155, align 8
  store i32 0, i32* %4, align 4
  br label %161

156:                                              ; preds = %144, %90
  %157 = load %struct.drm_gem_object*, %struct.drm_gem_object** %10, align 8
  %158 = call i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object* %157)
  %159 = load i32, i32* @EINVAL, align 4
  %160 = sub nsw i32 0, %159
  store i32 %160, i32* %4, align 4
  br label %161

161:                                              ; preds = %156, %150, %31
  %162 = load i32, i32* %4, align 4
  ret i32 %162
}

declare dso_local %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_file*, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, ...) #1

declare dso_local i32 @WARN(i32, i8*, i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @komeda_get_afbc_format_bpp(%struct.drm_format_info*, i32) #1

declare dso_local i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
