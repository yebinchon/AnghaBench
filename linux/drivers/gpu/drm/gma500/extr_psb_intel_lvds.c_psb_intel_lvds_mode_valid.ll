; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_psb_intel_lvds.c_psb_intel_lvds_mode_valid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_psb_intel_lvds.c_psb_intel_lvds_mode_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.drm_psb_private* }
%struct.drm_psb_private = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.drm_display_mode*, %struct.drm_display_mode* }
%struct.drm_display_mode = type { i32, i64, i64 }
%struct.gma_encoder = type { i64 }

@INTEL_OUTPUT_MIPI2 = common dso_local global i64 0, align 8
@DRM_MODE_FLAG_DBLSCAN = common dso_local global i32 0, align 4
@MODE_NO_DBLESCAN = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_INTERLACE = common dso_local global i32 0, align 4
@MODE_NO_INTERLACE = common dso_local global i32 0, align 4
@MODE_PANEL = common dso_local global i32 0, align 4
@MODE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psb_intel_lvds_mode_valid(%struct.drm_connector* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.drm_psb_private*, align 8
  %7 = alloca %struct.gma_encoder*, align 8
  %8 = alloca %struct.drm_display_mode*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  %9 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %10 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.drm_psb_private*, %struct.drm_psb_private** %12, align 8
  store %struct.drm_psb_private* %13, %struct.drm_psb_private** %6, align 8
  %14 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %15 = call %struct.gma_encoder* @gma_attached_encoder(%struct.drm_connector* %14)
  store %struct.gma_encoder* %15, %struct.gma_encoder** %7, align 8
  %16 = load %struct.drm_psb_private*, %struct.drm_psb_private** %6, align 8
  %17 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load %struct.drm_display_mode*, %struct.drm_display_mode** %18, align 8
  store %struct.drm_display_mode* %19, %struct.drm_display_mode** %8, align 8
  %20 = load %struct.gma_encoder*, %struct.gma_encoder** %7, align 8
  %21 = getelementptr inbounds %struct.gma_encoder, %struct.gma_encoder* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @INTEL_OUTPUT_MIPI2, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %2
  %26 = load %struct.drm_psb_private*, %struct.drm_psb_private** %6, align 8
  %27 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load %struct.drm_display_mode*, %struct.drm_display_mode** %28, align 8
  store %struct.drm_display_mode* %29, %struct.drm_display_mode** %8, align 8
  br label %30

30:                                               ; preds = %25, %2
  %31 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %32 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @DRM_MODE_FLAG_DBLSCAN, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load i32, i32* @MODE_NO_DBLESCAN, align 4
  store i32 %38, i32* %3, align 4
  br label %74

39:                                               ; preds = %30
  %40 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %41 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @DRM_MODE_FLAG_INTERLACE, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %39
  %47 = load i32, i32* @MODE_NO_INTERLACE, align 4
  store i32 %47, i32* %3, align 4
  br label %74

48:                                               ; preds = %39
  %49 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %50 = icmp ne %struct.drm_display_mode* %49, null
  br i1 %50, label %51, label %72

51:                                               ; preds = %48
  %52 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %53 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %56 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp sgt i64 %54, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %51
  %60 = load i32, i32* @MODE_PANEL, align 4
  store i32 %60, i32* %3, align 4
  br label %74

61:                                               ; preds = %51
  %62 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %63 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %66 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = icmp sgt i64 %64, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %61
  %70 = load i32, i32* @MODE_PANEL, align 4
  store i32 %70, i32* %3, align 4
  br label %74

71:                                               ; preds = %61
  br label %72

72:                                               ; preds = %71, %48
  %73 = load i32, i32* @MODE_OK, align 4
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %72, %69, %59, %46, %37
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local %struct.gma_encoder* @gma_attached_encoder(%struct.drm_connector*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
