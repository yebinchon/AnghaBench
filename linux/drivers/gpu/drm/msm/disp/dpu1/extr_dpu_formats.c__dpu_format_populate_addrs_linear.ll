; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_formats.c__dpu_format_populate_addrs_linear.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_formats.c__dpu_format_populate_addrs_linear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_gem_address_space = type { i32 }
%struct.drm_framebuffer = type { i64* }
%struct.dpu_hw_fmt_layout = type { i32, i64*, i32* }

@.str = private unnamed_addr constant [35 x i8] c"plane %u expected pitch %u, fb %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"failed to retrieve base addr\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msm_gem_address_space*, %struct.drm_framebuffer*, %struct.dpu_hw_fmt_layout*)* @_dpu_format_populate_addrs_linear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_dpu_format_populate_addrs_linear(%struct.msm_gem_address_space* %0, %struct.drm_framebuffer* %1, %struct.dpu_hw_fmt_layout* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.msm_gem_address_space*, align 8
  %6 = alloca %struct.drm_framebuffer*, align 8
  %7 = alloca %struct.dpu_hw_fmt_layout*, align 8
  %8 = alloca i32, align 4
  store %struct.msm_gem_address_space* %0, %struct.msm_gem_address_space** %5, align 8
  store %struct.drm_framebuffer* %1, %struct.drm_framebuffer** %6, align 8
  store %struct.dpu_hw_fmt_layout* %2, %struct.dpu_hw_fmt_layout** %7, align 8
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %51, %3
  %10 = load i32, i32* %8, align 4
  %11 = load %struct.dpu_hw_fmt_layout*, %struct.dpu_hw_fmt_layout** %7, align 8
  %12 = getelementptr inbounds %struct.dpu_hw_fmt_layout, %struct.dpu_hw_fmt_layout* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ult i32 %10, %13
  br i1 %14, label %15, label %54

15:                                               ; preds = %9
  %16 = load %struct.dpu_hw_fmt_layout*, %struct.dpu_hw_fmt_layout** %7, align 8
  %17 = getelementptr inbounds %struct.dpu_hw_fmt_layout, %struct.dpu_hw_fmt_layout* %16, i32 0, i32 1
  %18 = load i64*, i64** %17, align 8
  %19 = load i32, i32* %8, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds i64, i64* %18, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %24 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %23, i32 0, i32 0
  %25 = load i64*, i64** %24, align 8
  %26 = load i32, i32* %8, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i64, i64* %25, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = icmp sgt i64 %22, %29
  br i1 %30, label %31, label %50

31:                                               ; preds = %15
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.dpu_hw_fmt_layout*, %struct.dpu_hw_fmt_layout** %7, align 8
  %34 = getelementptr inbounds %struct.dpu_hw_fmt_layout, %struct.dpu_hw_fmt_layout* %33, i32 0, i32 1
  %35 = load i64*, i64** %34, align 8
  %36 = load i32, i32* %8, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i64, i64* %35, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %41 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %40, i32 0, i32 0
  %42 = load i64*, i64** %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i64, i64* %42, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %32, i64 %39, i64 %46)
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %93

50:                                               ; preds = %15
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %8, align 4
  %53 = add i32 %52, 1
  store i32 %53, i32* %8, align 4
  br label %9

54:                                               ; preds = %9
  store i32 0, i32* %8, align 4
  br label %55

55:                                               ; preds = %89, %54
  %56 = load i32, i32* %8, align 4
  %57 = load %struct.dpu_hw_fmt_layout*, %struct.dpu_hw_fmt_layout** %7, align 8
  %58 = getelementptr inbounds %struct.dpu_hw_fmt_layout, %struct.dpu_hw_fmt_layout* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp ult i32 %56, %59
  br i1 %60, label %61, label %92

61:                                               ; preds = %55
  %62 = load %struct.msm_gem_address_space*, %struct.msm_gem_address_space** %5, align 8
  %63 = icmp ne %struct.msm_gem_address_space* %62, null
  br i1 %63, label %64, label %75

64:                                               ; preds = %61
  %65 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %66 = load %struct.msm_gem_address_space*, %struct.msm_gem_address_space** %5, align 8
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @msm_framebuffer_iova(%struct.drm_framebuffer* %65, %struct.msm_gem_address_space* %66, i32 %67)
  %69 = load %struct.dpu_hw_fmt_layout*, %struct.dpu_hw_fmt_layout** %7, align 8
  %70 = getelementptr inbounds %struct.dpu_hw_fmt_layout, %struct.dpu_hw_fmt_layout* %69, i32 0, i32 2
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %8, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  store i32 %68, i32* %74, align 4
  br label %75

75:                                               ; preds = %64, %61
  %76 = load %struct.dpu_hw_fmt_layout*, %struct.dpu_hw_fmt_layout** %7, align 8
  %77 = getelementptr inbounds %struct.dpu_hw_fmt_layout, %struct.dpu_hw_fmt_layout* %76, i32 0, i32 2
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %8, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %88, label %84

84:                                               ; preds = %75
  %85 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %86 = load i32, i32* @EFAULT, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %4, align 4
  br label %93

88:                                               ; preds = %75
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %8, align 4
  %91 = add i32 %90, 1
  store i32 %91, i32* %8, align 4
  br label %55

92:                                               ; preds = %55
  store i32 0, i32* %4, align 4
  br label %93

93:                                               ; preds = %92, %84, %31
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i32 @msm_framebuffer_iova(%struct.drm_framebuffer*, %struct.msm_gem_address_space*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
