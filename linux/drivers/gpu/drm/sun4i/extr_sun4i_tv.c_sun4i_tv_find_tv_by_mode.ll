; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_tv.c_sun4i_tv_find_tv_by_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_tv.c_sun4i_tv_find_tv_by_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tv_mode = type { i64, i32 }
%struct.drm_display_mode = type { i64, i32 }

@tv_modes = common dso_local global %struct.tv_mode* null, align 8
@.str = private unnamed_addr constant [24 x i8] c"Comparing mode %s vs %s\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Comparing mode %s vs %s (X: %d vs %d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tv_mode* (%struct.drm_display_mode*)* @sun4i_tv_find_tv_by_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tv_mode* @sun4i_tv_find_tv_by_mode(%struct.drm_display_mode* %0) #0 {
  %2 = alloca %struct.tv_mode*, align 8
  %3 = alloca %struct.drm_display_mode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tv_mode*, align 8
  %6 = alloca %struct.tv_mode*, align 8
  store %struct.drm_display_mode* %0, %struct.drm_display_mode** %3, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %35, %1
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.tv_mode*, %struct.tv_mode** @tv_modes, align 8
  %10 = call i32 @ARRAY_SIZE(%struct.tv_mode* %9)
  %11 = icmp slt i32 %8, %10
  br i1 %11, label %12, label %38

12:                                               ; preds = %7
  %13 = load %struct.tv_mode*, %struct.tv_mode** @tv_modes, align 8
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %13, i64 %15
  store %struct.tv_mode* %16, %struct.tv_mode** %5, align 8
  %17 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %18 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.tv_mode*, %struct.tv_mode** %5, align 8
  %21 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 (i8*, i32, i32, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %22)
  %24 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %25 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.tv_mode*, %struct.tv_mode** %5, align 8
  %28 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @strcmp(i32 %26, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %12
  %33 = load %struct.tv_mode*, %struct.tv_mode** %5, align 8
  store %struct.tv_mode* %33, %struct.tv_mode** %2, align 8
  br label %76

34:                                               ; preds = %12
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %4, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %4, align 4
  br label %7

38:                                               ; preds = %7
  store i32 0, i32* %4, align 4
  br label %39

39:                                               ; preds = %72, %38
  %40 = load i32, i32* %4, align 4
  %41 = load %struct.tv_mode*, %struct.tv_mode** @tv_modes, align 8
  %42 = call i32 @ARRAY_SIZE(%struct.tv_mode* %41)
  %43 = icmp slt i32 %40, %42
  br i1 %43, label %44, label %75

44:                                               ; preds = %39
  %45 = load %struct.tv_mode*, %struct.tv_mode** @tv_modes, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %45, i64 %47
  store %struct.tv_mode* %48, %struct.tv_mode** %6, align 8
  %49 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %50 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.tv_mode*, %struct.tv_mode** %6, align 8
  %53 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %56 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.tv_mode*, %struct.tv_mode** %6, align 8
  %59 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call i32 (i8*, i32, i32, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %51, i32 %54, i64 %57, i64 %60)
  %62 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %63 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.tv_mode*, %struct.tv_mode** %6, align 8
  %66 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp eq i64 %64, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %44
  %70 = load %struct.tv_mode*, %struct.tv_mode** %6, align 8
  store %struct.tv_mode* %70, %struct.tv_mode** %2, align 8
  br label %76

71:                                               ; preds = %44
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %4, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %4, align 4
  br label %39

75:                                               ; preds = %39
  store %struct.tv_mode* null, %struct.tv_mode** %2, align 8
  br label %76

76:                                               ; preds = %75, %69, %32
  %77 = load %struct.tv_mode*, %struct.tv_mode** %2, align 8
  ret %struct.tv_mode* %77
}

declare dso_local i32 @ARRAY_SIZE(%struct.tv_mode*) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i32, i32, ...) #1

declare dso_local i32 @strcmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
