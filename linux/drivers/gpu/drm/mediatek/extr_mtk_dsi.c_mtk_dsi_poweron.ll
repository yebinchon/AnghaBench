; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_dsi.c_mtk_dsi_poweron.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_dsi.c_mtk_dsi_poweron.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_dsi = type { i32, i32, i32, i32, i32, i32, i64, i32, i32, %struct.TYPE_2__, %struct.device* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }
%struct.device = type { i32 }

@T_LPX = common dso_local global i32 0, align 4
@T_HS_PREP = common dso_local global i32 0, align 4
@T_HS_ZERO = common dso_local global i32 0, align 4
@T_HS_TRAIL = common dso_local global i32 0, align 4
@T_HS_EXIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Failed to set data rate: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Failed to enable engine clock: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"Failed to enable digital clock: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"failed to prepare the panel\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtk_dsi*)* @mtk_dsi_poweron to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_dsi_poweron(%struct.mtk_dsi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mtk_dsi*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mtk_dsi* %0, %struct.mtk_dsi** %3, align 8
  %13 = load %struct.mtk_dsi*, %struct.mtk_dsi** %3, align 8
  %14 = getelementptr inbounds %struct.mtk_dsi, %struct.mtk_dsi* %13, i32 0, i32 10
  %15 = load %struct.device*, %struct.device** %14, align 8
  store %struct.device* %15, %struct.device** %4, align 8
  %16 = load %struct.mtk_dsi*, %struct.mtk_dsi** %3, align 8
  %17 = getelementptr inbounds %struct.mtk_dsi, %struct.mtk_dsi* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %17, align 8
  %20 = icmp ne i32 %19, 1
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %183

22:                                               ; preds = %1
  %23 = load %struct.mtk_dsi*, %struct.mtk_dsi** %3, align 8
  %24 = getelementptr inbounds %struct.mtk_dsi, %struct.mtk_dsi* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %29 [
    i32 131, label %26
    i32 129, label %27
    i32 130, label %28
    i32 128, label %28
  ]

26:                                               ; preds = %22
  store i32 16, i32* %10, align 4
  br label %30

27:                                               ; preds = %22
  store i32 18, i32* %10, align 4
  br label %30

28:                                               ; preds = %22, %22
  br label %29

29:                                               ; preds = %22, %28
  store i32 24, i32* %10, align 4
  br label %30

30:                                               ; preds = %29, %27, %26
  %31 = load %struct.mtk_dsi*, %struct.mtk_dsi** %3, align 8
  %32 = getelementptr inbounds %struct.mtk_dsi, %struct.mtk_dsi* %31, i32 0, i32 9
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %6, align 4
  %35 = load %struct.mtk_dsi*, %struct.mtk_dsi** %3, align 8
  %36 = getelementptr inbounds %struct.mtk_dsi, %struct.mtk_dsi* %35, i32 0, i32 9
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.mtk_dsi*, %struct.mtk_dsi** %3, align 8
  %40 = getelementptr inbounds %struct.mtk_dsi, %struct.mtk_dsi* %39, i32 0, i32 9
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = add nsw i32 %38, %42
  %44 = load %struct.mtk_dsi*, %struct.mtk_dsi** %3, align 8
  %45 = getelementptr inbounds %struct.mtk_dsi, %struct.mtk_dsi* %44, i32 0, i32 9
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %43, %47
  %49 = load %struct.mtk_dsi*, %struct.mtk_dsi** %3, align 8
  %50 = getelementptr inbounds %struct.mtk_dsi, %struct.mtk_dsi* %49, i32 0, i32 9
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 8
  %53 = add nsw i32 %48, %52
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %10, align 4
  %56 = mul nsw i32 %54, %55
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* @T_LPX, align 4
  %58 = load i32, i32* @T_HS_PREP, align 4
  %59 = add nsw i32 %57, %58
  %60 = load i32, i32* @T_HS_ZERO, align 4
  %61 = add nsw i32 %59, %60
  %62 = load i32, i32* @T_HS_TRAIL, align 4
  %63 = add nsw i32 %61, %62
  %64 = load i32, i32* @T_HS_EXIT, align 4
  %65 = add nsw i32 %63, %64
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %11, align 4
  %67 = load %struct.mtk_dsi*, %struct.mtk_dsi** %3, align 8
  %68 = getelementptr inbounds %struct.mtk_dsi, %struct.mtk_dsi* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = mul nsw i32 %66, %69
  %71 = mul nsw i32 %70, 8
  store i32 %71, i32* %12, align 4
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* %12, align 4
  %74 = add nsw i32 %72, %73
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* %7, align 4
  %77 = mul nsw i32 %75, %76
  %78 = load i32, i32* %8, align 4
  %79 = load %struct.mtk_dsi*, %struct.mtk_dsi** %3, align 8
  %80 = getelementptr inbounds %struct.mtk_dsi, %struct.mtk_dsi* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = mul nsw i32 %78, %81
  %83 = call i32 @DIV_ROUND_UP_ULL(i32 %77, i32 %82)
  %84 = load %struct.mtk_dsi*, %struct.mtk_dsi** %3, align 8
  %85 = getelementptr inbounds %struct.mtk_dsi, %struct.mtk_dsi* %84, i32 0, i32 7
  store i32 %83, i32* %85, align 8
  %86 = load %struct.mtk_dsi*, %struct.mtk_dsi** %3, align 8
  %87 = getelementptr inbounds %struct.mtk_dsi, %struct.mtk_dsi* %86, i32 0, i32 8
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.mtk_dsi*, %struct.mtk_dsi** %3, align 8
  %90 = getelementptr inbounds %struct.mtk_dsi, %struct.mtk_dsi* %89, i32 0, i32 7
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @clk_set_rate(i32 %88, i32 %91)
  store i32 %92, i32* %5, align 4
  %93 = load i32, i32* %5, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %30
  %96 = load %struct.device*, %struct.device** %4, align 8
  %97 = load i32, i32* %5, align 4
  %98 = call i32 @dev_err(%struct.device* %96, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %97)
  br label %177

99:                                               ; preds = %30
  %100 = load %struct.mtk_dsi*, %struct.mtk_dsi** %3, align 8
  %101 = getelementptr inbounds %struct.mtk_dsi, %struct.mtk_dsi* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @phy_power_on(i32 %102)
  %104 = load %struct.mtk_dsi*, %struct.mtk_dsi** %3, align 8
  %105 = getelementptr inbounds %struct.mtk_dsi, %struct.mtk_dsi* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @clk_prepare_enable(i32 %106)
  store i32 %107, i32* %5, align 4
  %108 = load i32, i32* %5, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %99
  %111 = load %struct.device*, %struct.device** %4, align 8
  %112 = load i32, i32* %5, align 4
  %113 = call i32 @dev_err(%struct.device* %111, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %112)
  br label %172

114:                                              ; preds = %99
  %115 = load %struct.mtk_dsi*, %struct.mtk_dsi** %3, align 8
  %116 = getelementptr inbounds %struct.mtk_dsi, %struct.mtk_dsi* %115, i32 0, i32 5
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @clk_prepare_enable(i32 %117)
  store i32 %118, i32* %5, align 4
  %119 = load i32, i32* %5, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %114
  %122 = load %struct.device*, %struct.device** %4, align 8
  %123 = load i32, i32* %5, align 4
  %124 = call i32 @dev_err(%struct.device* %122, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %123)
  br label %167

125:                                              ; preds = %114
  %126 = load %struct.mtk_dsi*, %struct.mtk_dsi** %3, align 8
  %127 = call i32 @mtk_dsi_enable(%struct.mtk_dsi* %126)
  %128 = load %struct.mtk_dsi*, %struct.mtk_dsi** %3, align 8
  %129 = call i32 @mtk_dsi_reset_engine(%struct.mtk_dsi* %128)
  %130 = load %struct.mtk_dsi*, %struct.mtk_dsi** %3, align 8
  %131 = call i32 @mtk_dsi_phy_timconfig(%struct.mtk_dsi* %130)
  %132 = load %struct.mtk_dsi*, %struct.mtk_dsi** %3, align 8
  %133 = call i32 @mtk_dsi_rxtx_control(%struct.mtk_dsi* %132)
  %134 = load %struct.mtk_dsi*, %struct.mtk_dsi** %3, align 8
  %135 = call i32 @mtk_dsi_ps_control_vact(%struct.mtk_dsi* %134)
  %136 = load %struct.mtk_dsi*, %struct.mtk_dsi** %3, align 8
  %137 = call i32 @mtk_dsi_set_vm_cmd(%struct.mtk_dsi* %136)
  %138 = load %struct.mtk_dsi*, %struct.mtk_dsi** %3, align 8
  %139 = call i32 @mtk_dsi_config_vdo_timing(%struct.mtk_dsi* %138)
  %140 = load %struct.mtk_dsi*, %struct.mtk_dsi** %3, align 8
  %141 = call i32 @mtk_dsi_set_interrupt_enable(%struct.mtk_dsi* %140)
  %142 = load %struct.mtk_dsi*, %struct.mtk_dsi** %3, align 8
  %143 = call i32 @mtk_dsi_clk_ulp_mode_leave(%struct.mtk_dsi* %142)
  %144 = load %struct.mtk_dsi*, %struct.mtk_dsi** %3, align 8
  %145 = call i32 @mtk_dsi_lane0_ulp_mode_leave(%struct.mtk_dsi* %144)
  %146 = load %struct.mtk_dsi*, %struct.mtk_dsi** %3, align 8
  %147 = call i32 @mtk_dsi_clk_hs_mode(%struct.mtk_dsi* %146, i32 0)
  %148 = load %struct.mtk_dsi*, %struct.mtk_dsi** %3, align 8
  %149 = getelementptr inbounds %struct.mtk_dsi, %struct.mtk_dsi* %148, i32 0, i32 6
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %161

152:                                              ; preds = %125
  %153 = load %struct.mtk_dsi*, %struct.mtk_dsi** %3, align 8
  %154 = getelementptr inbounds %struct.mtk_dsi, %struct.mtk_dsi* %153, i32 0, i32 6
  %155 = load i64, i64* %154, align 8
  %156 = call i64 @drm_panel_prepare(i64 %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %152
  %159 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %162

160:                                              ; preds = %152
  br label %161

161:                                              ; preds = %160, %125
  store i32 0, i32* %2, align 4
  br label %183

162:                                              ; preds = %158
  %163 = load %struct.mtk_dsi*, %struct.mtk_dsi** %3, align 8
  %164 = getelementptr inbounds %struct.mtk_dsi, %struct.mtk_dsi* %163, i32 0, i32 5
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @clk_disable_unprepare(i32 %165)
  br label %167

167:                                              ; preds = %162, %121
  %168 = load %struct.mtk_dsi*, %struct.mtk_dsi** %3, align 8
  %169 = getelementptr inbounds %struct.mtk_dsi, %struct.mtk_dsi* %168, i32 0, i32 4
  %170 = load i32, i32* %169, align 8
  %171 = call i32 @clk_disable_unprepare(i32 %170)
  br label %172

172:                                              ; preds = %167, %110
  %173 = load %struct.mtk_dsi*, %struct.mtk_dsi** %3, align 8
  %174 = getelementptr inbounds %struct.mtk_dsi, %struct.mtk_dsi* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @phy_power_off(i32 %175)
  br label %177

177:                                              ; preds = %172, %95
  %178 = load %struct.mtk_dsi*, %struct.mtk_dsi** %3, align 8
  %179 = getelementptr inbounds %struct.mtk_dsi, %struct.mtk_dsi* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = add nsw i32 %180, -1
  store i32 %181, i32* %179, align 8
  %182 = load i32, i32* %5, align 4
  store i32 %182, i32* %2, align 4
  br label %183

183:                                              ; preds = %177, %161, %21
  %184 = load i32, i32* %2, align 4
  ret i32 %184
}

declare dso_local i32 @DIV_ROUND_UP_ULL(i32, i32) #1

declare dso_local i32 @clk_set_rate(i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @phy_power_on(i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @mtk_dsi_enable(%struct.mtk_dsi*) #1

declare dso_local i32 @mtk_dsi_reset_engine(%struct.mtk_dsi*) #1

declare dso_local i32 @mtk_dsi_phy_timconfig(%struct.mtk_dsi*) #1

declare dso_local i32 @mtk_dsi_rxtx_control(%struct.mtk_dsi*) #1

declare dso_local i32 @mtk_dsi_ps_control_vact(%struct.mtk_dsi*) #1

declare dso_local i32 @mtk_dsi_set_vm_cmd(%struct.mtk_dsi*) #1

declare dso_local i32 @mtk_dsi_config_vdo_timing(%struct.mtk_dsi*) #1

declare dso_local i32 @mtk_dsi_set_interrupt_enable(%struct.mtk_dsi*) #1

declare dso_local i32 @mtk_dsi_clk_ulp_mode_leave(%struct.mtk_dsi*) #1

declare dso_local i32 @mtk_dsi_lane0_ulp_mode_leave(%struct.mtk_dsi*) #1

declare dso_local i32 @mtk_dsi_clk_hs_mode(%struct.mtk_dsi*, i32) #1

declare dso_local i64 @drm_panel_prepare(i64) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @phy_power_off(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
