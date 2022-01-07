; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_encoder.c_omap_encoder_update_videomode_flags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_encoder.c_omap_encoder_update_videomode_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.videomode = type { i32 }

@DISPLAY_FLAGS_DE_LOW = common dso_local global i32 0, align 4
@DISPLAY_FLAGS_DE_HIGH = common dso_local global i32 0, align 4
@DRM_BUS_FLAG_DE_LOW = common dso_local global i32 0, align 4
@DRM_BUS_FLAG_DE_HIGH = common dso_local global i32 0, align 4
@DISPLAY_FLAGS_PIXDATA_POSEDGE = common dso_local global i32 0, align 4
@DISPLAY_FLAGS_PIXDATA_NEGEDGE = common dso_local global i32 0, align 4
@DRM_BUS_FLAG_PIXDATA_DRIVE_POSEDGE = common dso_local global i32 0, align 4
@DRM_BUS_FLAG_PIXDATA_DRIVE_NEGEDGE = common dso_local global i32 0, align 4
@DISPLAY_FLAGS_SYNC_POSEDGE = common dso_local global i32 0, align 4
@DISPLAY_FLAGS_SYNC_NEGEDGE = common dso_local global i32 0, align 4
@DRM_BUS_FLAG_SYNC_DRIVE_POSEDGE = common dso_local global i32 0, align 4
@DRM_BUS_FLAG_SYNC_DRIVE_NEGEDGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.videomode*, i32)* @omap_encoder_update_videomode_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_encoder_update_videomode_flags(%struct.videomode* %0, i32 %1) #0 {
  %3 = alloca %struct.videomode*, align 8
  %4 = alloca i32, align 4
  store %struct.videomode* %0, %struct.videomode** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.videomode*, %struct.videomode** %3, align 8
  %6 = getelementptr inbounds %struct.videomode, %struct.videomode* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @DISPLAY_FLAGS_DE_LOW, align 4
  %9 = load i32, i32* @DISPLAY_FLAGS_DE_HIGH, align 4
  %10 = or i32 %8, %9
  %11 = and i32 %7, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %37, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @DRM_BUS_FLAG_DE_LOW, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %13
  %19 = load i32, i32* @DISPLAY_FLAGS_DE_LOW, align 4
  %20 = load %struct.videomode*, %struct.videomode** %3, align 8
  %21 = getelementptr inbounds %struct.videomode, %struct.videomode* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %19
  store i32 %23, i32* %21, align 4
  br label %36

24:                                               ; preds = %13
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @DRM_BUS_FLAG_DE_HIGH, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load i32, i32* @DISPLAY_FLAGS_DE_HIGH, align 4
  %31 = load %struct.videomode*, %struct.videomode** %3, align 8
  %32 = getelementptr inbounds %struct.videomode, %struct.videomode* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 4
  br label %35

35:                                               ; preds = %29, %24
  br label %36

36:                                               ; preds = %35, %18
  br label %37

37:                                               ; preds = %36, %2
  %38 = load %struct.videomode*, %struct.videomode** %3, align 8
  %39 = getelementptr inbounds %struct.videomode, %struct.videomode* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @DISPLAY_FLAGS_PIXDATA_POSEDGE, align 4
  %42 = load i32, i32* @DISPLAY_FLAGS_PIXDATA_NEGEDGE, align 4
  %43 = or i32 %41, %42
  %44 = and i32 %40, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %70, label %46

46:                                               ; preds = %37
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @DRM_BUS_FLAG_PIXDATA_DRIVE_POSEDGE, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %46
  %52 = load i32, i32* @DISPLAY_FLAGS_PIXDATA_POSEDGE, align 4
  %53 = load %struct.videomode*, %struct.videomode** %3, align 8
  %54 = getelementptr inbounds %struct.videomode, %struct.videomode* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 4
  br label %69

57:                                               ; preds = %46
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @DRM_BUS_FLAG_PIXDATA_DRIVE_NEGEDGE, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %57
  %63 = load i32, i32* @DISPLAY_FLAGS_PIXDATA_NEGEDGE, align 4
  %64 = load %struct.videomode*, %struct.videomode** %3, align 8
  %65 = getelementptr inbounds %struct.videomode, %struct.videomode* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 4
  br label %68

68:                                               ; preds = %62, %57
  br label %69

69:                                               ; preds = %68, %51
  br label %70

70:                                               ; preds = %69, %37
  %71 = load %struct.videomode*, %struct.videomode** %3, align 8
  %72 = getelementptr inbounds %struct.videomode, %struct.videomode* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @DISPLAY_FLAGS_SYNC_POSEDGE, align 4
  %75 = load i32, i32* @DISPLAY_FLAGS_SYNC_NEGEDGE, align 4
  %76 = or i32 %74, %75
  %77 = and i32 %73, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %103, label %79

79:                                               ; preds = %70
  %80 = load i32, i32* %4, align 4
  %81 = load i32, i32* @DRM_BUS_FLAG_SYNC_DRIVE_POSEDGE, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %79
  %85 = load i32, i32* @DISPLAY_FLAGS_SYNC_POSEDGE, align 4
  %86 = load %struct.videomode*, %struct.videomode** %3, align 8
  %87 = getelementptr inbounds %struct.videomode, %struct.videomode* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %88, %85
  store i32 %89, i32* %87, align 4
  br label %102

90:                                               ; preds = %79
  %91 = load i32, i32* %4, align 4
  %92 = load i32, i32* @DRM_BUS_FLAG_SYNC_DRIVE_NEGEDGE, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %90
  %96 = load i32, i32* @DISPLAY_FLAGS_SYNC_NEGEDGE, align 4
  %97 = load %struct.videomode*, %struct.videomode** %3, align 8
  %98 = getelementptr inbounds %struct.videomode, %struct.videomode* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = or i32 %99, %96
  store i32 %100, i32* %98, align 4
  br label %101

101:                                              ; preds = %95, %90
  br label %102

102:                                              ; preds = %101, %84
  br label %103

103:                                              ; preds = %102, %70
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
