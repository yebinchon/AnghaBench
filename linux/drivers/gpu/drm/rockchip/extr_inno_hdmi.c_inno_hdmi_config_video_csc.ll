; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_inno_hdmi.c_inno_hdmi_config_video_csc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_inno_hdmi.c_inno_hdmi_config_video_csc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inno_hdmi = type { %struct.hdmi_data_info }
%struct.hdmi_data_info = type { i64, i64, i64 }

@HDMI_VIDEO_CONTRL1 = common dso_local global i64 0, align 8
@v_DE_EXTERNAL = common dso_local global i32 0, align 4
@VIDEO_INPUT_SDR_RGB444 = common dso_local global i32 0, align 4
@VIDEO_INPUT_8BITS = common dso_local global i32 0, align 4
@HDMI_VIDEO_CONTRL2 = common dso_local global i64 0, align 8
@HDMI_COLORSPACE_RGB = common dso_local global i64 0, align 8
@HDMI_COLORSPACE_YUV444 = common dso_local global i64 0, align 8
@v_SOF_DISABLE = common dso_local global i32 0, align 4
@HDMI_VIDEO_CONTRL3 = common dso_local global i64 0, align 8
@HDMI_VIDEO_CONTRL = common dso_local global i32 0, align 4
@m_VIDEO_AUTO_CSC = common dso_local global i32 0, align 4
@m_VIDEO_C0_C2_SWAP = common dso_local global i32 0, align 4
@AUTO_CSC_DISABLE = common dso_local global i32 0, align 4
@C0_C2_CHANGE_DISABLE = common dso_local global i32 0, align 4
@HDMI_COLORIMETRY_ITU_601 = common dso_local global i64 0, align 8
@CSC_RGB_0_255_TO_ITU601_16_235_8BIT = common dso_local global i32 0, align 4
@v_CSC_ENABLE = common dso_local global i32 0, align 4
@CSC_ITU601_16_235_TO_RGB_0_255_8BIT = common dso_local global i32 0, align 4
@AUTO_CSC_ENABLE = common dso_local global i32 0, align 4
@v_CSC_DISABLE = common dso_local global i32 0, align 4
@CSC_RGB_0_255_TO_ITU709_16_235_8BIT = common dso_local global i32 0, align 4
@CSC_ITU709_16_235_TO_RGB_0_255_8BIT = common dso_local global i32 0, align 4
@HDMI_VIDEO_CSC_COEF = common dso_local global i64 0, align 8
@coeff_csc = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inno_hdmi*)* @inno_hdmi_config_video_csc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inno_hdmi_config_video_csc(%struct.inno_hdmi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.inno_hdmi*, align 8
  %4 = alloca %struct.hdmi_data_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.inno_hdmi* %0, %struct.inno_hdmi** %3, align 8
  %11 = load %struct.inno_hdmi*, %struct.inno_hdmi** %3, align 8
  %12 = getelementptr inbounds %struct.inno_hdmi, %struct.inno_hdmi* %11, i32 0, i32 0
  store %struct.hdmi_data_info* %12, %struct.hdmi_data_info** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %13 = load %struct.inno_hdmi*, %struct.inno_hdmi** %3, align 8
  %14 = load i64, i64* @HDMI_VIDEO_CONTRL1, align 8
  %15 = load i32, i32* @v_DE_EXTERNAL, align 4
  %16 = load i32, i32* @VIDEO_INPUT_SDR_RGB444, align 4
  %17 = call i32 @v_VIDEO_INPUT_FORMAT(i32 %16)
  %18 = or i32 %15, %17
  %19 = call i32 @hdmi_writeb(%struct.inno_hdmi* %13, i64 %14, i32 %18)
  %20 = load i32, i32* @VIDEO_INPUT_8BITS, align 4
  %21 = call i32 @v_VIDEO_INPUT_BITS(i32 %20)
  %22 = call i32 @v_VIDEO_OUTPUT_COLOR(i32 0)
  %23 = or i32 %21, %22
  %24 = call i32 @v_VIDEO_INPUT_CSP(i32 0)
  %25 = or i32 %23, %24
  store i32 %25, i32* %9, align 4
  %26 = load %struct.inno_hdmi*, %struct.inno_hdmi** %3, align 8
  %27 = load i64, i64* @HDMI_VIDEO_CONTRL2, align 8
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @hdmi_writeb(%struct.inno_hdmi* %26, i64 %27, i32 %28)
  %30 = load %struct.hdmi_data_info*, %struct.hdmi_data_info** %4, align 8
  %31 = getelementptr inbounds %struct.hdmi_data_info, %struct.hdmi_data_info* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.hdmi_data_info*, %struct.hdmi_data_info** %4, align 8
  %34 = getelementptr inbounds %struct.hdmi_data_info, %struct.hdmi_data_info* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %32, %35
  br i1 %36, label %37, label %69

37:                                               ; preds = %1
  %38 = load %struct.hdmi_data_info*, %struct.hdmi_data_info** %4, align 8
  %39 = getelementptr inbounds %struct.hdmi_data_info, %struct.hdmi_data_info* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @HDMI_COLORSPACE_RGB, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %49, label %43

43:                                               ; preds = %37
  %44 = load %struct.hdmi_data_info*, %struct.hdmi_data_info** %4, align 8
  %45 = getelementptr inbounds %struct.hdmi_data_info, %struct.hdmi_data_info* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @HDMI_COLORSPACE_YUV444, align 8
  %48 = icmp sge i64 %46, %47
  br i1 %48, label %49, label %68

49:                                               ; preds = %43, %37
  %50 = load i32, i32* @v_SOF_DISABLE, align 4
  %51 = call i32 @v_COLOR_DEPTH_NOT_INDICATED(i32 1)
  %52 = or i32 %50, %51
  store i32 %52, i32* %9, align 4
  %53 = load %struct.inno_hdmi*, %struct.inno_hdmi** %3, align 8
  %54 = load i64, i64* @HDMI_VIDEO_CONTRL3, align 8
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @hdmi_writeb(%struct.inno_hdmi* %53, i64 %54, i32 %55)
  %57 = load %struct.inno_hdmi*, %struct.inno_hdmi** %3, align 8
  %58 = load i32, i32* @HDMI_VIDEO_CONTRL, align 4
  %59 = load i32, i32* @m_VIDEO_AUTO_CSC, align 4
  %60 = load i32, i32* @m_VIDEO_C0_C2_SWAP, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @AUTO_CSC_DISABLE, align 4
  %63 = call i32 @v_VIDEO_AUTO_CSC(i32 %62)
  %64 = load i32, i32* @C0_C2_CHANGE_DISABLE, align 4
  %65 = call i32 @v_VIDEO_C0_C2_SWAP(i32 %64)
  %66 = or i32 %63, %65
  %67 = call i32 @hdmi_modb(%struct.inno_hdmi* %57, i32 %58, i32 %61, i32 %66)
  store i32 0, i32* %2, align 4
  br label %191

68:                                               ; preds = %43
  br label %69

69:                                               ; preds = %68, %1
  %70 = load %struct.hdmi_data_info*, %struct.hdmi_data_info** %4, align 8
  %71 = getelementptr inbounds %struct.hdmi_data_info, %struct.hdmi_data_info* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @HDMI_COLORIMETRY_ITU_601, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %111

75:                                               ; preds = %69
  %76 = load %struct.hdmi_data_info*, %struct.hdmi_data_info** %4, align 8
  %77 = getelementptr inbounds %struct.hdmi_data_info, %struct.hdmi_data_info* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @HDMI_COLORSPACE_RGB, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %92

81:                                               ; preds = %75
  %82 = load %struct.hdmi_data_info*, %struct.hdmi_data_info** %4, align 8
  %83 = getelementptr inbounds %struct.hdmi_data_info, %struct.hdmi_data_info* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @HDMI_COLORSPACE_YUV444, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %92

87:                                               ; preds = %81
  %88 = load i32, i32* @CSC_RGB_0_255_TO_ITU601_16_235_8BIT, align 4
  store i32 %88, i32* %7, align 4
  %89 = load i32, i32* @AUTO_CSC_DISABLE, align 4
  store i32 %89, i32* %8, align 4
  %90 = load i32, i32* @C0_C2_CHANGE_DISABLE, align 4
  store i32 %90, i32* %5, align 4
  %91 = load i32, i32* @v_CSC_ENABLE, align 4
  store i32 %91, i32* %6, align 4
  br label %110

92:                                               ; preds = %81, %75
  %93 = load %struct.hdmi_data_info*, %struct.hdmi_data_info** %4, align 8
  %94 = getelementptr inbounds %struct.hdmi_data_info, %struct.hdmi_data_info* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @HDMI_COLORSPACE_YUV444, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %109

98:                                               ; preds = %92
  %99 = load %struct.hdmi_data_info*, %struct.hdmi_data_info** %4, align 8
  %100 = getelementptr inbounds %struct.hdmi_data_info, %struct.hdmi_data_info* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @HDMI_COLORSPACE_RGB, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %109

104:                                              ; preds = %98
  %105 = load i32, i32* @CSC_ITU601_16_235_TO_RGB_0_255_8BIT, align 4
  store i32 %105, i32* %7, align 4
  %106 = load i32, i32* @AUTO_CSC_ENABLE, align 4
  store i32 %106, i32* %8, align 4
  %107 = load i32, i32* @C0_C2_CHANGE_DISABLE, align 4
  store i32 %107, i32* %5, align 4
  %108 = load i32, i32* @v_CSC_DISABLE, align 4
  store i32 %108, i32* %6, align 4
  br label %109

109:                                              ; preds = %104, %98, %92
  br label %110

110:                                              ; preds = %109, %87
  br label %147

111:                                              ; preds = %69
  %112 = load %struct.hdmi_data_info*, %struct.hdmi_data_info** %4, align 8
  %113 = getelementptr inbounds %struct.hdmi_data_info, %struct.hdmi_data_info* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @HDMI_COLORSPACE_RGB, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %128

117:                                              ; preds = %111
  %118 = load %struct.hdmi_data_info*, %struct.hdmi_data_info** %4, align 8
  %119 = getelementptr inbounds %struct.hdmi_data_info, %struct.hdmi_data_info* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @HDMI_COLORSPACE_YUV444, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %128

123:                                              ; preds = %117
  %124 = load i32, i32* @CSC_RGB_0_255_TO_ITU709_16_235_8BIT, align 4
  store i32 %124, i32* %7, align 4
  %125 = load i32, i32* @AUTO_CSC_DISABLE, align 4
  store i32 %125, i32* %8, align 4
  %126 = load i32, i32* @C0_C2_CHANGE_DISABLE, align 4
  store i32 %126, i32* %5, align 4
  %127 = load i32, i32* @v_CSC_ENABLE, align 4
  store i32 %127, i32* %6, align 4
  br label %146

128:                                              ; preds = %117, %111
  %129 = load %struct.hdmi_data_info*, %struct.hdmi_data_info** %4, align 8
  %130 = getelementptr inbounds %struct.hdmi_data_info, %struct.hdmi_data_info* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @HDMI_COLORSPACE_YUV444, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %145

134:                                              ; preds = %128
  %135 = load %struct.hdmi_data_info*, %struct.hdmi_data_info** %4, align 8
  %136 = getelementptr inbounds %struct.hdmi_data_info, %struct.hdmi_data_info* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @HDMI_COLORSPACE_RGB, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %145

140:                                              ; preds = %134
  %141 = load i32, i32* @CSC_ITU709_16_235_TO_RGB_0_255_8BIT, align 4
  store i32 %141, i32* %7, align 4
  %142 = load i32, i32* @AUTO_CSC_ENABLE, align 4
  store i32 %142, i32* %8, align 4
  %143 = load i32, i32* @C0_C2_CHANGE_DISABLE, align 4
  store i32 %143, i32* %5, align 4
  %144 = load i32, i32* @v_CSC_DISABLE, align 4
  store i32 %144, i32* %6, align 4
  br label %145

145:                                              ; preds = %140, %134, %128
  br label %146

146:                                              ; preds = %145, %123
  br label %147

147:                                              ; preds = %146, %110
  store i32 0, i32* %10, align 4
  br label %148

148:                                              ; preds = %167, %147
  %149 = load i32, i32* %10, align 4
  %150 = icmp slt i32 %149, 24
  br i1 %150, label %151, label %170

151:                                              ; preds = %148
  %152 = load %struct.inno_hdmi*, %struct.inno_hdmi** %3, align 8
  %153 = load i64, i64* @HDMI_VIDEO_CSC_COEF, align 8
  %154 = load i32, i32* %10, align 4
  %155 = sext i32 %154 to i64
  %156 = add nsw i64 %153, %155
  %157 = load i32**, i32*** @coeff_csc, align 8
  %158 = load i32, i32* %7, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32*, i32** %157, i64 %159
  %161 = load i32*, i32** %160, align 8
  %162 = load i32, i32* %10, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @hdmi_writeb(%struct.inno_hdmi* %152, i64 %156, i32 %165)
  br label %167

167:                                              ; preds = %151
  %168 = load i32, i32* %10, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %10, align 4
  br label %148

170:                                              ; preds = %148
  %171 = load i32, i32* @v_SOF_DISABLE, align 4
  %172 = load i32, i32* %6, align 4
  %173 = or i32 %171, %172
  %174 = call i32 @v_COLOR_DEPTH_NOT_INDICATED(i32 1)
  %175 = or i32 %173, %174
  store i32 %175, i32* %9, align 4
  %176 = load %struct.inno_hdmi*, %struct.inno_hdmi** %3, align 8
  %177 = load i64, i64* @HDMI_VIDEO_CONTRL3, align 8
  %178 = load i32, i32* %9, align 4
  %179 = call i32 @hdmi_writeb(%struct.inno_hdmi* %176, i64 %177, i32 %178)
  %180 = load %struct.inno_hdmi*, %struct.inno_hdmi** %3, align 8
  %181 = load i32, i32* @HDMI_VIDEO_CONTRL, align 4
  %182 = load i32, i32* @m_VIDEO_AUTO_CSC, align 4
  %183 = load i32, i32* @m_VIDEO_C0_C2_SWAP, align 4
  %184 = or i32 %182, %183
  %185 = load i32, i32* %8, align 4
  %186 = call i32 @v_VIDEO_AUTO_CSC(i32 %185)
  %187 = load i32, i32* %5, align 4
  %188 = call i32 @v_VIDEO_C0_C2_SWAP(i32 %187)
  %189 = or i32 %186, %188
  %190 = call i32 @hdmi_modb(%struct.inno_hdmi* %180, i32 %181, i32 %184, i32 %189)
  store i32 0, i32* %2, align 4
  br label %191

191:                                              ; preds = %170, %49
  %192 = load i32, i32* %2, align 4
  ret i32 %192
}

declare dso_local i32 @hdmi_writeb(%struct.inno_hdmi*, i64, i32) #1

declare dso_local i32 @v_VIDEO_INPUT_FORMAT(i32) #1

declare dso_local i32 @v_VIDEO_INPUT_BITS(i32) #1

declare dso_local i32 @v_VIDEO_OUTPUT_COLOR(i32) #1

declare dso_local i32 @v_VIDEO_INPUT_CSP(i32) #1

declare dso_local i32 @v_COLOR_DEPTH_NOT_INDICATED(i32) #1

declare dso_local i32 @hdmi_modb(%struct.inno_hdmi*, i32, i32, i32) #1

declare dso_local i32 @v_VIDEO_AUTO_CSC(i32) #1

declare dso_local i32 @v_VIDEO_C0_C2_SWAP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
