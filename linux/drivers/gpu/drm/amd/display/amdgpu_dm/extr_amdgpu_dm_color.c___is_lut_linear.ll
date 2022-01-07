; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm_color.c___is_lut_linear.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm_color.c___is_lut_linear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_color_lut = type { i64, i64, i64 }

@MAX_DRM_LUT_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_color_lut*, i32)* @__is_lut_linear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__is_lut_linear(%struct.drm_color_lut* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_color_lut*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.drm_color_lut* %0, %struct.drm_color_lut** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %66, %2
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %69

13:                                               ; preds = %9
  %14 = load %struct.drm_color_lut*, %struct.drm_color_lut** %4, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.drm_color_lut, %struct.drm_color_lut* %14, i64 %16
  %18 = getelementptr inbounds %struct.drm_color_lut, %struct.drm_color_lut* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.drm_color_lut*, %struct.drm_color_lut** %4, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.drm_color_lut, %struct.drm_color_lut* %20, i64 %22
  %24 = getelementptr inbounds %struct.drm_color_lut, %struct.drm_color_lut* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %19, %25
  br i1 %26, label %41, label %27

27:                                               ; preds = %13
  %28 = load %struct.drm_color_lut*, %struct.drm_color_lut** %4, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.drm_color_lut, %struct.drm_color_lut* %28, i64 %30
  %32 = getelementptr inbounds %struct.drm_color_lut, %struct.drm_color_lut* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.drm_color_lut*, %struct.drm_color_lut** %4, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.drm_color_lut, %struct.drm_color_lut* %34, i64 %36
  %38 = getelementptr inbounds %struct.drm_color_lut, %struct.drm_color_lut* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %33, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %27, %13
  store i32 0, i32* %3, align 4
  br label %70

42:                                               ; preds = %27
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @MAX_DRM_LUT_VALUE, align 4
  %45 = mul nsw i32 %43, %44
  %46 = load i32, i32* %5, align 4
  %47 = sub nsw i32 %46, 1
  %48 = sdiv i32 %45, %47
  store i32 %48, i32* %7, align 4
  %49 = load %struct.drm_color_lut*, %struct.drm_color_lut** %4, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.drm_color_lut, %struct.drm_color_lut* %49, i64 %51
  %53 = getelementptr inbounds %struct.drm_color_lut, %struct.drm_color_lut* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = sub nsw i64 %54, %56
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp slt i32 %59, -1
  br i1 %60, label %64, label %61

61:                                               ; preds = %42
  %62 = load i32, i32* %8, align 4
  %63 = icmp slt i32 1, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %61, %42
  store i32 0, i32* %3, align 4
  br label %70

65:                                               ; preds = %61
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %6, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %6, align 4
  br label %9

69:                                               ; preds = %9
  store i32 1, i32* %3, align 4
  br label %70

70:                                               ; preds = %69, %64, %41
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
