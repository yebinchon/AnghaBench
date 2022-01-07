; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_formats.c_dpu_format_populate_layout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_formats.c_dpu_format_populate_layout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_gem_address_space = type { i32 }
%struct.drm_framebuffer = type { i64, i64, i32 }
%struct.dpu_hw_fmt_layout = type { i32*, i32 }

@DPU_MAX_PLANES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"invalid arguments\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DPU_MAX_IMG_WIDTH = common dso_local global i64 0, align 8
@DPU_MAX_IMG_HEIGHT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"image dimensions outside max range\0A\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dpu_format_populate_layout(%struct.msm_gem_address_space* %0, %struct.drm_framebuffer* %1, %struct.dpu_hw_fmt_layout* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.msm_gem_address_space*, align 8
  %6 = alloca %struct.drm_framebuffer*, align 8
  %7 = alloca %struct.dpu_hw_fmt_layout*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.msm_gem_address_space* %0, %struct.msm_gem_address_space** %5, align 8
  store %struct.drm_framebuffer* %1, %struct.drm_framebuffer** %6, align 8
  store %struct.dpu_hw_fmt_layout* %2, %struct.dpu_hw_fmt_layout** %7, align 8
  %13 = load i32, i32* @DPU_MAX_PLANES, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %8, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %9, align 8
  %17 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %18 = icmp ne %struct.drm_framebuffer* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load %struct.dpu_hw_fmt_layout*, %struct.dpu_hw_fmt_layout** %7, align 8
  %21 = icmp ne %struct.dpu_hw_fmt_layout* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %19, %3
  %23 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %123

26:                                               ; preds = %19
  %27 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %28 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @DPU_MAX_IMG_WIDTH, align 8
  %31 = icmp sgt i64 %29, %30
  br i1 %31, label %38, label %32

32:                                               ; preds = %26
  %33 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %34 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @DPU_MAX_IMG_HEIGHT, align 8
  %37 = icmp sgt i64 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %32, %26
  %39 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i32, i32* @ERANGE, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %123

42:                                               ; preds = %32
  %43 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %44 = call i32 @msm_framebuffer_format(%struct.drm_framebuffer* %43)
  %45 = call i32 @to_dpu_format(i32 %44)
  %46 = load %struct.dpu_hw_fmt_layout*, %struct.dpu_hw_fmt_layout** %7, align 8
  %47 = getelementptr inbounds %struct.dpu_hw_fmt_layout, %struct.dpu_hw_fmt_layout* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 8
  %48 = load %struct.dpu_hw_fmt_layout*, %struct.dpu_hw_fmt_layout** %7, align 8
  %49 = getelementptr inbounds %struct.dpu_hw_fmt_layout, %struct.dpu_hw_fmt_layout* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %52 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %55 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.dpu_hw_fmt_layout*, %struct.dpu_hw_fmt_layout** %7, align 8
  %58 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %59 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @dpu_format_get_plane_sizes(i32 %50, i64 %53, i64 %56, %struct.dpu_hw_fmt_layout* %57, i32 %60)
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %11, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %42
  %65 = load i32, i32* %11, align 4
  store i32 %65, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %123

66:                                               ; preds = %42
  store i32 0, i32* %10, align 4
  br label %67

67:                                               ; preds = %82, %66
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* @DPU_MAX_PLANES, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %85

71:                                               ; preds = %67
  %72 = load %struct.dpu_hw_fmt_layout*, %struct.dpu_hw_fmt_layout** %7, align 8
  %73 = getelementptr inbounds %struct.dpu_hw_fmt_layout, %struct.dpu_hw_fmt_layout* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %10, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %10, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %16, i64 %80
  store i32 %78, i32* %81, align 4
  br label %82

82:                                               ; preds = %71
  %83 = load i32, i32* %10, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %10, align 4
  br label %67

85:                                               ; preds = %67
  %86 = load %struct.dpu_hw_fmt_layout*, %struct.dpu_hw_fmt_layout** %7, align 8
  %87 = getelementptr inbounds %struct.dpu_hw_fmt_layout, %struct.dpu_hw_fmt_layout* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = call i64 @DPU_FORMAT_IS_UBWC(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %97, label %91

91:                                               ; preds = %85
  %92 = load %struct.dpu_hw_fmt_layout*, %struct.dpu_hw_fmt_layout** %7, align 8
  %93 = getelementptr inbounds %struct.dpu_hw_fmt_layout, %struct.dpu_hw_fmt_layout* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = call i64 @DPU_FORMAT_IS_TILE(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %91, %85
  %98 = load %struct.msm_gem_address_space*, %struct.msm_gem_address_space** %5, align 8
  %99 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %100 = load %struct.dpu_hw_fmt_layout*, %struct.dpu_hw_fmt_layout** %7, align 8
  %101 = call i32 @_dpu_format_populate_addrs_ubwc(%struct.msm_gem_address_space* %98, %struct.drm_framebuffer* %99, %struct.dpu_hw_fmt_layout* %100)
  store i32 %101, i32* %11, align 4
  br label %107

102:                                              ; preds = %91
  %103 = load %struct.msm_gem_address_space*, %struct.msm_gem_address_space** %5, align 8
  %104 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %105 = load %struct.dpu_hw_fmt_layout*, %struct.dpu_hw_fmt_layout** %7, align 8
  %106 = call i32 @_dpu_format_populate_addrs_linear(%struct.msm_gem_address_space* %103, %struct.drm_framebuffer* %104, %struct.dpu_hw_fmt_layout* %105)
  store i32 %106, i32* %11, align 4
  br label %107

107:                                              ; preds = %102, %97
  %108 = load i32, i32* %11, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %121, label %110

110:                                              ; preds = %107
  %111 = load %struct.dpu_hw_fmt_layout*, %struct.dpu_hw_fmt_layout** %7, align 8
  %112 = getelementptr inbounds %struct.dpu_hw_fmt_layout, %struct.dpu_hw_fmt_layout* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = mul nuw i64 4, %14
  %115 = trunc i64 %114 to i32
  %116 = call i32 @memcmp(i32* %16, i32* %113, i32 %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %121, label %118

118:                                              ; preds = %110
  %119 = load i32, i32* @EAGAIN, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %11, align 4
  br label %121

121:                                              ; preds = %118, %110, %107
  %122 = load i32, i32* %11, align 4
  store i32 %122, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %123

123:                                              ; preds = %121, %64, %38, %22
  %124 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %124)
  %125 = load i32, i32* %4, align 4
  ret i32 %125
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @DRM_ERROR(i8*) #2

declare dso_local i32 @to_dpu_format(i32) #2

declare dso_local i32 @msm_framebuffer_format(%struct.drm_framebuffer*) #2

declare dso_local i32 @dpu_format_get_plane_sizes(i32, i64, i64, %struct.dpu_hw_fmt_layout*, i32) #2

declare dso_local i64 @DPU_FORMAT_IS_UBWC(i32) #2

declare dso_local i64 @DPU_FORMAT_IS_TILE(i32) #2

declare dso_local i32 @_dpu_format_populate_addrs_ubwc(%struct.msm_gem_address_space*, %struct.drm_framebuffer*, %struct.dpu_hw_fmt_layout*) #2

declare dso_local i32 @_dpu_format_populate_addrs_linear(%struct.msm_gem_address_space*, %struct.drm_framebuffer*, %struct.dpu_hw_fmt_layout*) #2

declare dso_local i32 @memcmp(i32*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
