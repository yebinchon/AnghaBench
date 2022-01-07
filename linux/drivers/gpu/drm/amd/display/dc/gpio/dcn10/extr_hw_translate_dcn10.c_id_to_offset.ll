; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/gpio/dcn10/extr_hw_translate_dcn10.c_id_to_offset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/gpio/dcn10/extr_hw_translate_dcn10.c_id_to_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_pin_info = type { i32, i32, i32, i32, i8*, i8*, i8*, i8* }

@DC_GPIO_DDC6_A__DC_GPIO_DDC6DATA_A_MASK = common dso_local global i32 0, align 4
@DC_GPIO_DDC1_A = common dso_local global i32 0, align 4
@DC_GPIO_DDC2_A = common dso_local global i32 0, align 4
@DC_GPIO_DDC3_A = common dso_local global i32 0, align 4
@DC_GPIO_DDC4_A = common dso_local global i32 0, align 4
@DC_GPIO_DDC5_A = common dso_local global i32 0, align 4
@DC_GPIO_DDC6_A = common dso_local global i32 0, align 4
@DC_GPIO_DDCVGA_A = common dso_local global i32 0, align 4
@DC_GPIO_I2CPAD_A = common dso_local global i32 0, align 4
@DC_GPIO_DDC6_A__DC_GPIO_DDC6CLK_A_MASK = common dso_local global i32 0, align 4
@DC_GPIO_GENERIC_A = common dso_local global i32 0, align 4
@DC_GPIO_GENERIC_A__DC_GPIO_GENERICA_A_MASK = common dso_local global i32 0, align 4
@DC_GPIO_GENERIC_A__DC_GPIO_GENERICB_A_MASK = common dso_local global i32 0, align 4
@DC_GPIO_GENERIC_A__DC_GPIO_GENERICC_A_MASK = common dso_local global i32 0, align 4
@DC_GPIO_GENERIC_A__DC_GPIO_GENERICD_A_MASK = common dso_local global i32 0, align 4
@DC_GPIO_GENERIC_A__DC_GPIO_GENERICE_A_MASK = common dso_local global i32 0, align 4
@DC_GPIO_GENERIC_A__DC_GPIO_GENERICF_A_MASK = common dso_local global i32 0, align 4
@DC_GPIO_GENERIC_A__DC_GPIO_GENERICG_A_MASK = common dso_local global i32 0, align 4
@DC_GPIO_HPD_A = common dso_local global i32 0, align 4
@DC_GPIO_HPD_A__DC_GPIO_HPD1_A_MASK = common dso_local global i32 0, align 4
@DC_GPIO_HPD_A__DC_GPIO_HPD2_A_MASK = common dso_local global i32 0, align 4
@DC_GPIO_HPD_A__DC_GPIO_HPD3_A_MASK = common dso_local global i32 0, align 4
@DC_GPIO_HPD_A__DC_GPIO_HPD4_A_MASK = common dso_local global i32 0, align 4
@DC_GPIO_HPD_A__DC_GPIO_HPD5_A_MASK = common dso_local global i32 0, align 4
@DC_GPIO_HPD_A__DC_GPIO_HPD6_A_MASK = common dso_local global i32 0, align 4
@DC_GPIO_SYNCA_A = common dso_local global i32 0, align 4
@DC_GPIO_SYNCA_A__DC_GPIO_HSYNCA_A_MASK = common dso_local global i32 0, align 4
@DC_GPIO_SYNCA_A__DC_GPIO_VSYNCA_A_MASK = common dso_local global i32 0, align 4
@DC_GPIO_GENLK_A = common dso_local global i32 0, align 4
@DC_GPIO_GENLK_A__DC_GPIO_GENLK_CLK_A_MASK = common dso_local global i32 0, align 4
@DC_GPIO_GENLK_A__DC_GPIO_GENLK_VSYNC_A_MASK = common dso_local global i32 0, align 4
@DC_GPIO_GENLK_A__DC_GPIO_SWAPLOCK_A_A_MASK = common dso_local global i32 0, align 4
@DC_GPIO_GENLK_A__DC_GPIO_SWAPLOCK_B_A_MASK = common dso_local global i32 0, align 4
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
  switch i32 %8, label %235 [
    i32 137, label %9
    i32 138, label %57
    i32 136, label %105
    i32 134, label %142
    i32 133, label %175
    i32 135, label %197
    i32 132, label %234
  ]

9:                                                ; preds = %3
  %10 = load i32, i32* @DC_GPIO_DDC6_A__DC_GPIO_DDC6DATA_A_MASK, align 4
  %11 = load %struct.gpio_pin_info*, %struct.gpio_pin_info** %6, align 8
  %12 = getelementptr inbounds %struct.gpio_pin_info, %struct.gpio_pin_info* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 8
  %13 = load i32, i32* %5, align 4
  switch i32 %13, label %54 [
    i32 163, label %14
    i32 162, label %19
    i32 161, label %24
    i32 160, label %29
    i32 159, label %34
    i32 158, label %39
    i32 157, label %44
    i32 156, label %49
  ]

14:                                               ; preds = %9
  %15 = load i32, i32* @DC_GPIO_DDC1_A, align 4
  %16 = call i8* @REG(i32 %15)
  %17 = load %struct.gpio_pin_info*, %struct.gpio_pin_info** %6, align 8
  %18 = getelementptr inbounds %struct.gpio_pin_info, %struct.gpio_pin_info* %17, i32 0, i32 4
  store i8* %16, i8** %18, align 8
  br label %56

19:                                               ; preds = %9
  %20 = load i32, i32* @DC_GPIO_DDC2_A, align 4
  %21 = call i8* @REG(i32 %20)
  %22 = load %struct.gpio_pin_info*, %struct.gpio_pin_info** %6, align 8
  %23 = getelementptr inbounds %struct.gpio_pin_info, %struct.gpio_pin_info* %22, i32 0, i32 4
  store i8* %21, i8** %23, align 8
  br label %56

24:                                               ; preds = %9
  %25 = load i32, i32* @DC_GPIO_DDC3_A, align 4
  %26 = call i8* @REG(i32 %25)
  %27 = load %struct.gpio_pin_info*, %struct.gpio_pin_info** %6, align 8
  %28 = getelementptr inbounds %struct.gpio_pin_info, %struct.gpio_pin_info* %27, i32 0, i32 4
  store i8* %26, i8** %28, align 8
  br label %56

29:                                               ; preds = %9
  %30 = load i32, i32* @DC_GPIO_DDC4_A, align 4
  %31 = call i8* @REG(i32 %30)
  %32 = load %struct.gpio_pin_info*, %struct.gpio_pin_info** %6, align 8
  %33 = getelementptr inbounds %struct.gpio_pin_info, %struct.gpio_pin_info* %32, i32 0, i32 4
  store i8* %31, i8** %33, align 8
  br label %56

34:                                               ; preds = %9
  %35 = load i32, i32* @DC_GPIO_DDC5_A, align 4
  %36 = call i8* @REG(i32 %35)
  %37 = load %struct.gpio_pin_info*, %struct.gpio_pin_info** %6, align 8
  %38 = getelementptr inbounds %struct.gpio_pin_info, %struct.gpio_pin_info* %37, i32 0, i32 4
  store i8* %36, i8** %38, align 8
  br label %56

39:                                               ; preds = %9
  %40 = load i32, i32* @DC_GPIO_DDC6_A, align 4
  %41 = call i8* @REG(i32 %40)
  %42 = load %struct.gpio_pin_info*, %struct.gpio_pin_info** %6, align 8
  %43 = getelementptr inbounds %struct.gpio_pin_info, %struct.gpio_pin_info* %42, i32 0, i32 4
  store i8* %41, i8** %43, align 8
  br label %56

44:                                               ; preds = %9
  %45 = load i32, i32* @DC_GPIO_DDCVGA_A, align 4
  %46 = call i8* @REG(i32 %45)
  %47 = load %struct.gpio_pin_info*, %struct.gpio_pin_info** %6, align 8
  %48 = getelementptr inbounds %struct.gpio_pin_info, %struct.gpio_pin_info* %47, i32 0, i32 4
  store i8* %46, i8** %48, align 8
  br label %56

49:                                               ; preds = %9
  %50 = load i32, i32* @DC_GPIO_I2CPAD_A, align 4
  %51 = call i8* @REG(i32 %50)
  %52 = load %struct.gpio_pin_info*, %struct.gpio_pin_info** %6, align 8
  %53 = getelementptr inbounds %struct.gpio_pin_info, %struct.gpio_pin_info* %52, i32 0, i32 4
  store i8* %51, i8** %53, align 8
  br label %56

54:                                               ; preds = %9
  %55 = call i32 @ASSERT_CRITICAL(i32 0)
  store i32 0, i32* %7, align 4
  br label %56

56:                                               ; preds = %54, %49, %44, %39, %34, %29, %24, %19, %14
  br label %237

57:                                               ; preds = %3
  %58 = load i32, i32* @DC_GPIO_DDC6_A__DC_GPIO_DDC6CLK_A_MASK, align 4
  %59 = load %struct.gpio_pin_info*, %struct.gpio_pin_info** %6, align 8
  %60 = getelementptr inbounds %struct.gpio_pin_info, %struct.gpio_pin_info* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load i32, i32* %5, align 4
  switch i32 %61, label %102 [
    i32 163, label %62
    i32 162, label %67
    i32 161, label %72
    i32 160, label %77
    i32 159, label %82
    i32 158, label %87
    i32 157, label %92
    i32 156, label %97
  ]

62:                                               ; preds = %57
  %63 = load i32, i32* @DC_GPIO_DDC1_A, align 4
  %64 = call i8* @REG(i32 %63)
  %65 = load %struct.gpio_pin_info*, %struct.gpio_pin_info** %6, align 8
  %66 = getelementptr inbounds %struct.gpio_pin_info, %struct.gpio_pin_info* %65, i32 0, i32 4
  store i8* %64, i8** %66, align 8
  br label %104

67:                                               ; preds = %57
  %68 = load i32, i32* @DC_GPIO_DDC2_A, align 4
  %69 = call i8* @REG(i32 %68)
  %70 = load %struct.gpio_pin_info*, %struct.gpio_pin_info** %6, align 8
  %71 = getelementptr inbounds %struct.gpio_pin_info, %struct.gpio_pin_info* %70, i32 0, i32 4
  store i8* %69, i8** %71, align 8
  br label %104

72:                                               ; preds = %57
  %73 = load i32, i32* @DC_GPIO_DDC3_A, align 4
  %74 = call i8* @REG(i32 %73)
  %75 = load %struct.gpio_pin_info*, %struct.gpio_pin_info** %6, align 8
  %76 = getelementptr inbounds %struct.gpio_pin_info, %struct.gpio_pin_info* %75, i32 0, i32 4
  store i8* %74, i8** %76, align 8
  br label %104

77:                                               ; preds = %57
  %78 = load i32, i32* @DC_GPIO_DDC4_A, align 4
  %79 = call i8* @REG(i32 %78)
  %80 = load %struct.gpio_pin_info*, %struct.gpio_pin_info** %6, align 8
  %81 = getelementptr inbounds %struct.gpio_pin_info, %struct.gpio_pin_info* %80, i32 0, i32 4
  store i8* %79, i8** %81, align 8
  br label %104

82:                                               ; preds = %57
  %83 = load i32, i32* @DC_GPIO_DDC5_A, align 4
  %84 = call i8* @REG(i32 %83)
  %85 = load %struct.gpio_pin_info*, %struct.gpio_pin_info** %6, align 8
  %86 = getelementptr inbounds %struct.gpio_pin_info, %struct.gpio_pin_info* %85, i32 0, i32 4
  store i8* %84, i8** %86, align 8
  br label %104

87:                                               ; preds = %57
  %88 = load i32, i32* @DC_GPIO_DDC6_A, align 4
  %89 = call i8* @REG(i32 %88)
  %90 = load %struct.gpio_pin_info*, %struct.gpio_pin_info** %6, align 8
  %91 = getelementptr inbounds %struct.gpio_pin_info, %struct.gpio_pin_info* %90, i32 0, i32 4
  store i8* %89, i8** %91, align 8
  br label %104

92:                                               ; preds = %57
  %93 = load i32, i32* @DC_GPIO_DDCVGA_A, align 4
  %94 = call i8* @REG(i32 %93)
  %95 = load %struct.gpio_pin_info*, %struct.gpio_pin_info** %6, align 8
  %96 = getelementptr inbounds %struct.gpio_pin_info, %struct.gpio_pin_info* %95, i32 0, i32 4
  store i8* %94, i8** %96, align 8
  br label %104

97:                                               ; preds = %57
  %98 = load i32, i32* @DC_GPIO_I2CPAD_A, align 4
  %99 = call i8* @REG(i32 %98)
  %100 = load %struct.gpio_pin_info*, %struct.gpio_pin_info** %6, align 8
  %101 = getelementptr inbounds %struct.gpio_pin_info, %struct.gpio_pin_info* %100, i32 0, i32 4
  store i8* %99, i8** %101, align 8
  br label %104

102:                                              ; preds = %57
  %103 = call i32 @ASSERT_CRITICAL(i32 0)
  store i32 0, i32* %7, align 4
  br label %104

104:                                              ; preds = %102, %97, %92, %87, %82, %77, %72, %67, %62
  br label %237

105:                                              ; preds = %3
  %106 = load i32, i32* @DC_GPIO_GENERIC_A, align 4
  %107 = call i8* @REG(i32 %106)
  %108 = load %struct.gpio_pin_info*, %struct.gpio_pin_info** %6, align 8
  %109 = getelementptr inbounds %struct.gpio_pin_info, %struct.gpio_pin_info* %108, i32 0, i32 4
  store i8* %107, i8** %109, align 8
  %110 = load i32, i32* %5, align 4
  switch i32 %110, label %139 [
    i32 155, label %111
    i32 154, label %115
    i32 153, label %119
    i32 152, label %123
    i32 151, label %127
    i32 150, label %131
    i32 149, label %135
  ]

111:                                              ; preds = %105
  %112 = load i32, i32* @DC_GPIO_GENERIC_A__DC_GPIO_GENERICA_A_MASK, align 4
  %113 = load %struct.gpio_pin_info*, %struct.gpio_pin_info** %6, align 8
  %114 = getelementptr inbounds %struct.gpio_pin_info, %struct.gpio_pin_info* %113, i32 0, i32 0
  store i32 %112, i32* %114, align 8
  br label %141

115:                                              ; preds = %105
  %116 = load i32, i32* @DC_GPIO_GENERIC_A__DC_GPIO_GENERICB_A_MASK, align 4
  %117 = load %struct.gpio_pin_info*, %struct.gpio_pin_info** %6, align 8
  %118 = getelementptr inbounds %struct.gpio_pin_info, %struct.gpio_pin_info* %117, i32 0, i32 0
  store i32 %116, i32* %118, align 8
  br label %141

119:                                              ; preds = %105
  %120 = load i32, i32* @DC_GPIO_GENERIC_A__DC_GPIO_GENERICC_A_MASK, align 4
  %121 = load %struct.gpio_pin_info*, %struct.gpio_pin_info** %6, align 8
  %122 = getelementptr inbounds %struct.gpio_pin_info, %struct.gpio_pin_info* %121, i32 0, i32 0
  store i32 %120, i32* %122, align 8
  br label %141

123:                                              ; preds = %105
  %124 = load i32, i32* @DC_GPIO_GENERIC_A__DC_GPIO_GENERICD_A_MASK, align 4
  %125 = load %struct.gpio_pin_info*, %struct.gpio_pin_info** %6, align 8
  %126 = getelementptr inbounds %struct.gpio_pin_info, %struct.gpio_pin_info* %125, i32 0, i32 0
  store i32 %124, i32* %126, align 8
  br label %141

127:                                              ; preds = %105
  %128 = load i32, i32* @DC_GPIO_GENERIC_A__DC_GPIO_GENERICE_A_MASK, align 4
  %129 = load %struct.gpio_pin_info*, %struct.gpio_pin_info** %6, align 8
  %130 = getelementptr inbounds %struct.gpio_pin_info, %struct.gpio_pin_info* %129, i32 0, i32 0
  store i32 %128, i32* %130, align 8
  br label %141

131:                                              ; preds = %105
  %132 = load i32, i32* @DC_GPIO_GENERIC_A__DC_GPIO_GENERICF_A_MASK, align 4
  %133 = load %struct.gpio_pin_info*, %struct.gpio_pin_info** %6, align 8
  %134 = getelementptr inbounds %struct.gpio_pin_info, %struct.gpio_pin_info* %133, i32 0, i32 0
  store i32 %132, i32* %134, align 8
  br label %141

135:                                              ; preds = %105
  %136 = load i32, i32* @DC_GPIO_GENERIC_A__DC_GPIO_GENERICG_A_MASK, align 4
  %137 = load %struct.gpio_pin_info*, %struct.gpio_pin_info** %6, align 8
  %138 = getelementptr inbounds %struct.gpio_pin_info, %struct.gpio_pin_info* %137, i32 0, i32 0
  store i32 %136, i32* %138, align 8
  br label %141

139:                                              ; preds = %105
  %140 = call i32 @ASSERT_CRITICAL(i32 0)
  store i32 0, i32* %7, align 4
  br label %141

141:                                              ; preds = %139, %135, %131, %127, %123, %119, %115, %111
  br label %237

142:                                              ; preds = %3
  %143 = load i32, i32* @DC_GPIO_HPD_A, align 4
  %144 = call i8* @REG(i32 %143)
  %145 = load %struct.gpio_pin_info*, %struct.gpio_pin_info** %6, align 8
  %146 = getelementptr inbounds %struct.gpio_pin_info, %struct.gpio_pin_info* %145, i32 0, i32 4
  store i8* %144, i8** %146, align 8
  %147 = load i32, i32* %5, align 4
  switch i32 %147, label %172 [
    i32 144, label %148
    i32 143, label %152
    i32 142, label %156
    i32 141, label %160
    i32 140, label %164
    i32 139, label %168
  ]

148:                                              ; preds = %142
  %149 = load i32, i32* @DC_GPIO_HPD_A__DC_GPIO_HPD1_A_MASK, align 4
  %150 = load %struct.gpio_pin_info*, %struct.gpio_pin_info** %6, align 8
  %151 = getelementptr inbounds %struct.gpio_pin_info, %struct.gpio_pin_info* %150, i32 0, i32 0
  store i32 %149, i32* %151, align 8
  br label %174

152:                                              ; preds = %142
  %153 = load i32, i32* @DC_GPIO_HPD_A__DC_GPIO_HPD2_A_MASK, align 4
  %154 = load %struct.gpio_pin_info*, %struct.gpio_pin_info** %6, align 8
  %155 = getelementptr inbounds %struct.gpio_pin_info, %struct.gpio_pin_info* %154, i32 0, i32 0
  store i32 %153, i32* %155, align 8
  br label %174

156:                                              ; preds = %142
  %157 = load i32, i32* @DC_GPIO_HPD_A__DC_GPIO_HPD3_A_MASK, align 4
  %158 = load %struct.gpio_pin_info*, %struct.gpio_pin_info** %6, align 8
  %159 = getelementptr inbounds %struct.gpio_pin_info, %struct.gpio_pin_info* %158, i32 0, i32 0
  store i32 %157, i32* %159, align 8
  br label %174

160:                                              ; preds = %142
  %161 = load i32, i32* @DC_GPIO_HPD_A__DC_GPIO_HPD4_A_MASK, align 4
  %162 = load %struct.gpio_pin_info*, %struct.gpio_pin_info** %6, align 8
  %163 = getelementptr inbounds %struct.gpio_pin_info, %struct.gpio_pin_info* %162, i32 0, i32 0
  store i32 %161, i32* %163, align 8
  br label %174

164:                                              ; preds = %142
  %165 = load i32, i32* @DC_GPIO_HPD_A__DC_GPIO_HPD5_A_MASK, align 4
  %166 = load %struct.gpio_pin_info*, %struct.gpio_pin_info** %6, align 8
  %167 = getelementptr inbounds %struct.gpio_pin_info, %struct.gpio_pin_info* %166, i32 0, i32 0
  store i32 %165, i32* %167, align 8
  br label %174

168:                                              ; preds = %142
  %169 = load i32, i32* @DC_GPIO_HPD_A__DC_GPIO_HPD6_A_MASK, align 4
  %170 = load %struct.gpio_pin_info*, %struct.gpio_pin_info** %6, align 8
  %171 = getelementptr inbounds %struct.gpio_pin_info, %struct.gpio_pin_info* %170, i32 0, i32 0
  store i32 %169, i32* %171, align 8
  br label %174

172:                                              ; preds = %142
  %173 = call i32 @ASSERT_CRITICAL(i32 0)
  store i32 0, i32* %7, align 4
  br label %174

174:                                              ; preds = %172, %168, %164, %160, %156, %152, %148
  br label %237

175:                                              ; preds = %3
  %176 = load i32, i32* %5, align 4
  switch i32 %176, label %194 [
    i32 131, label %177
    i32 129, label %185
    i32 130, label %193
    i32 128, label %193
  ]

177:                                              ; preds = %175
  %178 = load i32, i32* @DC_GPIO_SYNCA_A, align 4
  %179 = call i8* @REG(i32 %178)
  %180 = load %struct.gpio_pin_info*, %struct.gpio_pin_info** %6, align 8
  %181 = getelementptr inbounds %struct.gpio_pin_info, %struct.gpio_pin_info* %180, i32 0, i32 4
  store i8* %179, i8** %181, align 8
  %182 = load i32, i32* @DC_GPIO_SYNCA_A__DC_GPIO_HSYNCA_A_MASK, align 4
  %183 = load %struct.gpio_pin_info*, %struct.gpio_pin_info** %6, align 8
  %184 = getelementptr inbounds %struct.gpio_pin_info, %struct.gpio_pin_info* %183, i32 0, i32 0
  store i32 %182, i32* %184, align 8
  br label %196

185:                                              ; preds = %175
  %186 = load i32, i32* @DC_GPIO_SYNCA_A, align 4
  %187 = call i8* @REG(i32 %186)
  %188 = load %struct.gpio_pin_info*, %struct.gpio_pin_info** %6, align 8
  %189 = getelementptr inbounds %struct.gpio_pin_info, %struct.gpio_pin_info* %188, i32 0, i32 4
  store i8* %187, i8** %189, align 8
  %190 = load i32, i32* @DC_GPIO_SYNCA_A__DC_GPIO_VSYNCA_A_MASK, align 4
  %191 = load %struct.gpio_pin_info*, %struct.gpio_pin_info** %6, align 8
  %192 = getelementptr inbounds %struct.gpio_pin_info, %struct.gpio_pin_info* %191, i32 0, i32 0
  store i32 %190, i32* %192, align 8
  br label %196

193:                                              ; preds = %175, %175
  br label %194

194:                                              ; preds = %175, %193
  %195 = call i32 @ASSERT_CRITICAL(i32 0)
  store i32 0, i32* %7, align 4
  br label %196

196:                                              ; preds = %194, %185, %177
  br label %237

197:                                              ; preds = %3
  %198 = load i32, i32* %5, align 4
  switch i32 %198, label %231 [
    i32 148, label %199
    i32 147, label %207
    i32 146, label %215
    i32 145, label %223
  ]

199:                                              ; preds = %197
  %200 = load i32, i32* @DC_GPIO_GENLK_A, align 4
  %201 = call i8* @REG(i32 %200)
  %202 = load %struct.gpio_pin_info*, %struct.gpio_pin_info** %6, align 8
  %203 = getelementptr inbounds %struct.gpio_pin_info, %struct.gpio_pin_info* %202, i32 0, i32 4
  store i8* %201, i8** %203, align 8
  %204 = load i32, i32* @DC_GPIO_GENLK_A__DC_GPIO_GENLK_CLK_A_MASK, align 4
  %205 = load %struct.gpio_pin_info*, %struct.gpio_pin_info** %6, align 8
  %206 = getelementptr inbounds %struct.gpio_pin_info, %struct.gpio_pin_info* %205, i32 0, i32 0
  store i32 %204, i32* %206, align 8
  br label %233

207:                                              ; preds = %197
  %208 = load i32, i32* @DC_GPIO_GENLK_A, align 4
  %209 = call i8* @REG(i32 %208)
  %210 = load %struct.gpio_pin_info*, %struct.gpio_pin_info** %6, align 8
  %211 = getelementptr inbounds %struct.gpio_pin_info, %struct.gpio_pin_info* %210, i32 0, i32 4
  store i8* %209, i8** %211, align 8
  %212 = load i32, i32* @DC_GPIO_GENLK_A__DC_GPIO_GENLK_VSYNC_A_MASK, align 4
  %213 = load %struct.gpio_pin_info*, %struct.gpio_pin_info** %6, align 8
  %214 = getelementptr inbounds %struct.gpio_pin_info, %struct.gpio_pin_info* %213, i32 0, i32 0
  store i32 %212, i32* %214, align 8
  br label %233

215:                                              ; preds = %197
  %216 = load i32, i32* @DC_GPIO_GENLK_A, align 4
  %217 = call i8* @REG(i32 %216)
  %218 = load %struct.gpio_pin_info*, %struct.gpio_pin_info** %6, align 8
  %219 = getelementptr inbounds %struct.gpio_pin_info, %struct.gpio_pin_info* %218, i32 0, i32 4
  store i8* %217, i8** %219, align 8
  %220 = load i32, i32* @DC_GPIO_GENLK_A__DC_GPIO_SWAPLOCK_A_A_MASK, align 4
  %221 = load %struct.gpio_pin_info*, %struct.gpio_pin_info** %6, align 8
  %222 = getelementptr inbounds %struct.gpio_pin_info, %struct.gpio_pin_info* %221, i32 0, i32 0
  store i32 %220, i32* %222, align 8
  br label %233

223:                                              ; preds = %197
  %224 = load i32, i32* @DC_GPIO_GENLK_A, align 4
  %225 = call i8* @REG(i32 %224)
  %226 = load %struct.gpio_pin_info*, %struct.gpio_pin_info** %6, align 8
  %227 = getelementptr inbounds %struct.gpio_pin_info, %struct.gpio_pin_info* %226, i32 0, i32 4
  store i8* %225, i8** %227, align 8
  %228 = load i32, i32* @DC_GPIO_GENLK_A__DC_GPIO_SWAPLOCK_B_A_MASK, align 4
  %229 = load %struct.gpio_pin_info*, %struct.gpio_pin_info** %6, align 8
  %230 = getelementptr inbounds %struct.gpio_pin_info, %struct.gpio_pin_info* %229, i32 0, i32 0
  store i32 %228, i32* %230, align 8
  br label %233

231:                                              ; preds = %197
  %232 = call i32 @ASSERT_CRITICAL(i32 0)
  store i32 0, i32* %7, align 4
  br label %233

233:                                              ; preds = %231, %223, %215, %207, %199
  br label %237

234:                                              ; preds = %3
  br label %235

235:                                              ; preds = %3, %234
  %236 = call i32 @ASSERT_CRITICAL(i32 0)
  store i32 0, i32* %7, align 4
  br label %237

237:                                              ; preds = %235, %233, %196, %174, %141, %104, %56
  %238 = load i32, i32* %7, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %274

240:                                              ; preds = %237
  %241 = load %struct.gpio_pin_info*, %struct.gpio_pin_info** %6, align 8
  %242 = getelementptr inbounds %struct.gpio_pin_info, %struct.gpio_pin_info* %241, i32 0, i32 4
  %243 = load i8*, i8** %242, align 8
  %244 = getelementptr i8, i8* %243, i64 2
  %245 = load %struct.gpio_pin_info*, %struct.gpio_pin_info** %6, align 8
  %246 = getelementptr inbounds %struct.gpio_pin_info, %struct.gpio_pin_info* %245, i32 0, i32 7
  store i8* %244, i8** %246, align 8
  %247 = load %struct.gpio_pin_info*, %struct.gpio_pin_info** %6, align 8
  %248 = getelementptr inbounds %struct.gpio_pin_info, %struct.gpio_pin_info* %247, i32 0, i32 4
  %249 = load i8*, i8** %248, align 8
  %250 = getelementptr i8, i8* %249, i64 1
  %251 = load %struct.gpio_pin_info*, %struct.gpio_pin_info** %6, align 8
  %252 = getelementptr inbounds %struct.gpio_pin_info, %struct.gpio_pin_info* %251, i32 0, i32 6
  store i8* %250, i8** %252, align 8
  %253 = load %struct.gpio_pin_info*, %struct.gpio_pin_info** %6, align 8
  %254 = getelementptr inbounds %struct.gpio_pin_info, %struct.gpio_pin_info* %253, i32 0, i32 4
  %255 = load i8*, i8** %254, align 8
  %256 = getelementptr i8, i8* %255, i64 -1
  %257 = load %struct.gpio_pin_info*, %struct.gpio_pin_info** %6, align 8
  %258 = getelementptr inbounds %struct.gpio_pin_info, %struct.gpio_pin_info* %257, i32 0, i32 5
  store i8* %256, i8** %258, align 8
  %259 = load %struct.gpio_pin_info*, %struct.gpio_pin_info** %6, align 8
  %260 = getelementptr inbounds %struct.gpio_pin_info, %struct.gpio_pin_info* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 8
  %262 = load %struct.gpio_pin_info*, %struct.gpio_pin_info** %6, align 8
  %263 = getelementptr inbounds %struct.gpio_pin_info, %struct.gpio_pin_info* %262, i32 0, i32 3
  store i32 %261, i32* %263, align 4
  %264 = load %struct.gpio_pin_info*, %struct.gpio_pin_info** %6, align 8
  %265 = getelementptr inbounds %struct.gpio_pin_info, %struct.gpio_pin_info* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 8
  %267 = load %struct.gpio_pin_info*, %struct.gpio_pin_info** %6, align 8
  %268 = getelementptr inbounds %struct.gpio_pin_info, %struct.gpio_pin_info* %267, i32 0, i32 2
  store i32 %266, i32* %268, align 8
  %269 = load %struct.gpio_pin_info*, %struct.gpio_pin_info** %6, align 8
  %270 = getelementptr inbounds %struct.gpio_pin_info, %struct.gpio_pin_info* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = load %struct.gpio_pin_info*, %struct.gpio_pin_info** %6, align 8
  %273 = getelementptr inbounds %struct.gpio_pin_info, %struct.gpio_pin_info* %272, i32 0, i32 1
  store i32 %271, i32* %273, align 4
  br label %274

274:                                              ; preds = %240, %237
  %275 = load i32, i32* %7, align 4
  ret i32 %275
}

declare dso_local i8* @REG(i32) #1

declare dso_local i32 @ASSERT_CRITICAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
