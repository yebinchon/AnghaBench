; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_tv.c_sun4i_tv_mode_to_drm_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_tv.c_sun4i_tv_mode_to_drm_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tv_mode = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.drm_display_mode = type { i32, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"Creating mode %s\0A\00", align 1
@DRM_MODE_TYPE_DRIVER = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_INTERLACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tv_mode*, %struct.drm_display_mode*)* @sun4i_tv_mode_to_drm_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sun4i_tv_mode_to_drm_mode(%struct.tv_mode* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca %struct.tv_mode*, align 8
  %4 = alloca %struct.drm_display_mode*, align 8
  store %struct.tv_mode* %0, %struct.tv_mode** %3, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %4, align 8
  %5 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %6 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %5, i32 0, i32 11
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = load i32, i32* @DRM_MODE_TYPE_DRIVER, align 4
  %10 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %11 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %10, i32 0, i32 10
  store i32 %9, i32* %11, align 4
  %12 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %13 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %12, i32 0, i32 0
  store i32 13500, i32* %13, align 8
  %14 = load i32, i32* @DRM_MODE_FLAG_INTERLACE, align 4
  %15 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %16 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %15, i32 0, i32 9
  store i32 %14, i32* %16, align 8
  %17 = load %struct.tv_mode*, %struct.tv_mode** %3, align 8
  %18 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %17, i32 0, i32 7
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %21 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %20, i32 0, i32 8
  store i64 %19, i64* %21, align 8
  %22 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %23 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %22, i32 0, i32 8
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.tv_mode*, %struct.tv_mode** %3, align 8
  %26 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %25, i32 0, i32 6
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %24, %27
  %29 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %30 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %29, i32 0, i32 7
  store i64 %28, i64* %30, align 8
  %31 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %32 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %31, i32 0, i32 7
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.tv_mode*, %struct.tv_mode** %3, align 8
  %35 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %34, i32 0, i32 5
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %33, %36
  %38 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %39 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %38, i32 0, i32 5
  store i64 %37, i64* %39, align 8
  %40 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %41 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %40, i32 0, i32 5
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.tv_mode*, %struct.tv_mode** %3, align 8
  %44 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %43, i32 0, i32 4
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %42, %45
  %47 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %48 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %47, i32 0, i32 6
  store i64 %46, i64* %48, align 8
  %49 = load %struct.tv_mode*, %struct.tv_mode** %3, align 8
  %50 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %53 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %52, i32 0, i32 4
  store i64 %51, i64* %53, align 8
  %54 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %55 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %54, i32 0, i32 4
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.tv_mode*, %struct.tv_mode** %3, align 8
  %58 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %56, %59
  %61 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %62 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %61, i32 0, i32 3
  store i64 %60, i64* %62, align 8
  %63 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %64 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.tv_mode*, %struct.tv_mode** %3, align 8
  %67 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %65, %68
  %70 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %71 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %70, i32 0, i32 1
  store i64 %69, i64* %71, align 8
  %72 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %73 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.tv_mode*, %struct.tv_mode** %3, align 8
  %76 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = add nsw i64 %74, %77
  %79 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %80 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %79, i32 0, i32 2
  store i64 %78, i64* %80, align 8
  ret void
}

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
