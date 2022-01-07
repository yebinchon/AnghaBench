; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_framebuffer.c_komeda_fb_check_src_coords.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_framebuffer.c_komeda_fb_check_src_coords.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.komeda_fb = type { %struct.drm_framebuffer }
%struct.drm_framebuffer = type { i64, i64, %struct.drm_format_info* }
%struct.drm_format_info = type { i64, i64, i32 }

@.str = private unnamed_addr constant [28 x i8] c"Invalid source coordinate.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [68 x i8] c"Wrong subsampling dimension x:%d, y:%d, w:%d, h:%d for format: %x.\0A\00", align 1
@.str.2 = private unnamed_addr constant [72 x i8] c"x:%d, y:%d, w:%d, h:%d should be multiple of block_w/h for format: %x.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @komeda_fb_check_src_coords(%struct.komeda_fb* %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.komeda_fb*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.drm_framebuffer*, align 8
  %13 = alloca %struct.drm_format_info*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.komeda_fb* %0, %struct.komeda_fb** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %16 = load %struct.komeda_fb*, %struct.komeda_fb** %7, align 8
  %17 = getelementptr inbounds %struct.komeda_fb, %struct.komeda_fb* %16, i32 0, i32 0
  store %struct.drm_framebuffer* %17, %struct.drm_framebuffer** %12, align 8
  %18 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %12, align 8
  %19 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %18, i32 0, i32 2
  %20 = load %struct.drm_format_info*, %struct.drm_format_info** %19, align 8
  store %struct.drm_format_info* %20, %struct.drm_format_info** %13, align 8
  %21 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %12, align 8
  %22 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %21, i32 0, i32 2
  %23 = load %struct.drm_format_info*, %struct.drm_format_info** %22, align 8
  %24 = call i64 @drm_format_info_block_width(%struct.drm_format_info* %23, i32 0)
  store i64 %24, i64* %14, align 8
  %25 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %12, align 8
  %26 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %25, i32 0, i32 2
  %27 = load %struct.drm_format_info*, %struct.drm_format_info** %26, align 8
  %28 = call i64 @drm_format_info_block_height(%struct.drm_format_info* %27, i32 0)
  store i64 %28, i64* %15, align 8
  %29 = load i64, i64* %8, align 8
  %30 = load i64, i64* %10, align 8
  %31 = add nsw i64 %29, %30
  %32 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %12, align 8
  %33 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp sgt i64 %31, %34
  br i1 %35, label %44, label %36

36:                                               ; preds = %5
  %37 = load i64, i64* %9, align 8
  %38 = load i64, i64* %11, align 8
  %39 = add nsw i64 %37, %38
  %40 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %12, align 8
  %41 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp sgt i64 %39, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %36, %5
  %45 = call i32 (i8*, ...) @DRM_DEBUG_ATOMIC(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %6, align 4
  br label %119

48:                                               ; preds = %36
  %49 = load i64, i64* %8, align 8
  %50 = load %struct.drm_format_info*, %struct.drm_format_info** %13, align 8
  %51 = getelementptr inbounds %struct.drm_format_info, %struct.drm_format_info* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = srem i64 %49, %52
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %76, label %55

55:                                               ; preds = %48
  %56 = load i64, i64* %10, align 8
  %57 = load %struct.drm_format_info*, %struct.drm_format_info** %13, align 8
  %58 = getelementptr inbounds %struct.drm_format_info, %struct.drm_format_info* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = srem i64 %56, %59
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %76, label %62

62:                                               ; preds = %55
  %63 = load i64, i64* %9, align 8
  %64 = load %struct.drm_format_info*, %struct.drm_format_info** %13, align 8
  %65 = getelementptr inbounds %struct.drm_format_info, %struct.drm_format_info* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = srem i64 %63, %66
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %76, label %69

69:                                               ; preds = %62
  %70 = load i64, i64* %11, align 8
  %71 = load %struct.drm_format_info*, %struct.drm_format_info** %13, align 8
  %72 = getelementptr inbounds %struct.drm_format_info, %struct.drm_format_info* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = srem i64 %70, %73
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %87

76:                                               ; preds = %69, %62, %55, %48
  %77 = load i64, i64* %8, align 8
  %78 = load i64, i64* %9, align 8
  %79 = load i64, i64* %10, align 8
  %80 = load i64, i64* %11, align 8
  %81 = load %struct.drm_format_info*, %struct.drm_format_info** %13, align 8
  %82 = getelementptr inbounds %struct.drm_format_info, %struct.drm_format_info* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = call i32 (i8*, ...) @DRM_DEBUG_ATOMIC(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0), i64 %77, i64 %78, i64 %79, i64 %80, i32 %83)
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %6, align 4
  br label %119

87:                                               ; preds = %69
  %88 = load i64, i64* %8, align 8
  %89 = load i64, i64* %14, align 8
  %90 = srem i64 %88, %89
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %107, label %92

92:                                               ; preds = %87
  %93 = load i64, i64* %10, align 8
  %94 = load i64, i64* %14, align 8
  %95 = srem i64 %93, %94
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %107, label %97

97:                                               ; preds = %92
  %98 = load i64, i64* %9, align 8
  %99 = load i64, i64* %15, align 8
  %100 = srem i64 %98, %99
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %107, label %102

102:                                              ; preds = %97
  %103 = load i64, i64* %11, align 8
  %104 = load i64, i64* %15, align 8
  %105 = srem i64 %103, %104
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %118

107:                                              ; preds = %102, %97, %92, %87
  %108 = load i64, i64* %8, align 8
  %109 = load i64, i64* %9, align 8
  %110 = load i64, i64* %10, align 8
  %111 = load i64, i64* %11, align 8
  %112 = load %struct.drm_format_info*, %struct.drm_format_info** %13, align 8
  %113 = getelementptr inbounds %struct.drm_format_info, %struct.drm_format_info* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = call i32 (i8*, ...) @DRM_DEBUG_ATOMIC(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.2, i64 0, i64 0), i64 %108, i64 %109, i64 %110, i64 %111, i32 %114)
  %116 = load i32, i32* @EINVAL, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %6, align 4
  br label %119

118:                                              ; preds = %102
  store i32 0, i32* %6, align 4
  br label %119

119:                                              ; preds = %118, %107, %76, %44
  %120 = load i32, i32* %6, align 4
  ret i32 %120
}

declare dso_local i64 @drm_format_info_block_width(%struct.drm_format_info*, i32) #1

declare dso_local i64 @drm_format_info_block_height(%struct.drm_format_info*, i32) #1

declare dso_local i32 @DRM_DEBUG_ATOMIC(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
