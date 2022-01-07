; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv04/extr_dfp.c_nv04_lvds_dpms.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv04/extr_dfp.c_nv04_lvds_dpms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.drm_crtc*, %struct.drm_device* }
%struct.drm_crtc = type { i32 }
%struct.drm_device = type { i32 }
%struct.nouveau_drm = type { i32 }
%struct.nouveau_encoder = type { i32, %struct.TYPE_12__*, %struct.TYPE_9__ }
%struct.TYPE_12__ = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }

@.str = private unnamed_addr constant [50 x i8] c"Setting dpms mode %d on lvds encoder (output %d)\0A\00", align 1
@DRM_MODE_DPMS_ON = common dso_local global i32 0, align 4
@LVDS_PANEL_ON = common dso_local global i32 0, align 4
@LVDS_PANEL_OFF = common dso_local global i32 0, align 4
@NV_PRAMDAC_SEL_CLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*, i32)* @nv04_lvds_dpms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv04_lvds_dpms(%struct.drm_encoder* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_encoder*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.drm_crtc*, align 8
  %7 = alloca %struct.nouveau_drm*, align 8
  %8 = alloca %struct.nouveau_encoder*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %12 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %11, i32 0, i32 1
  %13 = load %struct.drm_device*, %struct.drm_device** %12, align 8
  store %struct.drm_device* %13, %struct.drm_device** %5, align 8
  %14 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %15 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %14, i32 0, i32 0
  %16 = load %struct.drm_crtc*, %struct.drm_crtc** %15, align 8
  store %struct.drm_crtc* %16, %struct.drm_crtc** %6, align 8
  %17 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %18 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %17)
  store %struct.nouveau_drm* %18, %struct.nouveau_drm** %7, align 8
  %19 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %20 = call %struct.nouveau_encoder* @nouveau_encoder(%struct.drm_encoder* %19)
  store %struct.nouveau_encoder* %20, %struct.nouveau_encoder** %8, align 8
  %21 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %8, align 8
  %22 = getelementptr inbounds %struct.nouveau_encoder, %struct.nouveau_encoder* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @is_powersaving_dpms(i32 %23)
  store i32 %24, i32* %9, align 4
  %25 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %8, align 8
  %26 = getelementptr inbounds %struct.nouveau_encoder, %struct.nouveau_encoder* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %2
  br label %139

31:                                               ; preds = %2
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %8, align 8
  %34 = getelementptr inbounds %struct.nouveau_encoder, %struct.nouveau_encoder* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.nouveau_drm*, %struct.nouveau_drm** %7, align 8
  %36 = load i32, i32* %4, align 4
  %37 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %8, align 8
  %38 = getelementptr inbounds %struct.nouveau_encoder, %struct.nouveau_encoder* %37, i32 0, i32 1
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @NV_DEBUG(%struct.nouveau_drm* %35, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %41)
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %31
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @is_powersaving_dpms(i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  br label %139

50:                                               ; preds = %45, %31
  %51 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %8, align 8
  %52 = getelementptr inbounds %struct.nouveau_encoder, %struct.nouveau_encoder* %51, i32 0, i32 1
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %98

58:                                               ; preds = %50
  %59 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %60 = icmp ne %struct.drm_crtc* %59, null
  br i1 %60, label %61, label %66

61:                                               ; preds = %58
  %62 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %63 = call %struct.TYPE_13__* @nouveau_crtc(%struct.drm_crtc* %62)
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  br label %72

66:                                               ; preds = %58
  %67 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %68 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %8, align 8
  %69 = getelementptr inbounds %struct.nouveau_encoder, %struct.nouveau_encoder* %68, i32 0, i32 1
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %69, align 8
  %71 = call i32 @nv04_dfp_get_bound_head(%struct.drm_device* %67, %struct.TYPE_12__* %70)
  br label %72

72:                                               ; preds = %66, %61
  %73 = phi i32 [ %65, %61 ], [ %71, %66 ]
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %4, align 4
  %75 = load i32, i32* @DRM_MODE_DPMS_ON, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %89

77:                                               ; preds = %72
  %78 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %79 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %8, align 8
  %80 = getelementptr inbounds %struct.nouveau_encoder, %struct.nouveau_encoder* %79, i32 0, i32 1
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %80, align 8
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* @LVDS_PANEL_ON, align 4
  %84 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %8, align 8
  %85 = getelementptr inbounds %struct.nouveau_encoder, %struct.nouveau_encoder* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @call_lvds_script(%struct.drm_device* %78, %struct.TYPE_12__* %81, i32 %82, i32 %83, i32 %87)
  br label %97

89:                                               ; preds = %72
  %90 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %91 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %8, align 8
  %92 = getelementptr inbounds %struct.nouveau_encoder, %struct.nouveau_encoder* %91, i32 0, i32 1
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %92, align 8
  %94 = load i32, i32* %10, align 4
  %95 = load i32, i32* @LVDS_PANEL_OFF, align 4
  %96 = call i32 @call_lvds_script(%struct.drm_device* %90, %struct.TYPE_12__* %93, i32 %94, i32 %95, i32 0)
  br label %97

97:                                               ; preds = %89, %77
  br label %98

98:                                               ; preds = %97, %50
  %99 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %100 = load i32, i32* %4, align 4
  %101 = call i32 @nv04_dfp_update_backlight(%struct.drm_encoder* %99, i32 %100)
  %102 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %103 = load i32, i32* %4, align 4
  %104 = call i32 @nv04_dfp_update_fp_control(%struct.drm_encoder* %102, i32 %103)
  %105 = load i32, i32* %4, align 4
  %106 = load i32, i32* @DRM_MODE_DPMS_ON, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %116

108:                                              ; preds = %98
  %109 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %110 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %8, align 8
  %111 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %112 = call %struct.TYPE_13__* @nouveau_crtc(%struct.drm_crtc* %111)
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @nv04_dfp_prepare_sel_clk(%struct.drm_device* %109, %struct.nouveau_encoder* %110, i32 %114)
  br label %130

116:                                              ; preds = %98
  %117 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %118 = load i32, i32* @NV_PRAMDAC_SEL_CLK, align 4
  %119 = call i32 @NVReadRAMDAC(%struct.drm_device* %117, i32 0, i32 %118)
  %120 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %121 = call %struct.TYPE_11__* @nv04_display(%struct.drm_device* %120)
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 0
  store i32 %119, i32* %123, align 4
  %124 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %125 = call %struct.TYPE_11__* @nv04_display(%struct.drm_device* %124)
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = and i32 %128, -241
  store i32 %129, i32* %127, align 4
  br label %130

130:                                              ; preds = %116, %108
  %131 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %132 = load i32, i32* @NV_PRAMDAC_SEL_CLK, align 4
  %133 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %134 = call %struct.TYPE_11__* @nv04_display(%struct.drm_device* %133)
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @NVWriteRAMDAC(%struct.drm_device* %131, i32 0, i32 %132, i32 %137)
  br label %139

139:                                              ; preds = %130, %49, %30
  ret void
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local %struct.nouveau_encoder* @nouveau_encoder(%struct.drm_encoder*) #1

declare dso_local i32 @is_powersaving_dpms(i32) #1

declare dso_local i32 @NV_DEBUG(%struct.nouveau_drm*, i8*, i32, i32) #1

declare dso_local %struct.TYPE_13__* @nouveau_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @nv04_dfp_get_bound_head(%struct.drm_device*, %struct.TYPE_12__*) #1

declare dso_local i32 @call_lvds_script(%struct.drm_device*, %struct.TYPE_12__*, i32, i32, i32) #1

declare dso_local i32 @nv04_dfp_update_backlight(%struct.drm_encoder*, i32) #1

declare dso_local i32 @nv04_dfp_update_fp_control(%struct.drm_encoder*, i32) #1

declare dso_local i32 @nv04_dfp_prepare_sel_clk(%struct.drm_device*, %struct.nouveau_encoder*, i32) #1

declare dso_local i32 @NVReadRAMDAC(%struct.drm_device*, i32, i32) #1

declare dso_local %struct.TYPE_11__* @nv04_display(%struct.drm_device*) #1

declare dso_local i32 @NVWriteRAMDAC(%struct.drm_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
