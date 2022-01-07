; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_plane.c___setplane_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_plane.c___setplane_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { i32 }
%struct.drm_crtc = type { i32 }
%struct.drm_framebuffer = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.drm_format_name_buf = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"Invalid crtc for plane\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Invalid pixel format %s, modifier 0x%llx\0A\00", align 1
@INT_MAX = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [38 x i8] c"Invalid CRTC coordinates %ux%u+%d+%d\0A\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_plane*, %struct.drm_crtc*, %struct.drm_framebuffer*, i64, i64, i64, i64, i64, i64, i64, i64)* @__setplane_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__setplane_check(%struct.drm_plane* %0, %struct.drm_crtc* %1, %struct.drm_framebuffer* %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7, i64 %8, i64 %9, i64 %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca %struct.drm_plane*, align 8
  %14 = alloca %struct.drm_crtc*, align 8
  %15 = alloca %struct.drm_framebuffer*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca %struct.drm_format_name_buf, align 4
  store %struct.drm_plane* %0, %struct.drm_plane** %13, align 8
  store %struct.drm_crtc* %1, %struct.drm_crtc** %14, align 8
  store %struct.drm_framebuffer* %2, %struct.drm_framebuffer** %15, align 8
  store i64 %3, i64* %16, align 8
  store i64 %4, i64* %17, align 8
  store i64 %5, i64* %18, align 8
  store i64 %6, i64* %19, align 8
  store i64 %7, i64* %20, align 8
  store i64 %8, i64* %21, align 8
  store i64 %9, i64* %22, align 8
  store i64 %10, i64* %23, align 8
  %26 = load %struct.drm_plane*, %struct.drm_plane** %13, align 8
  %27 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.drm_crtc*, %struct.drm_crtc** %14, align 8
  %30 = call i32 @drm_crtc_mask(%struct.drm_crtc* %29)
  %31 = and i32 %28, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %11
  %34 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %12, align 4
  br label %102

37:                                               ; preds = %11
  %38 = load %struct.drm_plane*, %struct.drm_plane** %13, align 8
  %39 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %15, align 8
  %40 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %15, align 8
  %45 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @drm_plane_check_pixel_format(%struct.drm_plane* %38, i32 %43, i32 %46)
  store i32 %47, i32* %24, align 4
  %48 = load i32, i32* %24, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %62

50:                                               ; preds = %37
  %51 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %15, align 8
  %52 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %51, i32 0, i32 1
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @drm_get_format_name(i32 %55, %struct.drm_format_name_buf* %25)
  %57 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %15, align 8
  %58 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %56, i32 %59)
  %61 = load i32, i32* %24, align 4
  store i32 %61, i32* %12, align 4
  br label %102

62:                                               ; preds = %37
  %63 = load i64, i64* %18, align 8
  %64 = load i64, i64* @INT_MAX, align 8
  %65 = icmp sgt i64 %63, %64
  br i1 %65, label %82, label %66

66:                                               ; preds = %62
  %67 = load i64, i64* %16, align 8
  %68 = load i64, i64* @INT_MAX, align 8
  %69 = load i64, i64* %18, align 8
  %70 = sub nsw i64 %68, %69
  %71 = icmp sgt i64 %67, %70
  br i1 %71, label %82, label %72

72:                                               ; preds = %66
  %73 = load i64, i64* %19, align 8
  %74 = load i64, i64* @INT_MAX, align 8
  %75 = icmp sgt i64 %73, %74
  br i1 %75, label %82, label %76

76:                                               ; preds = %72
  %77 = load i64, i64* %17, align 8
  %78 = load i64, i64* @INT_MAX, align 8
  %79 = load i64, i64* %19, align 8
  %80 = sub nsw i64 %78, %79
  %81 = icmp sgt i64 %77, %80
  br i1 %81, label %82, label %90

82:                                               ; preds = %76, %72, %66, %62
  %83 = load i64, i64* %18, align 8
  %84 = load i64, i64* %19, align 8
  %85 = load i64, i64* %16, align 8
  %86 = load i64, i64* %17, align 8
  %87 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i64 %83, i64 %84, i64 %85, i64 %86)
  %88 = load i32, i32* @ERANGE, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %12, align 4
  br label %102

90:                                               ; preds = %76
  %91 = load i64, i64* %20, align 8
  %92 = load i64, i64* %21, align 8
  %93 = load i64, i64* %22, align 8
  %94 = load i64, i64* %23, align 8
  %95 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %15, align 8
  %96 = call i32 @drm_framebuffer_check_src_coords(i64 %91, i64 %92, i64 %93, i64 %94, %struct.drm_framebuffer* %95)
  store i32 %96, i32* %24, align 4
  %97 = load i32, i32* %24, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %90
  %100 = load i32, i32* %24, align 4
  store i32 %100, i32* %12, align 4
  br label %102

101:                                              ; preds = %90
  store i32 0, i32* %12, align 4
  br label %102

102:                                              ; preds = %101, %99, %82, %50, %33
  %103 = load i32, i32* %12, align 4
  ret i32 %103
}

declare dso_local i32 @drm_crtc_mask(%struct.drm_crtc*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, ...) #1

declare dso_local i32 @drm_plane_check_pixel_format(%struct.drm_plane*, i32, i32) #1

declare dso_local i32 @drm_get_format_name(i32, %struct.drm_format_name_buf*) #1

declare dso_local i32 @drm_framebuffer_check_src_coords(i64, i64, i64, i64, %struct.drm_framebuffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
