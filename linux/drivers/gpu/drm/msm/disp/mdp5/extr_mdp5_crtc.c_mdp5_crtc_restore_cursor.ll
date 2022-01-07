; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_crtc.c_mdp5_crtc_restore_cursor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_crtc.c_mdp5_crtc_restore_cursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { i32, i32 }
%struct.drm_format_info = type { i32* }
%struct.mdp5_crtc_state = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.mdp5_crtc = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32 }
%struct.mdp5_kms = type { i32 }

@DRM_FORMAT_ARGB8888 = common dso_local global i32 0, align 4
@CURSOR_ALPHA_PER_PIXEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"%s: x=%d, y=%d roi_w=%d roi_h=%d src_x=%d src_y=%d\00", align 1
@CURSOR_FMT_ARGB8888 = common dso_local global i32 0, align 4
@MDP5_LM_CURSOR_BLEND_CONFIG_BLEND_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*)* @mdp5_crtc_restore_cursor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mdp5_crtc_restore_cursor(%struct.drm_crtc* %0) #0 {
  %2 = alloca %struct.drm_crtc*, align 8
  %3 = alloca %struct.drm_format_info*, align 8
  %4 = alloca %struct.mdp5_crtc_state*, align 8
  %5 = alloca %struct.mdp5_crtc*, align 8
  %6 = alloca %struct.mdp5_kms*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %2, align 8
  %19 = load i32, i32* @DRM_FORMAT_ARGB8888, align 4
  %20 = call %struct.drm_format_info* @drm_format_info(i32 %19)
  store %struct.drm_format_info* %20, %struct.drm_format_info** %3, align 8
  %21 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %22 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.mdp5_crtc_state* @to_mdp5_crtc_state(i32 %23)
  store %struct.mdp5_crtc_state* %24, %struct.mdp5_crtc_state** %4, align 8
  %25 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %26 = call %struct.mdp5_crtc* @to_mdp5_crtc(%struct.drm_crtc* %25)
  store %struct.mdp5_crtc* %26, %struct.mdp5_crtc** %5, align 8
  %27 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %28 = call %struct.mdp5_kms* @get_kms(%struct.drm_crtc* %27)
  store %struct.mdp5_kms* %28, %struct.mdp5_kms** %6, align 8
  %29 = load i32, i32* @CURSOR_ALPHA_PER_PIXEL, align 4
  store i32 %29, i32* %7, align 4
  %30 = load %struct.mdp5_crtc*, %struct.mdp5_crtc** %5, align 8
  %31 = getelementptr inbounds %struct.mdp5_crtc, %struct.mdp5_crtc* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 5
  %33 = call i32 @assert_spin_locked(i32* %32)
  %34 = load %struct.mdp5_crtc_state*, %struct.mdp5_crtc_state** %4, align 8
  %35 = getelementptr inbounds %struct.mdp5_crtc_state, %struct.mdp5_crtc_state* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %18, align 4
  %40 = load %struct.mdp5_crtc*, %struct.mdp5_crtc** %5, align 8
  %41 = getelementptr inbounds %struct.mdp5_crtc, %struct.mdp5_crtc* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %10, align 4
  %44 = load %struct.mdp5_crtc*, %struct.mdp5_crtc** %5, align 8
  %45 = getelementptr inbounds %struct.mdp5_crtc, %struct.mdp5_crtc* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %11, align 4
  %48 = load %struct.mdp5_crtc*, %struct.mdp5_crtc** %5, align 8
  %49 = getelementptr inbounds %struct.mdp5_crtc, %struct.mdp5_crtc* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %14, align 4
  %52 = load %struct.mdp5_crtc*, %struct.mdp5_crtc** %5, align 8
  %53 = getelementptr inbounds %struct.mdp5_crtc, %struct.mdp5_crtc* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %15, align 4
  %56 = load i32, i32* %14, align 4
  %57 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %58 = getelementptr inbounds %struct.drm_format_info, %struct.drm_format_info* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = mul nsw i32 %56, %61
  store i32 %62, i32* %9, align 4
  %63 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %64 = call i32 @get_roi(%struct.drm_crtc* %63, i32* %16, i32* %17)
  %65 = load %struct.mdp5_crtc*, %struct.mdp5_crtc** %5, align 8
  %66 = getelementptr inbounds %struct.mdp5_crtc, %struct.mdp5_crtc* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %1
  %71 = load %struct.mdp5_crtc*, %struct.mdp5_crtc** %5, align 8
  %72 = getelementptr inbounds %struct.mdp5_crtc, %struct.mdp5_crtc* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = sext i32 %74 to i64
  %76 = call i32 @abs(i64 %75)
  store i32 %76, i32* %12, align 4
  store i32 0, i32* %10, align 4
  br label %78

77:                                               ; preds = %1
  store i32 0, i32* %12, align 4
  br label %78

78:                                               ; preds = %77, %70
  %79 = load %struct.mdp5_crtc*, %struct.mdp5_crtc** %5, align 8
  %80 = getelementptr inbounds %struct.mdp5_crtc, %struct.mdp5_crtc* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %78
  %85 = load %struct.mdp5_crtc*, %struct.mdp5_crtc** %5, align 8
  %86 = getelementptr inbounds %struct.mdp5_crtc, %struct.mdp5_crtc* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = sext i32 %88 to i64
  %90 = call i32 @abs(i64 %89)
  store i32 %90, i32* %13, align 4
  store i32 0, i32* %11, align 4
  br label %92

91:                                               ; preds = %78
  store i32 0, i32* %13, align 4
  br label %92

92:                                               ; preds = %91, %84
  %93 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %94 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %10, align 4
  %97 = load i32, i32* %11, align 4
  %98 = load i32, i32* %16, align 4
  %99 = load i32, i32* %17, align 4
  %100 = load i32, i32* %12, align 4
  %101 = load i32, i32* %13, align 4
  %102 = call i32 @DBG(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %95, i32 %96, i32 %97, i32 %98, i32 %99, i32 %100, i32 %101)
  %103 = load %struct.mdp5_kms*, %struct.mdp5_kms** %6, align 8
  %104 = load i32, i32* %18, align 4
  %105 = call i32 @REG_MDP5_LM_CURSOR_STRIDE(i32 %104)
  %106 = load i32, i32* %9, align 4
  %107 = call i32 @mdp5_write(%struct.mdp5_kms* %103, i32 %105, i32 %106)
  %108 = load %struct.mdp5_kms*, %struct.mdp5_kms** %6, align 8
  %109 = load i32, i32* %18, align 4
  %110 = call i32 @REG_MDP5_LM_CURSOR_FORMAT(i32 %109)
  %111 = load i32, i32* @CURSOR_FMT_ARGB8888, align 4
  %112 = call i32 @MDP5_LM_CURSOR_FORMAT_FORMAT(i32 %111)
  %113 = call i32 @mdp5_write(%struct.mdp5_kms* %108, i32 %110, i32 %112)
  %114 = load %struct.mdp5_kms*, %struct.mdp5_kms** %6, align 8
  %115 = load i32, i32* %18, align 4
  %116 = call i32 @REG_MDP5_LM_CURSOR_IMG_SIZE(i32 %115)
  %117 = load i32, i32* %15, align 4
  %118 = call i32 @MDP5_LM_CURSOR_IMG_SIZE_SRC_H(i32 %117)
  %119 = load i32, i32* %14, align 4
  %120 = call i32 @MDP5_LM_CURSOR_IMG_SIZE_SRC_W(i32 %119)
  %121 = or i32 %118, %120
  %122 = call i32 @mdp5_write(%struct.mdp5_kms* %114, i32 %116, i32 %121)
  %123 = load %struct.mdp5_kms*, %struct.mdp5_kms** %6, align 8
  %124 = load i32, i32* %18, align 4
  %125 = call i32 @REG_MDP5_LM_CURSOR_SIZE(i32 %124)
  %126 = load i32, i32* %17, align 4
  %127 = call i32 @MDP5_LM_CURSOR_SIZE_ROI_H(i32 %126)
  %128 = load i32, i32* %16, align 4
  %129 = call i32 @MDP5_LM_CURSOR_SIZE_ROI_W(i32 %128)
  %130 = or i32 %127, %129
  %131 = call i32 @mdp5_write(%struct.mdp5_kms* %123, i32 %125, i32 %130)
  %132 = load %struct.mdp5_kms*, %struct.mdp5_kms** %6, align 8
  %133 = load i32, i32* %18, align 4
  %134 = call i32 @REG_MDP5_LM_CURSOR_START_XY(i32 %133)
  %135 = load i32, i32* %11, align 4
  %136 = call i32 @MDP5_LM_CURSOR_START_XY_Y_START(i32 %135)
  %137 = load i32, i32* %10, align 4
  %138 = call i32 @MDP5_LM_CURSOR_START_XY_X_START(i32 %137)
  %139 = or i32 %136, %138
  %140 = call i32 @mdp5_write(%struct.mdp5_kms* %132, i32 %134, i32 %139)
  %141 = load %struct.mdp5_kms*, %struct.mdp5_kms** %6, align 8
  %142 = load i32, i32* %18, align 4
  %143 = call i32 @REG_MDP5_LM_CURSOR_XY(i32 %142)
  %144 = load i32, i32* %13, align 4
  %145 = call i32 @MDP5_LM_CURSOR_XY_SRC_Y(i32 %144)
  %146 = load i32, i32* %12, align 4
  %147 = call i32 @MDP5_LM_CURSOR_XY_SRC_X(i32 %146)
  %148 = or i32 %145, %147
  %149 = call i32 @mdp5_write(%struct.mdp5_kms* %141, i32 %143, i32 %148)
  %150 = load %struct.mdp5_kms*, %struct.mdp5_kms** %6, align 8
  %151 = load i32, i32* %18, align 4
  %152 = call i32 @REG_MDP5_LM_CURSOR_BASE_ADDR(i32 %151)
  %153 = load %struct.mdp5_crtc*, %struct.mdp5_crtc** %5, align 8
  %154 = getelementptr inbounds %struct.mdp5_crtc, %struct.mdp5_crtc* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 4
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @mdp5_write(%struct.mdp5_kms* %150, i32 %152, i32 %156)
  %158 = load i32, i32* @MDP5_LM_CURSOR_BLEND_CONFIG_BLEND_EN, align 4
  store i32 %158, i32* %8, align 4
  %159 = load i32, i32* %7, align 4
  %160 = call i32 @MDP5_LM_CURSOR_BLEND_CONFIG_BLEND_ALPHA_SEL(i32 %159)
  %161 = load i32, i32* %8, align 4
  %162 = or i32 %161, %160
  store i32 %162, i32* %8, align 4
  %163 = load %struct.mdp5_kms*, %struct.mdp5_kms** %6, align 8
  %164 = load i32, i32* %18, align 4
  %165 = call i32 @REG_MDP5_LM_CURSOR_BLEND_CONFIG(i32 %164)
  %166 = load i32, i32* %8, align 4
  %167 = call i32 @mdp5_write(%struct.mdp5_kms* %163, i32 %165, i32 %166)
  ret void
}

declare dso_local %struct.drm_format_info* @drm_format_info(i32) #1

declare dso_local %struct.mdp5_crtc_state* @to_mdp5_crtc_state(i32) #1

declare dso_local %struct.mdp5_crtc* @to_mdp5_crtc(%struct.drm_crtc*) #1

declare dso_local %struct.mdp5_kms* @get_kms(%struct.drm_crtc*) #1

declare dso_local i32 @assert_spin_locked(i32*) #1

declare dso_local i32 @get_roi(%struct.drm_crtc*, i32*, i32*) #1

declare dso_local i32 @abs(i64) #1

declare dso_local i32 @DBG(i8*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mdp5_write(%struct.mdp5_kms*, i32, i32) #1

declare dso_local i32 @REG_MDP5_LM_CURSOR_STRIDE(i32) #1

declare dso_local i32 @REG_MDP5_LM_CURSOR_FORMAT(i32) #1

declare dso_local i32 @MDP5_LM_CURSOR_FORMAT_FORMAT(i32) #1

declare dso_local i32 @REG_MDP5_LM_CURSOR_IMG_SIZE(i32) #1

declare dso_local i32 @MDP5_LM_CURSOR_IMG_SIZE_SRC_H(i32) #1

declare dso_local i32 @MDP5_LM_CURSOR_IMG_SIZE_SRC_W(i32) #1

declare dso_local i32 @REG_MDP5_LM_CURSOR_SIZE(i32) #1

declare dso_local i32 @MDP5_LM_CURSOR_SIZE_ROI_H(i32) #1

declare dso_local i32 @MDP5_LM_CURSOR_SIZE_ROI_W(i32) #1

declare dso_local i32 @REG_MDP5_LM_CURSOR_START_XY(i32) #1

declare dso_local i32 @MDP5_LM_CURSOR_START_XY_Y_START(i32) #1

declare dso_local i32 @MDP5_LM_CURSOR_START_XY_X_START(i32) #1

declare dso_local i32 @REG_MDP5_LM_CURSOR_XY(i32) #1

declare dso_local i32 @MDP5_LM_CURSOR_XY_SRC_Y(i32) #1

declare dso_local i32 @MDP5_LM_CURSOR_XY_SRC_X(i32) #1

declare dso_local i32 @REG_MDP5_LM_CURSOR_BASE_ADDR(i32) #1

declare dso_local i32 @MDP5_LM_CURSOR_BLEND_CONFIG_BLEND_ALPHA_SEL(i32) #1

declare dso_local i32 @REG_MDP5_LM_CURSOR_BLEND_CONFIG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
