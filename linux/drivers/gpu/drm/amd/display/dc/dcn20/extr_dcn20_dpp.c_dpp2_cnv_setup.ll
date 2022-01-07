; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_dpp.c_dpp2_cnv_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_dpp.c_dpp2_cnv_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpp = type { i32 }
%struct.cnv_alpha_2bit_lut = type { i32, i32, i32, i32 }
%struct.dc_csc_transform = type { i32, i32* }
%struct.dcn20_dpp = type { i32 }
%struct.out_csc_color_matrix = type { i32, i32* }

@COLOR_SPACE_SRGB = common dso_local global i32 0, align 4
@INPUT_CSC_SELECT_BYPASS = common dso_local global i32 0, align 4
@FORMAT_CONTROL = common dso_local global i32 0, align 4
@CNVC_BYPASS = common dso_local global i32 0, align 4
@FORMAT_EXPANSION_MODE = common dso_local global i32 0, align 4
@FORMAT_CNV16 = common dso_local global i32 0, align 4
@CNVC_BYPASS_MSB_ALIGN = common dso_local global i32 0, align 4
@CLAMP_POSITIVE = common dso_local global i32 0, align 4
@CLAMP_POSITIVE_C = common dso_local global i32 0, align 4
@COLOR_SPACE_YCBCR709 = common dso_local global i32 0, align 4
@INPUT_CSC_SELECT_ICSC = common dso_local global i32 0, align 4
@ALPHA_2BIT_LUT = common dso_local global i32 0, align 4
@ALPHA_2BIT_LUT0 = common dso_local global i32 0, align 4
@ALPHA_2BIT_LUT1 = common dso_local global i32 0, align 4
@ALPHA_2BIT_LUT2 = common dso_local global i32 0, align 4
@ALPHA_2BIT_LUT3 = common dso_local global i32 0, align 4
@CNVC_SURFACE_PIXEL_FORMAT = common dso_local global i32 0, align 4
@FORMAT_CONTROL__ALPHA_EN = common dso_local global i32 0, align 4
@COLOR_SPACE_YCBCR601 = common dso_local global i32 0, align 4
@CURSOR_CONTROL = common dso_local global i32 0, align 4
@CURSOR_ENABLE = common dso_local global i32 0, align 4
@CURSOR0_CONTROL = common dso_local global i32 0, align 4
@CUR0_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dpp*, i32, i32, i32, i32*, i32, %struct.cnv_alpha_2bit_lut*)* @dpp2_cnv_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dpp2_cnv_setup(%struct.dpp* %0, i32 %1, i32 %2, i32 %3, i32* %4, i32 %5, %struct.cnv_alpha_2bit_lut* %6) #0 {
  %8 = alloca %struct.dc_csc_transform, align 8
  %9 = alloca %struct.dpp*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.cnv_alpha_2bit_lut*, align 8
  %14 = alloca %struct.dcn20_dpp*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.out_csc_color_matrix, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = bitcast %struct.dc_csc_transform* %8 to { i32, i32* }*
  %24 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %23, i32 0, i32 0
  store i32 %3, i32* %24, align 8
  %25 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %23, i32 0, i32 1
  store i32* %4, i32** %25, align 8
  store %struct.dpp* %0, %struct.dpp** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store %struct.cnv_alpha_2bit_lut* %6, %struct.cnv_alpha_2bit_lut** %13, align 8
  %26 = load %struct.dpp*, %struct.dpp** %9, align 8
  %27 = call %struct.dcn20_dpp* @TO_DCN20_DPP(%struct.dpp* %26)
  store %struct.dcn20_dpp* %27, %struct.dcn20_dpp** %14, align 8
  store i32 0, i32* %15, align 4
  store i32 1, i32* %16, align 4
  %28 = load i32, i32* @COLOR_SPACE_SRGB, align 4
  store i32 %28, i32* %17, align 4
  %29 = load i32, i32* @INPUT_CSC_SELECT_BYPASS, align 4
  store i32 %29, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  %30 = load i32, i32* @FORMAT_CONTROL, align 4
  %31 = load i32, i32* @CNVC_BYPASS, align 4
  %32 = load i32, i32* @FORMAT_EXPANSION_MODE, align 4
  %33 = load i32, i32* %11, align 4
  %34 = call i32 @REG_SET_2(i32 %30, i32 0, i32 %31, i32 0, i32 %32, i32 %33)
  %35 = load i32, i32* @FORMAT_CONTROL, align 4
  %36 = load i32, i32* @FORMAT_CNV16, align 4
  %37 = call i32 @REG_UPDATE(i32 %35, i32 %36, i32 0)
  %38 = load i32, i32* @FORMAT_CONTROL, align 4
  %39 = load i32, i32* @CNVC_BYPASS_MSB_ALIGN, align 4
  %40 = call i32 @REG_UPDATE(i32 %38, i32 %39, i32 0)
  %41 = load i32, i32* @FORMAT_CONTROL, align 4
  %42 = load i32, i32* @CLAMP_POSITIVE, align 4
  %43 = call i32 @REG_UPDATE(i32 %41, i32 %42, i32 0)
  %44 = load i32, i32* @FORMAT_CONTROL, align 4
  %45 = load i32, i32* @CLAMP_POSITIVE_C, align 4
  %46 = call i32 @REG_UPDATE(i32 %44, i32 %45, i32 0)
  %47 = load i32, i32* %10, align 4
  switch i32 %47, label %80 [
    i32 144, label %48
    i32 135, label %49
    i32 140, label %50
    i32 145, label %50
    i32 141, label %51
    i32 146, label %51
    i32 132, label %52
    i32 131, label %55
    i32 134, label %58
    i32 133, label %61
    i32 143, label %64
    i32 142, label %65
    i32 147, label %66
    i32 129, label %67
    i32 137, label %70
    i32 139, label %71
    i32 130, label %72
    i32 128, label %75
    i32 136, label %78
    i32 138, label %79
  ]

48:                                               ; preds = %7
  store i32 1, i32* %15, align 4
  br label %81

49:                                               ; preds = %7
  store i32 3, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %81

50:                                               ; preds = %7, %7
  store i32 8, i32* %15, align 4
  br label %81

51:                                               ; preds = %7, %7
  store i32 10, i32* %15, align 4
  store i32 1, i32* %21, align 4
  br label %81

52:                                               ; preds = %7
  store i32 0, i32* %19, align 4
  store i32 65, i32* %15, align 4
  %53 = load i32, i32* @COLOR_SPACE_YCBCR709, align 4
  store i32 %53, i32* %17, align 4
  %54 = load i32, i32* @INPUT_CSC_SELECT_ICSC, align 4
  store i32 %54, i32* %18, align 4
  br label %81

55:                                               ; preds = %7
  store i32 1, i32* %19, align 4
  store i32 64, i32* %15, align 4
  %56 = load i32, i32* @COLOR_SPACE_YCBCR709, align 4
  store i32 %56, i32* %17, align 4
  %57 = load i32, i32* @INPUT_CSC_SELECT_ICSC, align 4
  store i32 %57, i32* %18, align 4
  br label %81

58:                                               ; preds = %7
  store i32 1, i32* %19, align 4
  store i32 67, i32* %15, align 4
  %59 = load i32, i32* @COLOR_SPACE_YCBCR709, align 4
  store i32 %59, i32* %17, align 4
  %60 = load i32, i32* @INPUT_CSC_SELECT_ICSC, align 4
  store i32 %60, i32* %18, align 4
  br label %81

61:                                               ; preds = %7
  store i32 1, i32* %19, align 4
  store i32 66, i32* %15, align 4
  %62 = load i32, i32* @COLOR_SPACE_YCBCR709, align 4
  store i32 %62, i32* %17, align 4
  %63 = load i32, i32* @INPUT_CSC_SELECT_ICSC, align 4
  store i32 %63, i32* %18, align 4
  br label %81

64:                                               ; preds = %7
  store i32 22, i32* %15, align 4
  br label %81

65:                                               ; preds = %7
  store i32 24, i32* %15, align 4
  br label %81

66:                                               ; preds = %7
  store i32 25, i32* %15, align 4
  br label %81

67:                                               ; preds = %7
  store i32 12, i32* %15, align 4
  %68 = load i32, i32* @COLOR_SPACE_YCBCR709, align 4
  store i32 %68, i32* %17, align 4
  %69 = load i32, i32* @INPUT_CSC_SELECT_ICSC, align 4
  store i32 %69, i32* %18, align 4
  br label %81

70:                                               ; preds = %7
  store i32 112, i32* %15, align 4
  br label %81

71:                                               ; preds = %7
  store i32 113, i32* %15, align 4
  br label %81

72:                                               ; preds = %7
  store i32 114, i32* %15, align 4
  %73 = load i32, i32* @COLOR_SPACE_YCBCR709, align 4
  store i32 %73, i32* %17, align 4
  %74 = load i32, i32* @INPUT_CSC_SELECT_ICSC, align 4
  store i32 %74, i32* %18, align 4
  store i32 1, i32* %21, align 4
  br label %81

75:                                               ; preds = %7
  store i32 115, i32* %15, align 4
  %76 = load i32, i32* @COLOR_SPACE_YCBCR709, align 4
  store i32 %76, i32* %17, align 4
  %77 = load i32, i32* @INPUT_CSC_SELECT_ICSC, align 4
  store i32 %77, i32* %18, align 4
  store i32 1, i32* %21, align 4
  br label %81

78:                                               ; preds = %7
  store i32 118, i32* %15, align 4
  br label %81

79:                                               ; preds = %7
  store i32 119, i32* %15, align 4
  br label %81

80:                                               ; preds = %7
  br label %81

81:                                               ; preds = %80, %79, %78, %75, %72, %71, %70, %67, %66, %65, %64, %61, %58, %55, %52, %51, %50, %49, %48
  %82 = load i32, i32* %21, align 4
  %83 = icmp eq i32 %82, 1
  br i1 %83, label %84, label %112

84:                                               ; preds = %81
  %85 = load %struct.cnv_alpha_2bit_lut*, %struct.cnv_alpha_2bit_lut** %13, align 8
  %86 = icmp ne %struct.cnv_alpha_2bit_lut* %85, null
  br i1 %86, label %87, label %112

87:                                               ; preds = %84
  %88 = load i32, i32* @ALPHA_2BIT_LUT, align 4
  %89 = load i32, i32* @ALPHA_2BIT_LUT0, align 4
  %90 = load %struct.cnv_alpha_2bit_lut*, %struct.cnv_alpha_2bit_lut** %13, align 8
  %91 = getelementptr inbounds %struct.cnv_alpha_2bit_lut, %struct.cnv_alpha_2bit_lut* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @REG_UPDATE(i32 %88, i32 %89, i32 %92)
  %94 = load i32, i32* @ALPHA_2BIT_LUT, align 4
  %95 = load i32, i32* @ALPHA_2BIT_LUT1, align 4
  %96 = load %struct.cnv_alpha_2bit_lut*, %struct.cnv_alpha_2bit_lut** %13, align 8
  %97 = getelementptr inbounds %struct.cnv_alpha_2bit_lut, %struct.cnv_alpha_2bit_lut* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @REG_UPDATE(i32 %94, i32 %95, i32 %98)
  %100 = load i32, i32* @ALPHA_2BIT_LUT, align 4
  %101 = load i32, i32* @ALPHA_2BIT_LUT2, align 4
  %102 = load %struct.cnv_alpha_2bit_lut*, %struct.cnv_alpha_2bit_lut** %13, align 8
  %103 = getelementptr inbounds %struct.cnv_alpha_2bit_lut, %struct.cnv_alpha_2bit_lut* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @REG_UPDATE(i32 %100, i32 %101, i32 %104)
  %106 = load i32, i32* @ALPHA_2BIT_LUT, align 4
  %107 = load i32, i32* @ALPHA_2BIT_LUT3, align 4
  %108 = load %struct.cnv_alpha_2bit_lut*, %struct.cnv_alpha_2bit_lut** %13, align 8
  %109 = getelementptr inbounds %struct.cnv_alpha_2bit_lut, %struct.cnv_alpha_2bit_lut* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @REG_UPDATE(i32 %106, i32 %107, i32 %110)
  br label %112

112:                                              ; preds = %87, %84, %81
  %113 = load i32, i32* @CNVC_SURFACE_PIXEL_FORMAT, align 4
  %114 = load i32, i32* @CNVC_SURFACE_PIXEL_FORMAT, align 4
  %115 = load i32, i32* %15, align 4
  %116 = call i32 @REG_SET(i32 %113, i32 0, i32 %114, i32 %115)
  %117 = load i32, i32* @FORMAT_CONTROL, align 4
  %118 = load i32, i32* @FORMAT_CONTROL__ALPHA_EN, align 4
  %119 = load i32, i32* %16, align 4
  %120 = call i32 @REG_UPDATE(i32 %117, i32 %118, i32 %119)
  %121 = getelementptr inbounds %struct.dc_csc_transform, %struct.dc_csc_transform* %8, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = icmp eq i32 %122, 1
  br i1 %123, label %124, label %158

124:                                              ; preds = %112
  store i32 0, i32* %22, align 4
  br label %125

125:                                              ; preds = %140, %124
  %126 = load i32, i32* %22, align 4
  %127 = icmp slt i32 %126, 12
  br i1 %127, label %128, label %143

128:                                              ; preds = %125
  %129 = getelementptr inbounds %struct.dc_csc_transform, %struct.dc_csc_transform* %8, i32 0, i32 1
  %130 = load i32*, i32** %129, align 8
  %131 = load i32, i32* %22, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = getelementptr inbounds %struct.out_csc_color_matrix, %struct.out_csc_color_matrix* %20, i32 0, i32 1
  %136 = load i32*, i32** %135, align 8
  %137 = load i32, i32* %22, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  store i32 %134, i32* %139, align 4
  br label %140

140:                                              ; preds = %128
  %141 = load i32, i32* %22, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %22, align 4
  br label %125

143:                                              ; preds = %125
  %144 = load i32, i32* %12, align 4
  %145 = getelementptr inbounds %struct.out_csc_color_matrix, %struct.out_csc_color_matrix* %20, i32 0, i32 0
  store i32 %144, i32* %145, align 8
  %146 = load i32, i32* %17, align 4
  %147 = load i32, i32* @COLOR_SPACE_YCBCR601, align 4
  %148 = icmp uge i32 %146, %147
  br i1 %148, label %149, label %151

149:                                              ; preds = %143
  %150 = load i32, i32* @INPUT_CSC_SELECT_ICSC, align 4
  store i32 %150, i32* %18, align 4
  br label %153

151:                                              ; preds = %143
  %152 = load i32, i32* @INPUT_CSC_SELECT_BYPASS, align 4
  store i32 %152, i32* %18, align 4
  br label %153

153:                                              ; preds = %151, %149
  %154 = load %struct.dpp*, %struct.dpp** %9, align 8
  %155 = load i32, i32* %17, align 4
  %156 = load i32, i32* %18, align 4
  %157 = call i32 @dpp1_program_input_csc(%struct.dpp* %154, i32 %155, i32 %156, %struct.out_csc_color_matrix* %20)
  br label %163

158:                                              ; preds = %112
  %159 = load %struct.dpp*, %struct.dpp** %9, align 8
  %160 = load i32, i32* %17, align 4
  %161 = load i32, i32* %18, align 4
  %162 = call i32 @dpp1_program_input_csc(%struct.dpp* %159, i32 %160, i32 %161, %struct.out_csc_color_matrix* null)
  br label %163

163:                                              ; preds = %158, %153
  %164 = load i32, i32* %19, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %173

166:                                              ; preds = %163
  %167 = load i32, i32* @CURSOR_CONTROL, align 4
  %168 = load i32, i32* @CURSOR_ENABLE, align 4
  %169 = call i32 @REG_UPDATE(i32 %167, i32 %168, i32 0)
  %170 = load i32, i32* @CURSOR0_CONTROL, align 4
  %171 = load i32, i32* @CUR0_ENABLE, align 4
  %172 = call i32 @REG_UPDATE(i32 %170, i32 %171, i32 0)
  br label %173

173:                                              ; preds = %166, %163
  %174 = load %struct.dpp*, %struct.dpp** %9, align 8
  %175 = call i32 @dpp2_power_on_obuf(%struct.dpp* %174, i32 1)
  ret void
}

declare dso_local %struct.dcn20_dpp* @TO_DCN20_DPP(%struct.dpp*) #1

declare dso_local i32 @REG_SET_2(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @REG_UPDATE(i32, i32, i32) #1

declare dso_local i32 @REG_SET(i32, i32, i32, i32) #1

declare dso_local i32 @dpp1_program_input_csc(%struct.dpp*, i32, i32, %struct.out_csc_color_matrix*) #1

declare dso_local i32 @dpp2_power_on_obuf(%struct.dpp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
