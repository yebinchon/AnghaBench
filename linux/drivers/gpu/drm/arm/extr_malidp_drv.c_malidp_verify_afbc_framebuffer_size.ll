; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/extr_malidp_drv.c_malidp_verify_afbc_framebuffer_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/extr_malidp_drv.c_malidp_verify_afbc_framebuffer_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_mode_fb_cmd2 = type { i32*, i32, i32, i32*, i32* }
%struct.drm_format_info = type { i32 }
%struct.drm_gem_object = type { i32 }

@AFBC_SIZE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"AFBC superblock size is not supported\0A\00", align 1
@BITS_PER_BYTE = common dso_local global i32 0, align 4
@AFBC_HEADER_SIZE = common dso_local global i32 0, align 4
@AFBC_SUPERBLK_ALIGNMENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [90 x i8] c"Invalid value of (pitch * BITS_PER_BYTE) (=%u) should be same as width (=%u) * bpp (=%u)\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Failed to lookup GEM object\0A\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"buffer size (%zu) too small for AFBC buffer size = %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, %struct.drm_file*, %struct.drm_mode_fb_cmd2*)* @malidp_verify_afbc_framebuffer_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @malidp_verify_afbc_framebuffer_size(%struct.drm_device* %0, %struct.drm_file* %1, %struct.drm_mode_fb_cmd2* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.drm_file*, align 8
  %7 = alloca %struct.drm_mode_fb_cmd2*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.drm_format_info*, align 8
  %10 = alloca %struct.drm_gem_object*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store %struct.drm_file* %1, %struct.drm_file** %6, align 8
  store %struct.drm_mode_fb_cmd2* %2, %struct.drm_mode_fb_cmd2** %7, align 8
  store i32 0, i32* %8, align 4
  store %struct.drm_gem_object* null, %struct.drm_gem_object** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %16 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %17 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @AFBC_SIZE_MASK, align 4
  %22 = and i32 %20, %21
  switch i32 %22, label %24 [
    i32 128, label %23
  ]

23:                                               ; preds = %3
  store i32 16, i32* %12, align 4
  store i32 16, i32* %13, align 4
  br label %26

24:                                               ; preds = %3
  %25 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %119

26:                                               ; preds = %23
  %27 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %28 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %29 = call %struct.drm_format_info* @drm_get_format_info(%struct.drm_device* %27, %struct.drm_mode_fb_cmd2* %28)
  store %struct.drm_format_info* %29, %struct.drm_format_info** %9, align 8
  %30 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %31 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %13, align 4
  %34 = sdiv i32 %32, %33
  %35 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %36 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %12, align 4
  %39 = sdiv i32 %37, %38
  %40 = mul nsw i32 %34, %39
  store i32 %40, i32* %8, align 4
  %41 = load %struct.drm_format_info*, %struct.drm_format_info** %9, align 8
  %42 = getelementptr inbounds %struct.drm_format_info, %struct.drm_format_info* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @malidp_format_get_bpp(i32 %43)
  store i32 %44, i32* %15, align 4
  %45 = load i32, i32* %15, align 4
  %46 = load i32, i32* %13, align 4
  %47 = mul nsw i32 %45, %46
  %48 = load i32, i32* %12, align 4
  %49 = mul nsw i32 %47, %48
  %50 = load i32, i32* @BITS_PER_BYTE, align 4
  %51 = sdiv i32 %49, %50
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @AFBC_HEADER_SIZE, align 4
  %54 = mul nsw i32 %52, %53
  %55 = load i32, i32* @AFBC_SUPERBLK_ALIGNMENT, align 4
  %56 = call i32 @ALIGN(i32 %54, i32 %55)
  store i32 %56, i32* %14, align 4
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* @AFBC_SUPERBLK_ALIGNMENT, align 4
  %60 = call i32 @ALIGN(i32 %58, i32 %59)
  %61 = mul nsw i32 %57, %60
  %62 = load i32, i32* %14, align 4
  %63 = add nsw i32 %62, %61
  store i32 %63, i32* %14, align 4
  %64 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %65 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %15, align 4
  %68 = mul nsw i32 %66, %67
  %69 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %70 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %69, i32 0, i32 3
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @BITS_PER_BYTE, align 4
  %75 = mul nsw i32 %73, %74
  %76 = icmp ne i32 %68, %75
  br i1 %76, label %77, label %90

77:                                               ; preds = %26
  %78 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %79 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %78, i32 0, i32 3
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @BITS_PER_BYTE, align 4
  %84 = mul nsw i32 %82, %83
  %85 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %86 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* %15, align 4
  %89 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.1, i64 0, i64 0), i32 %84, i32 %87, i32 %88)
  store i32 0, i32* %4, align 4
  br label %119

90:                                               ; preds = %26
  %91 = load %struct.drm_file*, %struct.drm_file** %6, align 8
  %92 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %93 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %92, i32 0, i32 4
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 0
  %96 = load i32, i32* %95, align 4
  %97 = call %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_file* %91, i32 %96)
  store %struct.drm_gem_object* %97, %struct.drm_gem_object** %10, align 8
  %98 = load %struct.drm_gem_object*, %struct.drm_gem_object** %10, align 8
  %99 = icmp ne %struct.drm_gem_object* %98, null
  br i1 %99, label %102, label %100

100:                                              ; preds = %90
  %101 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %119

102:                                              ; preds = %90
  %103 = load %struct.drm_gem_object*, %struct.drm_gem_object** %10, align 8
  %104 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %14, align 4
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %108, label %116

108:                                              ; preds = %102
  %109 = load %struct.drm_gem_object*, %struct.drm_gem_object** %10, align 8
  %110 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %14, align 4
  %113 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), i32 %111, i32 %112)
  %114 = load %struct.drm_gem_object*, %struct.drm_gem_object** %10, align 8
  %115 = call i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object* %114)
  store i32 0, i32* %4, align 4
  br label %119

116:                                              ; preds = %102
  %117 = load %struct.drm_gem_object*, %struct.drm_gem_object** %10, align 8
  %118 = call i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object* %117)
  store i32 1, i32* %4, align 4
  br label %119

119:                                              ; preds = %116, %108, %100, %77, %24
  %120 = load i32, i32* %4, align 4
  ret i32 %120
}

declare dso_local i32 @DRM_DEBUG_KMS(i8*, ...) #1

declare dso_local %struct.drm_format_info* @drm_get_format_info(%struct.drm_device*, %struct.drm_mode_fb_cmd2*) #1

declare dso_local i32 @malidp_format_get_bpp(i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_file*, i32) #1

declare dso_local i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
