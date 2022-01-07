; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-hdmi.c_hdmi_video_packetize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-hdmi.c_hdmi_video_packetize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_hdmi = type { %struct.hdmi_data_info }
%struct.hdmi_data_info = type { i32, i32 }

@HDMI_VP_REMAP_YCC422_16bit = common dso_local global i32 0, align 4
@HDMI_VP_CONF_OUTPUT_SELECTOR_PP = common dso_local global i32 0, align 4
@HDMI_VP_CONF_OUTPUT_SELECTOR_BYPASS = common dso_local global i32 0, align 4
@HDMI_VP_REMAP_YCC422_20bit = common dso_local global i32 0, align 4
@HDMI_VP_REMAP_YCC422_24bit = common dso_local global i32 0, align 4
@HDMI_VP_CONF_OUTPUT_SELECTOR_YCC422 = common dso_local global i32 0, align 4
@HDMI_VP_PR_CD_COLOR_DEPTH_OFFSET = common dso_local global i32 0, align 4
@HDMI_VP_PR_CD_COLOR_DEPTH_MASK = common dso_local global i32 0, align 4
@HDMI_VP_PR_CD_DESIRED_PR_FACTOR_OFFSET = common dso_local global i32 0, align 4
@HDMI_VP_PR_CD_DESIRED_PR_FACTOR_MASK = common dso_local global i32 0, align 4
@HDMI_VP_PR_CD = common dso_local global i32 0, align 4
@HDMI_VP_STUFF_PR_STUFFING_STUFFING_MODE = common dso_local global i32 0, align 4
@HDMI_VP_STUFF_PR_STUFFING_MASK = common dso_local global i32 0, align 4
@HDMI_VP_STUFF = common dso_local global i32 0, align 4
@HDMI_VP_CONF_PR_EN_ENABLE = common dso_local global i32 0, align 4
@HDMI_VP_CONF_BYPASS_SELECT_PIX_REPEATER = common dso_local global i32 0, align 4
@HDMI_VP_CONF_PR_EN_DISABLE = common dso_local global i32 0, align 4
@HDMI_VP_CONF_BYPASS_SELECT_VID_PACKETIZER = common dso_local global i32 0, align 4
@HDMI_VP_CONF_PR_EN_MASK = common dso_local global i32 0, align 4
@HDMI_VP_CONF_BYPASS_SELECT_MASK = common dso_local global i32 0, align 4
@HDMI_VP_CONF = common dso_local global i32 0, align 4
@HDMI_VP_STUFF_IDEFAULT_PHASE_OFFSET = common dso_local global i32 0, align 4
@HDMI_VP_STUFF_IDEFAULT_PHASE_MASK = common dso_local global i32 0, align 4
@HDMI_VP_REMAP = common dso_local global i32 0, align 4
@HDMI_VP_CONF_BYPASS_EN_DISABLE = common dso_local global i32 0, align 4
@HDMI_VP_CONF_PP_EN_ENABLE = common dso_local global i32 0, align 4
@HDMI_VP_CONF_YCC422_EN_DISABLE = common dso_local global i32 0, align 4
@HDMI_VP_CONF_PP_EN_DISABLE = common dso_local global i32 0, align 4
@HDMI_VP_CONF_YCC422_EN_ENABLE = common dso_local global i32 0, align 4
@HDMI_VP_CONF_BYPASS_EN_ENABLE = common dso_local global i32 0, align 4
@HDMI_VP_CONF_BYPASS_EN_MASK = common dso_local global i32 0, align 4
@HDMI_VP_CONF_PP_EN_ENMASK = common dso_local global i32 0, align 4
@HDMI_VP_CONF_YCC422_EN_MASK = common dso_local global i32 0, align 4
@HDMI_VP_STUFF_PP_STUFFING_STUFFING_MODE = common dso_local global i32 0, align 4
@HDMI_VP_STUFF_YCC422_STUFFING_STUFFING_MODE = common dso_local global i32 0, align 4
@HDMI_VP_STUFF_PP_STUFFING_MASK = common dso_local global i32 0, align 4
@HDMI_VP_STUFF_YCC422_STUFFING_MASK = common dso_local global i32 0, align 4
@HDMI_VP_CONF_OUTPUT_SELECTOR_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dw_hdmi*)* @hdmi_video_packetize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdmi_video_packetize(%struct.dw_hdmi* %0) #0 {
  %2 = alloca %struct.dw_hdmi*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.hdmi_data_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dw_hdmi* %0, %struct.dw_hdmi** %2, align 8
  store i32 0, i32* %3, align 4
  %9 = load i32, i32* @HDMI_VP_REMAP_YCC422_16bit, align 4
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* @HDMI_VP_CONF_OUTPUT_SELECTOR_PP, align 4
  store i32 %10, i32* %5, align 4
  %11 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %12 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %11, i32 0, i32 0
  store %struct.hdmi_data_info* %12, %struct.hdmi_data_info** %6, align 8
  %13 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %14 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.hdmi_data_info, %struct.hdmi_data_info* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @hdmi_bus_fmt_is_rgb(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %33, label %19

19:                                               ; preds = %1
  %20 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %21 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.hdmi_data_info, %struct.hdmi_data_info* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @hdmi_bus_fmt_is_yuv444(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %19
  %27 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %28 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.hdmi_data_info, %struct.hdmi_data_info* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @hdmi_bus_fmt_is_yuv420(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %47

33:                                               ; preds = %26, %19, %1
  %34 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %35 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.hdmi_data_info, %struct.hdmi_data_info* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @hdmi_bus_fmt_color_depth(i32 %37)
  switch i32 %38, label %44 [
    i32 8, label %39
    i32 10, label %41
    i32 12, label %42
    i32 16, label %43
  ]

39:                                               ; preds = %33
  store i32 4, i32* %3, align 4
  %40 = load i32, i32* @HDMI_VP_CONF_OUTPUT_SELECTOR_BYPASS, align 4
  store i32 %40, i32* %5, align 4
  br label %46

41:                                               ; preds = %33
  store i32 5, i32* %3, align 4
  br label %46

42:                                               ; preds = %33
  store i32 6, i32* %3, align 4
  br label %46

43:                                               ; preds = %33
  store i32 7, i32* %3, align 4
  br label %46

44:                                               ; preds = %33
  %45 = load i32, i32* @HDMI_VP_CONF_OUTPUT_SELECTOR_BYPASS, align 4
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %44, %43, %42, %41, %39
  br label %71

47:                                               ; preds = %26
  %48 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %49 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.hdmi_data_info, %struct.hdmi_data_info* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @hdmi_bus_fmt_is_yuv422(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %69

54:                                               ; preds = %47
  %55 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %56 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.hdmi_data_info, %struct.hdmi_data_info* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @hdmi_bus_fmt_color_depth(i32 %58)
  switch i32 %59, label %66 [
    i32 0, label %60
    i32 8, label %60
    i32 10, label %62
    i32 12, label %64
  ]

60:                                               ; preds = %54, %54
  %61 = load i32, i32* @HDMI_VP_REMAP_YCC422_16bit, align 4
  store i32 %61, i32* %4, align 4
  br label %67

62:                                               ; preds = %54
  %63 = load i32, i32* @HDMI_VP_REMAP_YCC422_20bit, align 4
  store i32 %63, i32* %4, align 4
  br label %67

64:                                               ; preds = %54
  %65 = load i32, i32* @HDMI_VP_REMAP_YCC422_24bit, align 4
  store i32 %65, i32* %4, align 4
  br label %67

66:                                               ; preds = %54
  br label %180

67:                                               ; preds = %64, %62, %60
  %68 = load i32, i32* @HDMI_VP_CONF_OUTPUT_SELECTOR_YCC422, align 4
  store i32 %68, i32* %5, align 4
  br label %70

69:                                               ; preds = %47
  br label %180

70:                                               ; preds = %67
  br label %71

71:                                               ; preds = %70, %46
  %72 = load i32, i32* %3, align 4
  %73 = load i32, i32* @HDMI_VP_PR_CD_COLOR_DEPTH_OFFSET, align 4
  %74 = shl i32 %72, %73
  %75 = load i32, i32* @HDMI_VP_PR_CD_COLOR_DEPTH_MASK, align 4
  %76 = and i32 %74, %75
  %77 = load %struct.hdmi_data_info*, %struct.hdmi_data_info** %6, align 8
  %78 = getelementptr inbounds %struct.hdmi_data_info, %struct.hdmi_data_info* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @HDMI_VP_PR_CD_DESIRED_PR_FACTOR_OFFSET, align 4
  %81 = shl i32 %79, %80
  %82 = load i32, i32* @HDMI_VP_PR_CD_DESIRED_PR_FACTOR_MASK, align 4
  %83 = and i32 %81, %82
  %84 = or i32 %76, %83
  store i32 %84, i32* %7, align 4
  %85 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* @HDMI_VP_PR_CD, align 4
  %88 = call i32 @hdmi_writeb(%struct.dw_hdmi* %85, i32 %86, i32 %87)
  %89 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %90 = load i32, i32* @HDMI_VP_STUFF_PR_STUFFING_STUFFING_MODE, align 4
  %91 = load i32, i32* @HDMI_VP_STUFF_PR_STUFFING_MASK, align 4
  %92 = load i32, i32* @HDMI_VP_STUFF, align 4
  %93 = call i32 @hdmi_modb(%struct.dw_hdmi* %89, i32 %90, i32 %91, i32 %92)
  %94 = load %struct.hdmi_data_info*, %struct.hdmi_data_info** %6, align 8
  %95 = getelementptr inbounds %struct.hdmi_data_info, %struct.hdmi_data_info* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = icmp ugt i32 %96, 1
  br i1 %97, label %98, label %102

98:                                               ; preds = %71
  %99 = load i32, i32* @HDMI_VP_CONF_PR_EN_ENABLE, align 4
  %100 = load i32, i32* @HDMI_VP_CONF_BYPASS_SELECT_PIX_REPEATER, align 4
  %101 = or i32 %99, %100
  store i32 %101, i32* %8, align 4
  br label %106

102:                                              ; preds = %71
  %103 = load i32, i32* @HDMI_VP_CONF_PR_EN_DISABLE, align 4
  %104 = load i32, i32* @HDMI_VP_CONF_BYPASS_SELECT_VID_PACKETIZER, align 4
  %105 = or i32 %103, %104
  store i32 %105, i32* %8, align 4
  br label %106

106:                                              ; preds = %102, %98
  %107 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %108 = load i32, i32* %8, align 4
  %109 = load i32, i32* @HDMI_VP_CONF_PR_EN_MASK, align 4
  %110 = load i32, i32* @HDMI_VP_CONF_BYPASS_SELECT_MASK, align 4
  %111 = or i32 %109, %110
  %112 = load i32, i32* @HDMI_VP_CONF, align 4
  %113 = call i32 @hdmi_modb(%struct.dw_hdmi* %107, i32 %108, i32 %111, i32 %112)
  %114 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %115 = load i32, i32* @HDMI_VP_STUFF_IDEFAULT_PHASE_OFFSET, align 4
  %116 = shl i32 1, %115
  %117 = load i32, i32* @HDMI_VP_STUFF_IDEFAULT_PHASE_MASK, align 4
  %118 = load i32, i32* @HDMI_VP_STUFF, align 4
  %119 = call i32 @hdmi_modb(%struct.dw_hdmi* %114, i32 %116, i32 %117, i32 %118)
  %120 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %121 = load i32, i32* %4, align 4
  %122 = load i32, i32* @HDMI_VP_REMAP, align 4
  %123 = call i32 @hdmi_writeb(%struct.dw_hdmi* %120, i32 %121, i32 %122)
  %124 = load i32, i32* %5, align 4
  %125 = load i32, i32* @HDMI_VP_CONF_OUTPUT_SELECTOR_PP, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %133

127:                                              ; preds = %106
  %128 = load i32, i32* @HDMI_VP_CONF_BYPASS_EN_DISABLE, align 4
  %129 = load i32, i32* @HDMI_VP_CONF_PP_EN_ENABLE, align 4
  %130 = or i32 %128, %129
  %131 = load i32, i32* @HDMI_VP_CONF_YCC422_EN_DISABLE, align 4
  %132 = or i32 %130, %131
  store i32 %132, i32* %8, align 4
  br label %156

133:                                              ; preds = %106
  %134 = load i32, i32* %5, align 4
  %135 = load i32, i32* @HDMI_VP_CONF_OUTPUT_SELECTOR_YCC422, align 4
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %137, label %143

137:                                              ; preds = %133
  %138 = load i32, i32* @HDMI_VP_CONF_BYPASS_EN_DISABLE, align 4
  %139 = load i32, i32* @HDMI_VP_CONF_PP_EN_DISABLE, align 4
  %140 = or i32 %138, %139
  %141 = load i32, i32* @HDMI_VP_CONF_YCC422_EN_ENABLE, align 4
  %142 = or i32 %140, %141
  store i32 %142, i32* %8, align 4
  br label %155

143:                                              ; preds = %133
  %144 = load i32, i32* %5, align 4
  %145 = load i32, i32* @HDMI_VP_CONF_OUTPUT_SELECTOR_BYPASS, align 4
  %146 = icmp eq i32 %144, %145
  br i1 %146, label %147, label %153

147:                                              ; preds = %143
  %148 = load i32, i32* @HDMI_VP_CONF_BYPASS_EN_ENABLE, align 4
  %149 = load i32, i32* @HDMI_VP_CONF_PP_EN_DISABLE, align 4
  %150 = or i32 %148, %149
  %151 = load i32, i32* @HDMI_VP_CONF_YCC422_EN_DISABLE, align 4
  %152 = or i32 %150, %151
  store i32 %152, i32* %8, align 4
  br label %154

153:                                              ; preds = %143
  br label %180

154:                                              ; preds = %147
  br label %155

155:                                              ; preds = %154, %137
  br label %156

156:                                              ; preds = %155, %127
  %157 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %158 = load i32, i32* %8, align 4
  %159 = load i32, i32* @HDMI_VP_CONF_BYPASS_EN_MASK, align 4
  %160 = load i32, i32* @HDMI_VP_CONF_PP_EN_ENMASK, align 4
  %161 = or i32 %159, %160
  %162 = load i32, i32* @HDMI_VP_CONF_YCC422_EN_MASK, align 4
  %163 = or i32 %161, %162
  %164 = load i32, i32* @HDMI_VP_CONF, align 4
  %165 = call i32 @hdmi_modb(%struct.dw_hdmi* %157, i32 %158, i32 %163, i32 %164)
  %166 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %167 = load i32, i32* @HDMI_VP_STUFF_PP_STUFFING_STUFFING_MODE, align 4
  %168 = load i32, i32* @HDMI_VP_STUFF_YCC422_STUFFING_STUFFING_MODE, align 4
  %169 = or i32 %167, %168
  %170 = load i32, i32* @HDMI_VP_STUFF_PP_STUFFING_MASK, align 4
  %171 = load i32, i32* @HDMI_VP_STUFF_YCC422_STUFFING_MASK, align 4
  %172 = or i32 %170, %171
  %173 = load i32, i32* @HDMI_VP_STUFF, align 4
  %174 = call i32 @hdmi_modb(%struct.dw_hdmi* %166, i32 %169, i32 %172, i32 %173)
  %175 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %176 = load i32, i32* %5, align 4
  %177 = load i32, i32* @HDMI_VP_CONF_OUTPUT_SELECTOR_MASK, align 4
  %178 = load i32, i32* @HDMI_VP_CONF, align 4
  %179 = call i32 @hdmi_modb(%struct.dw_hdmi* %175, i32 %176, i32 %177, i32 %178)
  br label %180

180:                                              ; preds = %156, %153, %69, %66
  ret void
}

declare dso_local i64 @hdmi_bus_fmt_is_rgb(i32) #1

declare dso_local i64 @hdmi_bus_fmt_is_yuv444(i32) #1

declare dso_local i64 @hdmi_bus_fmt_is_yuv420(i32) #1

declare dso_local i32 @hdmi_bus_fmt_color_depth(i32) #1

declare dso_local i64 @hdmi_bus_fmt_is_yuv422(i32) #1

declare dso_local i32 @hdmi_writeb(%struct.dw_hdmi*, i32, i32) #1

declare dso_local i32 @hdmi_modb(%struct.dw_hdmi*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
