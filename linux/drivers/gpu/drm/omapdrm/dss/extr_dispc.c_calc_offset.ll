; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dispc.c_calc_offset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dispc.c_calc_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"scrw %d, width %d\0A\00", align 1
@OMAP_DSS_ROT_TILER = common dso_local global i32 0, align 4
@DRM_FORMAT_UYVY = common dso_local global i64 0, align 8
@DRM_FORMAT_YUYV = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i64, i32, i32, i32*, i32*, i32*, i32*, i32, i32, i32, i32)* @calc_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @calc_offset(i32 %0, i32 %1, i64 %2, i32 %3, i32 %4, i32* %5, i32* %6, i32* %7, i32* %8, i32 %9, i32 %10, i32 %11, i32 %12) #0 {
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store i32 %0, i32* %14, align 4
  store i32 %1, i32* %15, align 4
  store i64 %2, i64* %16, align 8
  store i32 %3, i32* %17, align 4
  store i32 %4, i32* %18, align 4
  store i32* %5, i32** %19, align 8
  store i32* %6, i32** %20, align 8
  store i32* %7, i32** %21, align 8
  store i32* %8, i32** %22, align 8
  store i32 %9, i32* %23, align 4
  store i32 %10, i32* %24, align 4
  store i32 %11, i32* %25, align 4
  store i32 %12, i32* %26, align 4
  %28 = load i64, i64* %16, align 8
  %29 = call i32 @color_mode_to_bpp(i64 %28)
  %30 = sdiv i32 %29, 8
  store i32 %30, i32* %27, align 4
  %31 = load i32, i32* %14, align 4
  %32 = load i32, i32* %15, align 4
  %33 = call i32 @DSSDBG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %32)
  %34 = load i32, i32* %25, align 4
  %35 = load i32, i32* @OMAP_DSS_ROT_TILER, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %52

37:                                               ; preds = %13
  %38 = load i64, i64* %16, align 8
  %39 = load i64, i64* @DRM_FORMAT_UYVY, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = load i64, i64* %16, align 8
  %43 = load i64, i64* @DRM_FORMAT_YUYV, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %41, %37
  %46 = load i32, i32* %26, align 4
  %47 = call i64 @drm_rotation_90_or_270(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i32, i32* %15, align 4
  %51 = mul nsw i32 %50, 2
  store i32 %51, i32* %15, align 4
  br label %52

52:                                               ; preds = %49, %45, %41, %13
  %53 = load i32, i32* %18, align 4
  %54 = load i32, i32* %14, align 4
  %55 = mul i32 %53, %54
  %56 = load i32, i32* %27, align 4
  %57 = mul i32 %55, %56
  %58 = load i32*, i32** %19, align 8
  store i32 %57, i32* %58, align 4
  %59 = load i32*, i32** %20, align 8
  store i32 0, i32* %59, align 4
  %60 = load i32, i32* %24, align 4
  %61 = load i32, i32* %14, align 4
  %62 = mul nsw i32 %60, %61
  %63 = load i32, i32* %15, align 4
  %64 = load i32, i32* %23, align 4
  %65 = mul nsw i32 %63, %64
  %66 = sub nsw i32 %62, %65
  %67 = add nsw i32 1, %66
  %68 = load i32, i32* %17, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %52
  %71 = load i32, i32* %14, align 4
  br label %73

72:                                               ; preds = %52
  br label %73

73:                                               ; preds = %72, %70
  %74 = phi i32 [ %71, %70 ], [ 0, %72 ]
  %75 = add nsw i32 %67, %74
  %76 = load i32, i32* %27, align 4
  %77 = call i32 @pixinc(i32 %75, i32 %76)
  %78 = load i32*, i32** %21, align 8
  store i32 %77, i32* %78, align 4
  %79 = load i64, i64* %16, align 8
  %80 = load i64, i64* @DRM_FORMAT_YUYV, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %86, label %82

82:                                               ; preds = %73
  %83 = load i64, i64* %16, align 8
  %84 = load i64, i64* @DRM_FORMAT_UYVY, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %92

86:                                               ; preds = %82, %73
  %87 = load i32, i32* %23, align 4
  %88 = load i32, i32* %27, align 4
  %89 = mul i32 2, %88
  %90 = call i32 @pixinc(i32 %87, i32 %89)
  %91 = load i32*, i32** %22, align 8
  store i32 %90, i32* %91, align 4
  br label %97

92:                                               ; preds = %82
  %93 = load i32, i32* %23, align 4
  %94 = load i32, i32* %27, align 4
  %95 = call i32 @pixinc(i32 %93, i32 %94)
  %96 = load i32*, i32** %22, align 8
  store i32 %95, i32* %96, align 4
  br label %97

97:                                               ; preds = %92, %86
  ret void
}

declare dso_local i32 @color_mode_to_bpp(i64) #1

declare dso_local i32 @DSSDBG(i8*, i32, i32) #1

declare dso_local i64 @drm_rotation_90_or_270(i32) #1

declare dso_local i32 @pixinc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
