; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/gpio/dce80/extr_hw_translate_dce80.c_id_to_offset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/gpio/dce80/extr_hw_translate_dce80.c_id_to_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_pin_info = type { i32, i32, i32, i32, i8*, i8*, i8*, i8* }

@DC_GPIO_DDC6_A__DC_GPIO_DDC6DATA_A_MASK = common dso_local global i32 0, align 4
@mmDC_GPIO_DDC1_A = common dso_local global i8* null, align 8
@mmDC_GPIO_DDC2_A = common dso_local global i8* null, align 8
@mmDC_GPIO_DDC3_A = common dso_local global i8* null, align 8
@mmDC_GPIO_DDC4_A = common dso_local global i8* null, align 8
@mmDC_GPIO_DDC5_A = common dso_local global i8* null, align 8
@mmDC_GPIO_DDC6_A = common dso_local global i8* null, align 8
@mmDC_GPIO_DDCVGA_A = common dso_local global i8* null, align 8
@mmDC_GPIO_I2CPAD_A = common dso_local global i8* null, align 8
@DC_GPIO_DDC6_A__DC_GPIO_DDC6CLK_A_MASK = common dso_local global i32 0, align 4
@mmDC_GPIO_GENERIC_A = common dso_local global i8* null, align 8
@DC_GPIO_GENERIC_A__DC_GPIO_GENERICA_A_MASK = common dso_local global i32 0, align 4
@DC_GPIO_GENERIC_A__DC_GPIO_GENERICB_A_MASK = common dso_local global i32 0, align 4
@DC_GPIO_GENERIC_A__DC_GPIO_GENERICC_A_MASK = common dso_local global i32 0, align 4
@DC_GPIO_GENERIC_A__DC_GPIO_GENERICD_A_MASK = common dso_local global i32 0, align 4
@DC_GPIO_GENERIC_A__DC_GPIO_GENERICE_A_MASK = common dso_local global i32 0, align 4
@DC_GPIO_GENERIC_A__DC_GPIO_GENERICF_A_MASK = common dso_local global i32 0, align 4
@DC_GPIO_GENERIC_A__DC_GPIO_GENERICG_A_MASK = common dso_local global i32 0, align 4
@mmDC_GPIO_HPD_A = common dso_local global i8* null, align 8
@DC_GPIO_HPD_A__DC_GPIO_HPD1_A_MASK = common dso_local global i32 0, align 4
@DC_GPIO_HPD_A__DC_GPIO_HPD2_A_MASK = common dso_local global i32 0, align 4
@DC_GPIO_HPD_A__DC_GPIO_HPD3_A_MASK = common dso_local global i32 0, align 4
@DC_GPIO_HPD_A__DC_GPIO_HPD4_A_MASK = common dso_local global i32 0, align 4
@DC_GPIO_HPD_A__DC_GPIO_HPD5_A_MASK = common dso_local global i32 0, align 4
@DC_GPIO_HPD_A__DC_GPIO_HPD6_A_MASK = common dso_local global i32 0, align 4
@mmDC_GPIO_SYNCA_A = common dso_local global i8* null, align 8
@DC_GPIO_SYNCA_A__DC_GPIO_HSYNCA_A_MASK = common dso_local global i32 0, align 4
@DC_GPIO_SYNCA_A__DC_GPIO_VSYNCA_A_MASK = common dso_local global i32 0, align 4
@mmDC_GPIO_GENLK_A = common dso_local global i8* null, align 8
@DC_GPIO_GENLK_A__DC_GPIO_GENLK_CLK_A_MASK = common dso_local global i32 0, align 4
@DC_GPIO_GENLK_A__DC_GPIO_GENLK_VSYNC_A_MASK = common dso_local global i32 0, align 4
@DC_GPIO_GENLK_A__DC_GPIO_SWAPLOCK_A_A_MASK = common dso_local global i32 0, align 4
@DC_GPIO_GENLK_A__DC_GPIO_SWAPLOCK_B_A_MASK = common dso_local global i32 0, align 4
@mmGPIOPAD_A = common dso_local global i8* null, align 8
@GPIO_GPIO_PAD_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.gpio_pin_info*)* @id_to_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @id_to_offset(i32 %0, i32 %1, %struct.gpio_pin_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.gpio_pin_info*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.gpio_pin_info* %2, %struct.gpio_pin_info** %6, align 8
  store i32 1, i32* %7, align 4
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %225 [
    i32 138, label %9
    i32 139, label %49
    i32 137, label %89
    i32 134, label %125
    i32 133, label %157
    i32 135, label %177
    i32 136, label %210
    i32 132, label %224
  ]

9:                                                ; preds = %3
  %10 = load i32, i32* @DC_GPIO_DDC6_A__DC_GPIO_DDC6DATA_A_MASK, align 4
  %11 = load %struct.gpio_pin_info*, %struct.gpio_pin_info** %6, align 8
  %12 = getelementptr inbounds %struct.gpio_pin_info, %struct.gpio_pin_info* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 8
  %13 = load i32, i32* %5, align 4
  switch i32 %13, label %46 [
    i32 164, label %14
    i32 163, label %18
    i32 162, label %22
    i32 161, label %26
    i32 160, label %30
    i32 159, label %34
    i32 158, label %38
    i32 157, label %42
  ]

14:                                               ; preds = %9
  %15 = load i8*, i8** @mmDC_GPIO_DDC1_A, align 8
  %16 = load %struct.gpio_pin_info*, %struct.gpio_pin_info** %6, align 8
  %17 = getelementptr inbounds %struct.gpio_pin_info, %struct.gpio_pin_info* %16, i32 0, i32 4
  store i8* %15, i8** %17, align 8
  br label %48

18:                                               ; preds = %9
  %19 = load i8*, i8** @mmDC_GPIO_DDC2_A, align 8
  %20 = load %struct.gpio_pin_info*, %struct.gpio_pin_info** %6, align 8
  %21 = getelementptr inbounds %struct.gpio_pin_info, %struct.gpio_pin_info* %20, i32 0, i32 4
  store i8* %19, i8** %21, align 8
  br label %48

22:                                               ; preds = %9
  %23 = load i8*, i8** @mmDC_GPIO_DDC3_A, align 8
  %24 = load %struct.gpio_pin_info*, %struct.gpio_pin_info** %6, align 8
  %25 = getelementptr inbounds %struct.gpio_pin_info, %struct.gpio_pin_info* %24, i32 0, i32 4
  store i8* %23, i8** %25, align 8
  br label %48

26:                                               ; preds = %9
  %27 = load i8*, i8** @mmDC_GPIO_DDC4_A, align 8
  %28 = load %struct.gpio_pin_info*, %struct.gpio_pin_info** %6, align 8
  %29 = getelementptr inbounds %struct.gpio_pin_info, %struct.gpio_pin_info* %28, i32 0, i32 4
  store i8* %27, i8** %29, align 8
  br label %48

30:                                               ; preds = %9
  %31 = load i8*, i8** @mmDC_GPIO_DDC5_A, align 8
  %32 = load %struct.gpio_pin_info*, %struct.gpio_pin_info** %6, align 8
  %33 = getelementptr inbounds %struct.gpio_pin_info, %struct.gpio_pin_info* %32, i32 0, i32 4
  store i8* %31, i8** %33, align 8
  br label %48

34:                                               ; preds = %9
  %35 = load i8*, i8** @mmDC_GPIO_DDC6_A, align 8
  %36 = load %struct.gpio_pin_info*, %struct.gpio_pin_info** %6, align 8
  %37 = getelementptr inbounds %struct.gpio_pin_info, %struct.gpio_pin_info* %36, i32 0, i32 4
  store i8* %35, i8** %37, align 8
  br label %48

38:                                               ; preds = %9
  %39 = load i8*, i8** @mmDC_GPIO_DDCVGA_A, align 8
  %40 = load %struct.gpio_pin_info*, %struct.gpio_pin_info** %6, align 8
  %41 = getelementptr inbounds %struct.gpio_pin_info, %struct.gpio_pin_info* %40, i32 0, i32 4
  store i8* %39, i8** %41, align 8
  br label %48

42:                                               ; preds = %9
  %43 = load i8*, i8** @mmDC_GPIO_I2CPAD_A, align 8
  %44 = load %struct.gpio_pin_info*, %struct.gpio_pin_info** %6, align 8
  %45 = getelementptr inbounds %struct.gpio_pin_info, %struct.gpio_pin_info* %44, i32 0, i32 4
  store i8* %43, i8** %45, align 8
  br label %48

46:                                               ; preds = %9
  %47 = call i32 (...) @BREAK_TO_DEBUGGER()
  store i32 0, i32* %7, align 4
  br label %48

48:                                               ; preds = %46, %42, %38, %34, %30, %26, %22, %18, %14
  br label %227

49:                                               ; preds = %3
  %50 = load i32, i32* @DC_GPIO_DDC6_A__DC_GPIO_DDC6CLK_A_MASK, align 4
  %51 = load %struct.gpio_pin_info*, %struct.gpio_pin_info** %6, align 8
  %52 = getelementptr inbounds %struct.gpio_pin_info, %struct.gpio_pin_info* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load i32, i32* %5, align 4
  switch i32 %53, label %86 [
    i32 164, label %54
    i32 163, label %58
    i32 162, label %62
    i32 161, label %66
    i32 160, label %70
    i32 159, label %74
    i32 158, label %78
    i32 157, label %82
  ]

54:                                               ; preds = %49
  %55 = load i8*, i8** @mmDC_GPIO_DDC1_A, align 8
  %56 = load %struct.gpio_pin_info*, %struct.gpio_pin_info** %6, align 8
  %57 = getelementptr inbounds %struct.gpio_pin_info, %struct.gpio_pin_info* %56, i32 0, i32 4
  store i8* %55, i8** %57, align 8
  br label %88

58:                                               ; preds = %49
  %59 = load i8*, i8** @mmDC_GPIO_DDC2_A, align 8
  %60 = load %struct.gpio_pin_info*, %struct.gpio_pin_info** %6, align 8
  %61 = getelementptr inbounds %struct.gpio_pin_info, %struct.gpio_pin_info* %60, i32 0, i32 4
  store i8* %59, i8** %61, align 8
  br label %88

62:                                               ; preds = %49
  %63 = load i8*, i8** @mmDC_GPIO_DDC3_A, align 8
  %64 = load %struct.gpio_pin_info*, %struct.gpio_pin_info** %6, align 8
  %65 = getelementptr inbounds %struct.gpio_pin_info, %struct.gpio_pin_info* %64, i32 0, i32 4
  store i8* %63, i8** %65, align 8
  br label %88

66:                                               ; preds = %49
  %67 = load i8*, i8** @mmDC_GPIO_DDC4_A, align 8
  %68 = load %struct.gpio_pin_info*, %struct.gpio_pin_info** %6, align 8
  %69 = getelementptr inbounds %struct.gpio_pin_info, %struct.gpio_pin_info* %68, i32 0, i32 4
  store i8* %67, i8** %69, align 8
  br label %88

70:                                               ; preds = %49
  %71 = load i8*, i8** @mmDC_GPIO_DDC5_A, align 8
  %72 = load %struct.gpio_pin_info*, %struct.gpio_pin_info** %6, align 8
  %73 = getelementptr inbounds %struct.gpio_pin_info, %struct.gpio_pin_info* %72, i32 0, i32 4
  store i8* %71, i8** %73, align 8
  br label %88

74:                                               ; preds = %49
  %75 = load i8*, i8** @mmDC_GPIO_DDC6_A, align 8
  %76 = load %struct.gpio_pin_info*, %struct.gpio_pin_info** %6, align 8
  %77 = getelementptr inbounds %struct.gpio_pin_info, %struct.gpio_pin_info* %76, i32 0, i32 4
  store i8* %75, i8** %77, align 8
  br label %88

78:                                               ; preds = %49
  %79 = load i8*, i8** @mmDC_GPIO_DDCVGA_A, align 8
  %80 = load %struct.gpio_pin_info*, %struct.gpio_pin_info** %6, align 8
  %81 = getelementptr inbounds %struct.gpio_pin_info, %struct.gpio_pin_info* %80, i32 0, i32 4
  store i8* %79, i8** %81, align 8
  br label %88

82:                                               ; preds = %49
  %83 = load i8*, i8** @mmDC_GPIO_I2CPAD_A, align 8
  %84 = load %struct.gpio_pin_info*, %struct.gpio_pin_info** %6, align 8
  %85 = getelementptr inbounds %struct.gpio_pin_info, %struct.gpio_pin_info* %84, i32 0, i32 4
  store i8* %83, i8** %85, align 8
  br label %88

86:                                               ; preds = %49
  %87 = call i32 (...) @BREAK_TO_DEBUGGER()
  store i32 0, i32* %7, align 4
  br label %88

88:                                               ; preds = %86, %82, %78, %74, %70, %66, %62, %58, %54
  br label %227

89:                                               ; preds = %3
  %90 = load i8*, i8** @mmDC_GPIO_GENERIC_A, align 8
  %91 = load %struct.gpio_pin_info*, %struct.gpio_pin_info** %6, align 8
  %92 = getelementptr inbounds %struct.gpio_pin_info, %struct.gpio_pin_info* %91, i32 0, i32 4
  store i8* %90, i8** %92, align 8
  %93 = load i32, i32* %5, align 4
  switch i32 %93, label %122 [
    i32 156, label %94
    i32 155, label %98
    i32 154, label %102
    i32 153, label %106
    i32 152, label %110
    i32 151, label %114
    i32 150, label %118
  ]

94:                                               ; preds = %89
  %95 = load i32, i32* @DC_GPIO_GENERIC_A__DC_GPIO_GENERICA_A_MASK, align 4
  %96 = load %struct.gpio_pin_info*, %struct.gpio_pin_info** %6, align 8
  %97 = getelementptr inbounds %struct.gpio_pin_info, %struct.gpio_pin_info* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 8
  br label %124

98:                                               ; preds = %89
  %99 = load i32, i32* @DC_GPIO_GENERIC_A__DC_GPIO_GENERICB_A_MASK, align 4
  %100 = load %struct.gpio_pin_info*, %struct.gpio_pin_info** %6, align 8
  %101 = getelementptr inbounds %struct.gpio_pin_info, %struct.gpio_pin_info* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 8
  br label %124

102:                                              ; preds = %89
  %103 = load i32, i32* @DC_GPIO_GENERIC_A__DC_GPIO_GENERICC_A_MASK, align 4
  %104 = load %struct.gpio_pin_info*, %struct.gpio_pin_info** %6, align 8
  %105 = getelementptr inbounds %struct.gpio_pin_info, %struct.gpio_pin_info* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 8
  br label %124

106:                                              ; preds = %89
  %107 = load i32, i32* @DC_GPIO_GENERIC_A__DC_GPIO_GENERICD_A_MASK, align 4
  %108 = load %struct.gpio_pin_info*, %struct.gpio_pin_info** %6, align 8
  %109 = getelementptr inbounds %struct.gpio_pin_info, %struct.gpio_pin_info* %108, i32 0, i32 0
  store i32 %107, i32* %109, align 8
  br label %124

110:                                              ; preds = %89
  %111 = load i32, i32* @DC_GPIO_GENERIC_A__DC_GPIO_GENERICE_A_MASK, align 4
  %112 = load %struct.gpio_pin_info*, %struct.gpio_pin_info** %6, align 8
  %113 = getelementptr inbounds %struct.gpio_pin_info, %struct.gpio_pin_info* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 8
  br label %124

114:                                              ; preds = %89
  %115 = load i32, i32* @DC_GPIO_GENERIC_A__DC_GPIO_GENERICF_A_MASK, align 4
  %116 = load %struct.gpio_pin_info*, %struct.gpio_pin_info** %6, align 8
  %117 = getelementptr inbounds %struct.gpio_pin_info, %struct.gpio_pin_info* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 8
  br label %124

118:                                              ; preds = %89
  %119 = load i32, i32* @DC_GPIO_GENERIC_A__DC_GPIO_GENERICG_A_MASK, align 4
  %120 = load %struct.gpio_pin_info*, %struct.gpio_pin_info** %6, align 8
  %121 = getelementptr inbounds %struct.gpio_pin_info, %struct.gpio_pin_info* %120, i32 0, i32 0
  store i32 %119, i32* %121, align 8
  br label %124

122:                                              ; preds = %89
  %123 = call i32 (...) @BREAK_TO_DEBUGGER()
  store i32 0, i32* %7, align 4
  br label %124

124:                                              ; preds = %122, %118, %114, %110, %106, %102, %98, %94
  br label %227

125:                                              ; preds = %3
  %126 = load i8*, i8** @mmDC_GPIO_HPD_A, align 8
  %127 = load %struct.gpio_pin_info*, %struct.gpio_pin_info** %6, align 8
  %128 = getelementptr inbounds %struct.gpio_pin_info, %struct.gpio_pin_info* %127, i32 0, i32 4
  store i8* %126, i8** %128, align 8
  %129 = load i32, i32* %5, align 4
  switch i32 %129, label %154 [
    i32 145, label %130
    i32 144, label %134
    i32 143, label %138
    i32 142, label %142
    i32 141, label %146
    i32 140, label %150
  ]

130:                                              ; preds = %125
  %131 = load i32, i32* @DC_GPIO_HPD_A__DC_GPIO_HPD1_A_MASK, align 4
  %132 = load %struct.gpio_pin_info*, %struct.gpio_pin_info** %6, align 8
  %133 = getelementptr inbounds %struct.gpio_pin_info, %struct.gpio_pin_info* %132, i32 0, i32 0
  store i32 %131, i32* %133, align 8
  br label %156

134:                                              ; preds = %125
  %135 = load i32, i32* @DC_GPIO_HPD_A__DC_GPIO_HPD2_A_MASK, align 4
  %136 = load %struct.gpio_pin_info*, %struct.gpio_pin_info** %6, align 8
  %137 = getelementptr inbounds %struct.gpio_pin_info, %struct.gpio_pin_info* %136, i32 0, i32 0
  store i32 %135, i32* %137, align 8
  br label %156

138:                                              ; preds = %125
  %139 = load i32, i32* @DC_GPIO_HPD_A__DC_GPIO_HPD3_A_MASK, align 4
  %140 = load %struct.gpio_pin_info*, %struct.gpio_pin_info** %6, align 8
  %141 = getelementptr inbounds %struct.gpio_pin_info, %struct.gpio_pin_info* %140, i32 0, i32 0
  store i32 %139, i32* %141, align 8
  br label %156

142:                                              ; preds = %125
  %143 = load i32, i32* @DC_GPIO_HPD_A__DC_GPIO_HPD4_A_MASK, align 4
  %144 = load %struct.gpio_pin_info*, %struct.gpio_pin_info** %6, align 8
  %145 = getelementptr inbounds %struct.gpio_pin_info, %struct.gpio_pin_info* %144, i32 0, i32 0
  store i32 %143, i32* %145, align 8
  br label %156

146:                                              ; preds = %125
  %147 = load i32, i32* @DC_GPIO_HPD_A__DC_GPIO_HPD5_A_MASK, align 4
  %148 = load %struct.gpio_pin_info*, %struct.gpio_pin_info** %6, align 8
  %149 = getelementptr inbounds %struct.gpio_pin_info, %struct.gpio_pin_info* %148, i32 0, i32 0
  store i32 %147, i32* %149, align 8
  br label %156

150:                                              ; preds = %125
  %151 = load i32, i32* @DC_GPIO_HPD_A__DC_GPIO_HPD6_A_MASK, align 4
  %152 = load %struct.gpio_pin_info*, %struct.gpio_pin_info** %6, align 8
  %153 = getelementptr inbounds %struct.gpio_pin_info, %struct.gpio_pin_info* %152, i32 0, i32 0
  store i32 %151, i32* %153, align 8
  br label %156

154:                                              ; preds = %125
  %155 = call i32 (...) @BREAK_TO_DEBUGGER()
  store i32 0, i32* %7, align 4
  br label %156

156:                                              ; preds = %154, %150, %146, %142, %138, %134, %130
  br label %227

157:                                              ; preds = %3
  %158 = load i32, i32* %5, align 4
  switch i32 %158, label %174 [
    i32 131, label %159
    i32 129, label %166
    i32 130, label %173
    i32 128, label %173
  ]

159:                                              ; preds = %157
  %160 = load i8*, i8** @mmDC_GPIO_SYNCA_A, align 8
  %161 = load %struct.gpio_pin_info*, %struct.gpio_pin_info** %6, align 8
  %162 = getelementptr inbounds %struct.gpio_pin_info, %struct.gpio_pin_info* %161, i32 0, i32 4
  store i8* %160, i8** %162, align 8
  %163 = load i32, i32* @DC_GPIO_SYNCA_A__DC_GPIO_HSYNCA_A_MASK, align 4
  %164 = load %struct.gpio_pin_info*, %struct.gpio_pin_info** %6, align 8
  %165 = getelementptr inbounds %struct.gpio_pin_info, %struct.gpio_pin_info* %164, i32 0, i32 0
  store i32 %163, i32* %165, align 8
  br label %176

166:                                              ; preds = %157
  %167 = load i8*, i8** @mmDC_GPIO_SYNCA_A, align 8
  %168 = load %struct.gpio_pin_info*, %struct.gpio_pin_info** %6, align 8
  %169 = getelementptr inbounds %struct.gpio_pin_info, %struct.gpio_pin_info* %168, i32 0, i32 4
  store i8* %167, i8** %169, align 8
  %170 = load i32, i32* @DC_GPIO_SYNCA_A__DC_GPIO_VSYNCA_A_MASK, align 4
  %171 = load %struct.gpio_pin_info*, %struct.gpio_pin_info** %6, align 8
  %172 = getelementptr inbounds %struct.gpio_pin_info, %struct.gpio_pin_info* %171, i32 0, i32 0
  store i32 %170, i32* %172, align 8
  br label %176

173:                                              ; preds = %157, %157
  br label %174

174:                                              ; preds = %157, %173
  %175 = call i32 (...) @BREAK_TO_DEBUGGER()
  store i32 0, i32* %7, align 4
  br label %176

176:                                              ; preds = %174, %166, %159
  br label %227

177:                                              ; preds = %3
  %178 = load i32, i32* %5, align 4
  switch i32 %178, label %207 [
    i32 149, label %179
    i32 148, label %186
    i32 147, label %193
    i32 146, label %200
  ]

179:                                              ; preds = %177
  %180 = load i8*, i8** @mmDC_GPIO_GENLK_A, align 8
  %181 = load %struct.gpio_pin_info*, %struct.gpio_pin_info** %6, align 8
  %182 = getelementptr inbounds %struct.gpio_pin_info, %struct.gpio_pin_info* %181, i32 0, i32 4
  store i8* %180, i8** %182, align 8
  %183 = load i32, i32* @DC_GPIO_GENLK_A__DC_GPIO_GENLK_CLK_A_MASK, align 4
  %184 = load %struct.gpio_pin_info*, %struct.gpio_pin_info** %6, align 8
  %185 = getelementptr inbounds %struct.gpio_pin_info, %struct.gpio_pin_info* %184, i32 0, i32 0
  store i32 %183, i32* %185, align 8
  br label %209

186:                                              ; preds = %177
  %187 = load i8*, i8** @mmDC_GPIO_GENLK_A, align 8
  %188 = load %struct.gpio_pin_info*, %struct.gpio_pin_info** %6, align 8
  %189 = getelementptr inbounds %struct.gpio_pin_info, %struct.gpio_pin_info* %188, i32 0, i32 4
  store i8* %187, i8** %189, align 8
  %190 = load i32, i32* @DC_GPIO_GENLK_A__DC_GPIO_GENLK_VSYNC_A_MASK, align 4
  %191 = load %struct.gpio_pin_info*, %struct.gpio_pin_info** %6, align 8
  %192 = getelementptr inbounds %struct.gpio_pin_info, %struct.gpio_pin_info* %191, i32 0, i32 0
  store i32 %190, i32* %192, align 8
  br label %209

193:                                              ; preds = %177
  %194 = load i8*, i8** @mmDC_GPIO_GENLK_A, align 8
  %195 = load %struct.gpio_pin_info*, %struct.gpio_pin_info** %6, align 8
  %196 = getelementptr inbounds %struct.gpio_pin_info, %struct.gpio_pin_info* %195, i32 0, i32 4
  store i8* %194, i8** %196, align 8
  %197 = load i32, i32* @DC_GPIO_GENLK_A__DC_GPIO_SWAPLOCK_A_A_MASK, align 4
  %198 = load %struct.gpio_pin_info*, %struct.gpio_pin_info** %6, align 8
  %199 = getelementptr inbounds %struct.gpio_pin_info, %struct.gpio_pin_info* %198, i32 0, i32 0
  store i32 %197, i32* %199, align 8
  br label %209

200:                                              ; preds = %177
  %201 = load i8*, i8** @mmDC_GPIO_GENLK_A, align 8
  %202 = load %struct.gpio_pin_info*, %struct.gpio_pin_info** %6, align 8
  %203 = getelementptr inbounds %struct.gpio_pin_info, %struct.gpio_pin_info* %202, i32 0, i32 4
  store i8* %201, i8** %203, align 8
  %204 = load i32, i32* @DC_GPIO_GENLK_A__DC_GPIO_SWAPLOCK_B_A_MASK, align 4
  %205 = load %struct.gpio_pin_info*, %struct.gpio_pin_info** %6, align 8
  %206 = getelementptr inbounds %struct.gpio_pin_info, %struct.gpio_pin_info* %205, i32 0, i32 0
  store i32 %204, i32* %206, align 8
  br label %209

207:                                              ; preds = %177
  %208 = call i32 (...) @BREAK_TO_DEBUGGER()
  store i32 0, i32* %7, align 4
  br label %209

209:                                              ; preds = %207, %200, %193, %186, %179
  br label %227

210:                                              ; preds = %3
  %211 = load i8*, i8** @mmGPIOPAD_A, align 8
  %212 = load %struct.gpio_pin_info*, %struct.gpio_pin_info** %6, align 8
  %213 = getelementptr inbounds %struct.gpio_pin_info, %struct.gpio_pin_info* %212, i32 0, i32 4
  store i8* %211, i8** %213, align 8
  %214 = load i32, i32* %5, align 4
  %215 = shl i32 1, %214
  %216 = load %struct.gpio_pin_info*, %struct.gpio_pin_info** %6, align 8
  %217 = getelementptr inbounds %struct.gpio_pin_info, %struct.gpio_pin_info* %216, i32 0, i32 0
  store i32 %215, i32* %217, align 8
  %218 = load %struct.gpio_pin_info*, %struct.gpio_pin_info** %6, align 8
  %219 = getelementptr inbounds %struct.gpio_pin_info, %struct.gpio_pin_info* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = load i32, i32* @GPIO_GPIO_PAD_MAX, align 4
  %222 = icmp sle i32 %220, %221
  %223 = zext i1 %222 to i32
  store i32 %223, i32* %7, align 4
  br label %227

224:                                              ; preds = %3
  br label %225

225:                                              ; preds = %3, %224
  %226 = call i32 (...) @BREAK_TO_DEBUGGER()
  store i32 0, i32* %7, align 4
  br label %227

227:                                              ; preds = %225, %210, %209, %176, %156, %124, %88, %48
  %228 = load i32, i32* %7, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %264

230:                                              ; preds = %227
  %231 = load %struct.gpio_pin_info*, %struct.gpio_pin_info** %6, align 8
  %232 = getelementptr inbounds %struct.gpio_pin_info, %struct.gpio_pin_info* %231, i32 0, i32 4
  %233 = load i8*, i8** %232, align 8
  %234 = getelementptr i8, i8* %233, i64 2
  %235 = load %struct.gpio_pin_info*, %struct.gpio_pin_info** %6, align 8
  %236 = getelementptr inbounds %struct.gpio_pin_info, %struct.gpio_pin_info* %235, i32 0, i32 7
  store i8* %234, i8** %236, align 8
  %237 = load %struct.gpio_pin_info*, %struct.gpio_pin_info** %6, align 8
  %238 = getelementptr inbounds %struct.gpio_pin_info, %struct.gpio_pin_info* %237, i32 0, i32 4
  %239 = load i8*, i8** %238, align 8
  %240 = getelementptr i8, i8* %239, i64 1
  %241 = load %struct.gpio_pin_info*, %struct.gpio_pin_info** %6, align 8
  %242 = getelementptr inbounds %struct.gpio_pin_info, %struct.gpio_pin_info* %241, i32 0, i32 6
  store i8* %240, i8** %242, align 8
  %243 = load %struct.gpio_pin_info*, %struct.gpio_pin_info** %6, align 8
  %244 = getelementptr inbounds %struct.gpio_pin_info, %struct.gpio_pin_info* %243, i32 0, i32 4
  %245 = load i8*, i8** %244, align 8
  %246 = getelementptr i8, i8* %245, i64 -1
  %247 = load %struct.gpio_pin_info*, %struct.gpio_pin_info** %6, align 8
  %248 = getelementptr inbounds %struct.gpio_pin_info, %struct.gpio_pin_info* %247, i32 0, i32 5
  store i8* %246, i8** %248, align 8
  %249 = load %struct.gpio_pin_info*, %struct.gpio_pin_info** %6, align 8
  %250 = getelementptr inbounds %struct.gpio_pin_info, %struct.gpio_pin_info* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = load %struct.gpio_pin_info*, %struct.gpio_pin_info** %6, align 8
  %253 = getelementptr inbounds %struct.gpio_pin_info, %struct.gpio_pin_info* %252, i32 0, i32 1
  store i32 %251, i32* %253, align 4
  %254 = load %struct.gpio_pin_info*, %struct.gpio_pin_info** %6, align 8
  %255 = getelementptr inbounds %struct.gpio_pin_info, %struct.gpio_pin_info* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 8
  %257 = load %struct.gpio_pin_info*, %struct.gpio_pin_info** %6, align 8
  %258 = getelementptr inbounds %struct.gpio_pin_info, %struct.gpio_pin_info* %257, i32 0, i32 2
  store i32 %256, i32* %258, align 8
  %259 = load %struct.gpio_pin_info*, %struct.gpio_pin_info** %6, align 8
  %260 = getelementptr inbounds %struct.gpio_pin_info, %struct.gpio_pin_info* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 8
  %262 = load %struct.gpio_pin_info*, %struct.gpio_pin_info** %6, align 8
  %263 = getelementptr inbounds %struct.gpio_pin_info, %struct.gpio_pin_info* %262, i32 0, i32 3
  store i32 %261, i32* %263, align 4
  br label %264

264:                                              ; preds = %230, %227
  %265 = load i32, i32* %7, align 4
  ret i32 %265
}

declare dso_local i32 @BREAK_TO_DEBUGGER(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
