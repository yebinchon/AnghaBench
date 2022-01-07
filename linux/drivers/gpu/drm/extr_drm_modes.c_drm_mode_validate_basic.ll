; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_modes.c_drm_mode_validate_basic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_modes.c_drm_mode_validate_basic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_display_mode = type { i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@DRM_MODE_TYPE_ALL = common dso_local global i32 0, align 4
@MODE_BAD = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_ALL = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_3D_MASK = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_3D_MAX = common dso_local global i32 0, align 4
@MODE_CLOCK_LOW = common dso_local global i32 0, align 4
@MODE_H_ILLEGAL = common dso_local global i32 0, align 4
@MODE_V_ILLEGAL = common dso_local global i32 0, align 4
@MODE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_display_mode*)* @drm_mode_validate_basic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drm_mode_validate_basic(%struct.drm_display_mode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_display_mode*, align 8
  store %struct.drm_display_mode* %0, %struct.drm_display_mode** %3, align 8
  %4 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %5 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @DRM_MODE_TYPE_ALL, align 4
  %8 = xor i32 %7, -1
  %9 = and i32 %6, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @MODE_BAD, align 4
  store i32 %12, i32* %2, align 4
  br label %104

13:                                               ; preds = %1
  %14 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %15 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @DRM_MODE_FLAG_ALL, align 4
  %18 = xor i32 %17, -1
  %19 = and i32 %16, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %13
  %22 = load i32, i32* @MODE_BAD, align 4
  store i32 %22, i32* %2, align 4
  br label %104

23:                                               ; preds = %13
  %24 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %25 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @DRM_MODE_FLAG_3D_MASK, align 4
  %28 = and i32 %26, %27
  %29 = load i32, i32* @DRM_MODE_FLAG_3D_MAX, align 4
  %30 = icmp sgt i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %23
  %32 = load i32, i32* @MODE_BAD, align 4
  store i32 %32, i32* %2, align 4
  br label %104

33:                                               ; preds = %23
  %34 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %35 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i32, i32* @MODE_CLOCK_LOW, align 4
  store i32 %39, i32* %2, align 4
  br label %104

40:                                               ; preds = %33
  %41 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %42 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %69, label %45

45:                                               ; preds = %40
  %46 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %47 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %46, i32 0, i32 4
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %50 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = icmp slt i64 %48, %51
  br i1 %52, label %69, label %53

53:                                               ; preds = %45
  %54 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %55 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %54, i32 0, i32 5
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %58 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %57, i32 0, i32 4
  %59 = load i64, i64* %58, align 8
  %60 = icmp slt i64 %56, %59
  br i1 %60, label %69, label %61

61:                                               ; preds = %53
  %62 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %63 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %62, i32 0, i32 6
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %66 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %65, i32 0, i32 5
  %67 = load i64, i64* %66, align 8
  %68 = icmp slt i64 %64, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %61, %53, %45, %40
  %70 = load i32, i32* @MODE_H_ILLEGAL, align 4
  store i32 %70, i32* %2, align 4
  br label %104

71:                                               ; preds = %61
  %72 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %73 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %72, i32 0, i32 7
  %74 = load i64, i64* %73, align 8
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %100, label %76

76:                                               ; preds = %71
  %77 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %78 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %77, i32 0, i32 8
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %81 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %80, i32 0, i32 7
  %82 = load i64, i64* %81, align 8
  %83 = icmp slt i64 %79, %82
  br i1 %83, label %100, label %84

84:                                               ; preds = %76
  %85 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %86 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %85, i32 0, i32 9
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %89 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %88, i32 0, i32 8
  %90 = load i64, i64* %89, align 8
  %91 = icmp slt i64 %87, %90
  br i1 %91, label %100, label %92

92:                                               ; preds = %84
  %93 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %94 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %93, i32 0, i32 10
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %97 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %96, i32 0, i32 9
  %98 = load i64, i64* %97, align 8
  %99 = icmp slt i64 %95, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %92, %84, %76, %71
  %101 = load i32, i32* @MODE_V_ILLEGAL, align 4
  store i32 %101, i32* %2, align 4
  br label %104

102:                                              ; preds = %92
  %103 = load i32, i32* @MODE_OK, align 4
  store i32 %103, i32* %2, align 4
  br label %104

104:                                              ; preds = %102, %100, %69, %38, %31, %21, %11
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
