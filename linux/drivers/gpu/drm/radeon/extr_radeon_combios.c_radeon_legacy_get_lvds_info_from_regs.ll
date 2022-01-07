; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_combios.c_radeon_legacy_get_lvds_info_from_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_combios.c_radeon_legacy_get_lvds_info_from_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_encoder_lvds = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.radeon_device = type { i32 }

@RADEON_LVDS_SS_GEN_CNTL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@RADEON_FP_VERT_STRETCH = common dso_local global i32 0, align 4
@RADEON_FP_HORZ_STRETCH = common dso_local global i32 0, align 4
@RADEON_LVDS_GEN_CNTL = common dso_local global i32 0, align 4
@RADEON_LVDS_PWRSEQ_DELAY1_SHIFT = common dso_local global i32 0, align 4
@RADEON_LVDS_PWRSEQ_DELAY2_SHIFT = common dso_local global i32 0, align 4
@RADEON_VERT_STRETCH_ENABLE = common dso_local global i32 0, align 4
@RADEON_VERT_PANEL_SIZE = common dso_local global i32 0, align 4
@RADEON_VERT_PANEL_SHIFT = common dso_local global i32 0, align 4
@RADEON_CRTC_V_TOTAL_DISP = common dso_local global i32 0, align 4
@RADEON_HORZ_STRETCH_ENABLE = common dso_local global i32 0, align 4
@RADEON_HORZ_PANEL_SIZE = common dso_local global i32 0, align 4
@RADEON_HORZ_PANEL_SHIFT = common dso_local global i32 0, align 4
@RADEON_CRTC_H_TOTAL_DISP = common dso_local global i32 0, align 4
@RADEON_CLOCK_CNTL_INDEX = common dso_local global i64 0, align 8
@RADEON_PPLL_DIV_0 = common dso_local global i64 0, align 8
@RADEON_PPLL_REF_DIV = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"Panel info derived from registers\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Panel Size %dx%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.radeon_encoder_lvds* (%struct.radeon_device*)* @radeon_legacy_get_lvds_info_from_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.radeon_encoder_lvds* @radeon_legacy_get_lvds_info_from_regs(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_encoder_lvds*, align 8
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.radeon_encoder_lvds*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store %struct.radeon_encoder_lvds* null, %struct.radeon_encoder_lvds** %4, align 8
  %10 = load i32, i32* @RADEON_LVDS_SS_GEN_CNTL, align 4
  %11 = call i32 @RREG32(i32 %10)
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.radeon_encoder_lvds* @kzalloc(i32 44, i32 %12)
  store %struct.radeon_encoder_lvds* %13, %struct.radeon_encoder_lvds** %4, align 8
  %14 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %4, align 8
  %15 = icmp ne %struct.radeon_encoder_lvds* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  store %struct.radeon_encoder_lvds* null, %struct.radeon_encoder_lvds** %2, align 8
  br label %166

17:                                               ; preds = %1
  %18 = load i32, i32* @RADEON_FP_VERT_STRETCH, align 4
  %19 = call i32 @RREG32(i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* @RADEON_FP_HORZ_STRETCH, align 4
  %21 = call i32 @RREG32(i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %4, align 8
  %23 = getelementptr inbounds %struct.radeon_encoder_lvds, %struct.radeon_encoder_lvds* %22, i32 0, i32 0
  store i32 200, i32* %23, align 4
  %24 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %4, align 8
  %25 = getelementptr inbounds %struct.radeon_encoder_lvds, %struct.radeon_encoder_lvds* %24, i32 0, i32 1
  store i32 2000, i32* %25, align 4
  %26 = load i32, i32* @RADEON_LVDS_GEN_CNTL, align 4
  %27 = call i32 @RREG32(i32 %26)
  %28 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %4, align 8
  %29 = getelementptr inbounds %struct.radeon_encoder_lvds, %struct.radeon_encoder_lvds* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @RADEON_LVDS_PWRSEQ_DELAY1_SHIFT, align 4
  %32 = ashr i32 %30, %31
  %33 = and i32 %32, 15
  %34 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %4, align 8
  %35 = getelementptr inbounds %struct.radeon_encoder_lvds, %struct.radeon_encoder_lvds* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @RADEON_LVDS_PWRSEQ_DELAY2_SHIFT, align 4
  %38 = ashr i32 %36, %37
  %39 = and i32 %38, 15
  %40 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %4, align 8
  %41 = getelementptr inbounds %struct.radeon_encoder_lvds, %struct.radeon_encoder_lvds* %40, i32 0, i32 4
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @RADEON_VERT_STRETCH_ENABLE, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %17
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @RADEON_VERT_PANEL_SIZE, align 4
  %49 = and i32 %47, %48
  %50 = load i32, i32* @RADEON_VERT_PANEL_SHIFT, align 4
  %51 = ashr i32 %49, %50
  %52 = add nsw i32 %51, 1
  %53 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %4, align 8
  %54 = getelementptr inbounds %struct.radeon_encoder_lvds, %struct.radeon_encoder_lvds* %53, i32 0, i32 9
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  store i32 %52, i32* %55, align 4
  br label %64

56:                                               ; preds = %17
  %57 = load i32, i32* @RADEON_CRTC_V_TOTAL_DISP, align 4
  %58 = call i32 @RREG32(i32 %57)
  %59 = ashr i32 %58, 16
  %60 = add nsw i32 %59, 1
  %61 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %4, align 8
  %62 = getelementptr inbounds %struct.radeon_encoder_lvds, %struct.radeon_encoder_lvds* %61, i32 0, i32 9
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  store i32 %60, i32* %63, align 4
  br label %64

64:                                               ; preds = %56, %46
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @RADEON_HORZ_STRETCH_ENABLE, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %80

69:                                               ; preds = %64
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* @RADEON_HORZ_PANEL_SIZE, align 4
  %72 = and i32 %70, %71
  %73 = load i32, i32* @RADEON_HORZ_PANEL_SHIFT, align 4
  %74 = ashr i32 %72, %73
  %75 = add nsw i32 %74, 1
  %76 = mul nsw i32 %75, 8
  %77 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %4, align 8
  %78 = getelementptr inbounds %struct.radeon_encoder_lvds, %struct.radeon_encoder_lvds* %77, i32 0, i32 9
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  store i32 %76, i32* %79, align 4
  br label %89

80:                                               ; preds = %64
  %81 = load i32, i32* @RADEON_CRTC_H_TOTAL_DISP, align 4
  %82 = call i32 @RREG32(i32 %81)
  %83 = ashr i32 %82, 16
  %84 = add nsw i32 %83, 1
  %85 = mul nsw i32 %84, 8
  %86 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %4, align 8
  %87 = getelementptr inbounds %struct.radeon_encoder_lvds, %struct.radeon_encoder_lvds* %86, i32 0, i32 9
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  store i32 %85, i32* %88, align 4
  br label %89

89:                                               ; preds = %80, %69
  %90 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %4, align 8
  %91 = getelementptr inbounds %struct.radeon_encoder_lvds, %struct.radeon_encoder_lvds* %90, i32 0, i32 9
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = icmp slt i32 %93, 640
  br i1 %94, label %101, label %95

95:                                               ; preds = %89
  %96 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %4, align 8
  %97 = getelementptr inbounds %struct.radeon_encoder_lvds, %struct.radeon_encoder_lvds* %96, i32 0, i32 9
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = icmp slt i32 %99, 480
  br i1 %100, label %101, label %108

101:                                              ; preds = %95, %89
  %102 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %4, align 8
  %103 = getelementptr inbounds %struct.radeon_encoder_lvds, %struct.radeon_encoder_lvds* %102, i32 0, i32 9
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 1
  store i32 640, i32* %104, align 4
  %105 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %4, align 8
  %106 = getelementptr inbounds %struct.radeon_encoder_lvds, %struct.radeon_encoder_lvds* %105, i32 0, i32 9
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  store i32 480, i32* %107, align 4
  br label %108

108:                                              ; preds = %101, %95
  %109 = load i64, i64* @RADEON_CLOCK_CNTL_INDEX, align 8
  %110 = add nsw i64 %109, 1
  %111 = call i32 @RREG8(i64 %110)
  %112 = and i32 %111, 3
  store i32 %112, i32* %7, align 4
  %113 = load i64, i64* @RADEON_PPLL_DIV_0, align 8
  %114 = load i32, i32* %7, align 4
  %115 = sext i32 %114 to i64
  %116 = add nsw i64 %113, %115
  %117 = call i32 @RREG32_PLL(i64 %116)
  store i32 %117, i32* %8, align 4
  %118 = load i32, i32* %8, align 4
  %119 = and i32 %118, 460799
  %120 = icmp eq i32 %119, 443
  br i1 %120, label %121, label %124

121:                                              ; preds = %108
  %122 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %4, align 8
  %123 = getelementptr inbounds %struct.radeon_encoder_lvds, %struct.radeon_encoder_lvds* %122, i32 0, i32 5
  store i32 0, i32* %123, align 4
  br label %152

124:                                              ; preds = %108
  %125 = load i64, i64* @RADEON_PPLL_REF_DIV, align 8
  %126 = call i32 @RREG32_PLL(i64 %125)
  %127 = and i32 %126, 1023
  %128 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %4, align 8
  %129 = getelementptr inbounds %struct.radeon_encoder_lvds, %struct.radeon_encoder_lvds* %128, i32 0, i32 6
  store i32 %127, i32* %129, align 4
  %130 = load i32, i32* %8, align 4
  %131 = ashr i32 %130, 16
  %132 = and i32 %131, 7
  %133 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %4, align 8
  %134 = getelementptr inbounds %struct.radeon_encoder_lvds, %struct.radeon_encoder_lvds* %133, i32 0, i32 7
  store i32 %132, i32* %134, align 4
  %135 = load i32, i32* %8, align 4
  %136 = and i32 %135, 2047
  %137 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %4, align 8
  %138 = getelementptr inbounds %struct.radeon_encoder_lvds, %struct.radeon_encoder_lvds* %137, i32 0, i32 8
  store i32 %136, i32* %138, align 4
  %139 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %4, align 8
  %140 = getelementptr inbounds %struct.radeon_encoder_lvds, %struct.radeon_encoder_lvds* %139, i32 0, i32 6
  %141 = load i32, i32* %140, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %151

143:                                              ; preds = %124
  %144 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %4, align 8
  %145 = getelementptr inbounds %struct.radeon_encoder_lvds, %struct.radeon_encoder_lvds* %144, i32 0, i32 8
  %146 = load i32, i32* %145, align 4
  %147 = icmp sgt i32 %146, 3
  br i1 %147, label %148, label %151

148:                                              ; preds = %143
  %149 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %4, align 8
  %150 = getelementptr inbounds %struct.radeon_encoder_lvds, %struct.radeon_encoder_lvds* %149, i32 0, i32 5
  store i32 1, i32* %150, align 4
  br label %151

151:                                              ; preds = %148, %143, %124
  br label %152

152:                                              ; preds = %151, %121
  %153 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %4, align 8
  %154 = getelementptr inbounds %struct.radeon_encoder_lvds, %struct.radeon_encoder_lvds* %153, i32 0, i32 1
  store i32 200, i32* %154, align 4
  %155 = call i32 (i8*, ...) @DRM_INFO(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %156 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %4, align 8
  %157 = getelementptr inbounds %struct.radeon_encoder_lvds, %struct.radeon_encoder_lvds* %156, i32 0, i32 9
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %4, align 8
  %161 = getelementptr inbounds %struct.radeon_encoder_lvds, %struct.radeon_encoder_lvds* %160, i32 0, i32 9
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = call i32 (i8*, ...) @DRM_INFO(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %159, i32 %163)
  %165 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %4, align 8
  store %struct.radeon_encoder_lvds* %165, %struct.radeon_encoder_lvds** %2, align 8
  br label %166

166:                                              ; preds = %152, %16
  %167 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %2, align 8
  ret %struct.radeon_encoder_lvds* %167
}

declare dso_local i32 @RREG32(i32) #1

declare dso_local %struct.radeon_encoder_lvds* @kzalloc(i32, i32) #1

declare dso_local i32 @RREG8(i64) #1

declare dso_local i32 @RREG32_PLL(i64) #1

declare dso_local i32 @DRM_INFO(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
