; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_framebuffer.c_komeda_fb_none_afbc_size_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_framebuffer.c_komeda_fb_none_afbc_size_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.komeda_dev = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.komeda_fb = type { %struct.drm_framebuffer }
%struct.drm_framebuffer = type { i64*, %struct.drm_format_info*, i32, %struct.drm_gem_object**, i32 }
%struct.drm_format_info = type { i64 }
%struct.drm_gem_object = type { i64 }
%struct.drm_file = type { i32 }
%struct.drm_mode_fb_cmd2 = type { i32* }
%struct.TYPE_4__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Failed to lookup GEM object\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Pitch[%d]: 0x%x doesn't align to 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [73 x i8] c"The fb->obj[%d] size: 0x%zx lower than the minimum requirement: 0x%llx.\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"The pitch[1] and [2] are not same\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.komeda_dev*, %struct.komeda_fb*, %struct.drm_file*, %struct.drm_mode_fb_cmd2*)* @komeda_fb_none_afbc_size_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @komeda_fb_none_afbc_size_check(%struct.komeda_dev* %0, %struct.komeda_fb* %1, %struct.drm_file* %2, %struct.drm_mode_fb_cmd2* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.komeda_dev*, align 8
  %7 = alloca %struct.komeda_fb*, align 8
  %8 = alloca %struct.drm_file*, align 8
  %9 = alloca %struct.drm_mode_fb_cmd2*, align 8
  %10 = alloca %struct.drm_framebuffer*, align 8
  %11 = alloca %struct.drm_format_info*, align 8
  %12 = alloca %struct.drm_gem_object*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.komeda_dev* %0, %struct.komeda_dev** %6, align 8
  store %struct.komeda_fb* %1, %struct.komeda_fb** %7, align 8
  store %struct.drm_file* %2, %struct.drm_file** %8, align 8
  store %struct.drm_mode_fb_cmd2* %3, %struct.drm_mode_fb_cmd2** %9, align 8
  %16 = load %struct.komeda_fb*, %struct.komeda_fb** %7, align 8
  %17 = getelementptr inbounds %struct.komeda_fb, %struct.komeda_fb* %16, i32 0, i32 0
  store %struct.drm_framebuffer* %17, %struct.drm_framebuffer** %10, align 8
  %18 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %10, align 8
  %19 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %18, i32 0, i32 1
  %20 = load %struct.drm_format_info*, %struct.drm_format_info** %19, align 8
  store %struct.drm_format_info* %20, %struct.drm_format_info** %11, align 8
  %21 = load %struct.komeda_fb*, %struct.komeda_fb** %7, align 8
  %22 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %10, align 8
  %23 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %10, align 8
  %26 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @komeda_fb_check_src_coords(%struct.komeda_fb* %21, i32 0, i32 0, i32 %24, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %4
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %149

33:                                               ; preds = %4
  store i64 0, i64* %13, align 8
  br label %34

34:                                               ; preds = %121, %33
  %35 = load i64, i64* %13, align 8
  %36 = load %struct.drm_format_info*, %struct.drm_format_info** %11, align 8
  %37 = getelementptr inbounds %struct.drm_format_info, %struct.drm_format_info* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ult i64 %35, %38
  br i1 %39, label %40, label %124

40:                                               ; preds = %34
  %41 = load %struct.drm_file*, %struct.drm_file** %8, align 8
  %42 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %9, align 8
  %43 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i64, i64* %13, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = call %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_file* %41, i32 %47)
  store %struct.drm_gem_object* %48, %struct.drm_gem_object** %12, align 8
  %49 = load %struct.drm_gem_object*, %struct.drm_gem_object** %12, align 8
  %50 = icmp ne %struct.drm_gem_object* %49, null
  br i1 %50, label %55, label %51

51:                                               ; preds = %40
  %52 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %53 = load i32, i32* @ENOENT, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %5, align 4
  br label %149

55:                                               ; preds = %40
  %56 = load %struct.drm_gem_object*, %struct.drm_gem_object** %12, align 8
  %57 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %10, align 8
  %58 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %57, i32 0, i32 3
  %59 = load %struct.drm_gem_object**, %struct.drm_gem_object*** %58, align 8
  %60 = load i64, i64* %13, align 8
  %61 = getelementptr inbounds %struct.drm_gem_object*, %struct.drm_gem_object** %59, i64 %60
  store %struct.drm_gem_object* %56, %struct.drm_gem_object** %61, align 8
  %62 = load %struct.drm_format_info*, %struct.drm_format_info** %11, align 8
  %63 = load i64, i64* %13, align 8
  %64 = call i64 @drm_format_info_block_height(%struct.drm_format_info* %62, i64 %63)
  store i64 %64, i64* %14, align 8
  %65 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %10, align 8
  %66 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %65, i32 0, i32 0
  %67 = load i64*, i64** %66, align 8
  %68 = load i64, i64* %13, align 8
  %69 = getelementptr inbounds i64, i64* %67, i64 %68
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* %14, align 8
  %72 = mul i64 %70, %71
  %73 = load %struct.komeda_dev*, %struct.komeda_dev** %6, align 8
  %74 = getelementptr inbounds %struct.komeda_dev, %struct.komeda_dev* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = urem i64 %72, %76
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %94

79:                                               ; preds = %55
  %80 = load i64, i64* %13, align 8
  %81 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %10, align 8
  %82 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %81, i32 0, i32 0
  %83 = load i64*, i64** %82, align 8
  %84 = load i64, i64* %13, align 8
  %85 = getelementptr inbounds i64, i64* %83, i64 %84
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.komeda_dev*, %struct.komeda_dev** %6, align 8
  %88 = getelementptr inbounds %struct.komeda_dev, %struct.komeda_dev* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i64 %80, i64 %86, i64 %90)
  %92 = load i32, i32* @EINVAL, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %5, align 4
  br label %149

94:                                               ; preds = %55
  %95 = load %struct.komeda_fb*, %struct.komeda_fb** %7, align 8
  %96 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %10, align 8
  %97 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = load i64, i64* %13, align 8
  %100 = call i64 @komeda_fb_get_pixel_addr(%struct.komeda_fb* %95, i32 0, i32 %98, i64 %99)
  %101 = load %struct.drm_gem_object*, %struct.drm_gem_object** %12, align 8
  %102 = call %struct.TYPE_4__* @to_drm_gem_cma_obj(%struct.drm_gem_object* %101)
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = sub nsw i64 %100, %104
  store i64 %105, i64* %15, align 8
  %106 = load %struct.drm_gem_object*, %struct.drm_gem_object** %12, align 8
  %107 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* %15, align 8
  %110 = icmp slt i64 %108, %109
  br i1 %110, label %111, label %120

111:                                              ; preds = %94
  %112 = load i64, i64* %13, align 8
  %113 = load %struct.drm_gem_object*, %struct.drm_gem_object** %12, align 8
  %114 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* %15, align 8
  %117 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.2, i64 0, i64 0), i64 %112, i64 %115, i64 %116)
  %118 = load i32, i32* @EINVAL, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %5, align 4
  br label %149

120:                                              ; preds = %94
  br label %121

121:                                              ; preds = %120
  %122 = load i64, i64* %13, align 8
  %123 = add i64 %122, 1
  store i64 %123, i64* %13, align 8
  br label %34

124:                                              ; preds = %34
  %125 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %10, align 8
  %126 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %125, i32 0, i32 1
  %127 = load %struct.drm_format_info*, %struct.drm_format_info** %126, align 8
  %128 = getelementptr inbounds %struct.drm_format_info, %struct.drm_format_info* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = icmp eq i64 %129, 3
  br i1 %130, label %131, label %148

131:                                              ; preds = %124
  %132 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %10, align 8
  %133 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %132, i32 0, i32 0
  %134 = load i64*, i64** %133, align 8
  %135 = getelementptr inbounds i64, i64* %134, i64 1
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %10, align 8
  %138 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %137, i32 0, i32 0
  %139 = load i64*, i64** %138, align 8
  %140 = getelementptr inbounds i64, i64* %139, i64 2
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %136, %141
  br i1 %142, label %143, label %147

143:                                              ; preds = %131
  %144 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %145 = load i32, i32* @EINVAL, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %5, align 4
  br label %149

147:                                              ; preds = %131
  br label %148

148:                                              ; preds = %147, %124
  store i32 0, i32* %5, align 4
  br label %149

149:                                              ; preds = %148, %143, %111, %79, %51, %30
  %150 = load i32, i32* %5, align 4
  ret i32 %150
}

declare dso_local i64 @komeda_fb_check_src_coords(%struct.komeda_fb*, i32, i32, i32, i32) #1

declare dso_local %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_file*, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, ...) #1

declare dso_local i64 @drm_format_info_block_height(%struct.drm_format_info*, i64) #1

declare dso_local i64 @komeda_fb_get_pixel_addr(%struct.komeda_fb*, i32, i32, i64) #1

declare dso_local %struct.TYPE_4__* @to_drm_gem_cma_obj(%struct.drm_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
