; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mgag200/extr_mgag200_mode.c_mga_g200eh_set_plls.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mgag200/extr_mgag200_mode.c_mga_g200eh_set_plls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mga_device = type { i64 }

@G200_EH3 = common dso_local global i64 0, align 8
@DAC_INDEX = common dso_local global i32 0, align 4
@MGA1064_PIX_CLK_CTL = common dso_local global i32 0, align 4
@DAC_DATA = common dso_local global i32 0, align 4
@MGA1064_PIX_CLK_CTL_CLK_DIS = common dso_local global i32 0, align 4
@MGAREG_MEM_MISC_READ = common dso_local global i32 0, align 4
@MGAREG_MEM_MISC_WRITE = common dso_local global i32 0, align 4
@MGA1064_PIX_CLK_CTL_CLK_POW_DOWN = common dso_local global i32 0, align 4
@MGA1064_EH_PIX_PLLC_M = common dso_local global i32 0, align 4
@MGA1064_EH_PIX_PLLC_N = common dso_local global i32 0, align 4
@MGA1064_EH_PIX_PLLC_P = common dso_local global i32 0, align 4
@MGA1064_PIX_CLK_CTL_SEL_MSK = common dso_local global i32 0, align 4
@MGA1064_PIX_CLK_CTL_SEL_PLL = common dso_local global i32 0, align 4
@MGAREG_VCOUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mga_device*, i64)* @mga_g200eh_set_plls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mga_g200eh_set_plls(%struct.mga_device* %0, i64 %1) #0 {
  %3 = alloca %struct.mga_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
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
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.mga_device* %0, %struct.mga_device** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %22, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %14, align 4
  %23 = load %struct.mga_device*, %struct.mga_device** %3, align 8
  %24 = getelementptr inbounds %struct.mga_device, %struct.mga_device* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @G200_EH3, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %102

28:                                               ; preds = %2
  store i32 3000000, i32* %5, align 4
  store i32 1500000, i32* %6, align 4
  store i32 25000, i32* %7, align 4
  store i32 -1, i32* %8, align 4
  store i32 0, i32* %10, align 4
  store i32 150, i32* %11, align 4
  br label %29

29:                                               ; preds = %98, %28
  %30 = load i32, i32* %11, align 4
  %31 = icmp uge i32 %30, 6
  br i1 %31, label %32, label %101

32:                                               ; preds = %29
  %33 = load i64, i64* %4, align 8
  %34 = load i32, i32* %11, align 4
  %35 = zext i32 %34 to i64
  %36 = mul nsw i64 %33, %35
  %37 = load i32, i32* %5, align 4
  %38 = zext i32 %37 to i64
  %39 = icmp sgt i64 %36, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  br label %98

41:                                               ; preds = %32
  %42 = load i64, i64* %4, align 8
  %43 = load i32, i32* %11, align 4
  %44 = zext i32 %43 to i64
  %45 = mul nsw i64 %42, %44
  %46 = load i32, i32* %6, align 4
  %47 = zext i32 %46 to i64
  %48 = icmp slt i64 %45, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %41
  br label %98

50:                                               ; preds = %41
  store i32 120, i32* %12, align 4
  br label %51

51:                                               ; preds = %90, %50
  %52 = load i32, i32* %12, align 4
  %53 = icmp uge i32 %52, 60
  br i1 %53, label %54, label %93

54:                                               ; preds = %51
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %12, align 4
  %57 = mul i32 %55, %56
  %58 = load i32, i32* %11, align 4
  %59 = udiv i32 %57, %58
  store i32 %59, i32* %16, align 4
  %60 = load i32, i32* %16, align 4
  %61 = zext i32 %60 to i64
  %62 = load i64, i64* %4, align 8
  %63 = icmp sgt i64 %61, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %54
  %65 = load i32, i32* %16, align 4
  %66 = zext i32 %65 to i64
  %67 = load i64, i64* %4, align 8
  %68 = sub nsw i64 %66, %67
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %9, align 4
  br label %76

70:                                               ; preds = %54
  %71 = load i64, i64* %4, align 8
  %72 = load i32, i32* %16, align 4
  %73 = zext i32 %72 to i64
  %74 = sub nsw i64 %71, %73
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %9, align 4
  br label %76

76:                                               ; preds = %70, %64
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* %8, align 4
  %79 = icmp ult i32 %77, %78
  br i1 %79, label %80, label %85

80:                                               ; preds = %76
  %81 = load i32, i32* %9, align 4
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* %12, align 4
  store i32 %82, i32* %15, align 4
  %83 = load i32, i32* %11, align 4
  store i32 %83, i32* %14, align 4
  %84 = load i32, i32* %10, align 4
  store i32 %84, i32* %13, align 4
  br label %85

85:                                               ; preds = %80, %76
  %86 = load i32, i32* %8, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %85
  br label %93

89:                                               ; preds = %85
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %12, align 4
  %92 = add i32 %91, -1
  store i32 %92, i32* %12, align 4
  br label %51

93:                                               ; preds = %88, %51
  %94 = load i32, i32* %8, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %93
  br label %101

97:                                               ; preds = %93
  br label %98

98:                                               ; preds = %97, %49, %40
  %99 = load i32, i32* %11, align 4
  %100 = add i32 %99, -1
  store i32 %100, i32* %11, align 4
  br label %29

101:                                              ; preds = %96, %29
  br label %190

102:                                              ; preds = %2
  store i32 800000, i32* %5, align 4
  store i32 400000, i32* %6, align 4
  store i32 33333, i32* %7, align 4
  store i32 -1, i32* %8, align 4
  store i32 16, i32* %10, align 4
  br label %103

103:                                              ; preds = %186, %102
  %104 = load i32, i32* %10, align 4
  %105 = icmp ugt i32 %104, 0
  br i1 %105, label %106, label %189

106:                                              ; preds = %103
  %107 = load i64, i64* %4, align 8
  %108 = load i32, i32* %10, align 4
  %109 = zext i32 %108 to i64
  %110 = mul nsw i64 %107, %109
  %111 = load i32, i32* %5, align 4
  %112 = zext i32 %111 to i64
  %113 = icmp sgt i64 %110, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %106
  br label %186

115:                                              ; preds = %106
  %116 = load i64, i64* %4, align 8
  %117 = load i32, i32* %10, align 4
  %118 = zext i32 %117 to i64
  %119 = mul nsw i64 %116, %118
  %120 = load i32, i32* %6, align 4
  %121 = zext i32 %120 to i64
  %122 = icmp slt i64 %119, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %115
  br label %186

124:                                              ; preds = %115
  store i32 1, i32* %11, align 4
  br label %125

125:                                              ; preds = %182, %124
  %126 = load i32, i32* %11, align 4
  %127 = icmp ult i32 %126, 33
  br i1 %127, label %128, label %185

128:                                              ; preds = %125
  store i32 17, i32* %12, align 4
  br label %129

129:                                              ; preds = %178, %128
  %130 = load i32, i32* %12, align 4
  %131 = icmp ult i32 %130, 257
  br i1 %131, label %132, label %181

132:                                              ; preds = %129
  %133 = load i32, i32* %7, align 4
  %134 = load i32, i32* %12, align 4
  %135 = mul i32 %133, %134
  %136 = load i32, i32* %11, align 4
  %137 = load i32, i32* %10, align 4
  %138 = mul i32 %136, %137
  %139 = udiv i32 %135, %138
  store i32 %139, i32* %16, align 4
  %140 = load i32, i32* %16, align 4
  %141 = zext i32 %140 to i64
  %142 = load i64, i64* %4, align 8
  %143 = icmp sgt i64 %141, %142
  br i1 %143, label %144, label %150

144:                                              ; preds = %132
  %145 = load i32, i32* %16, align 4
  %146 = zext i32 %145 to i64
  %147 = load i64, i64* %4, align 8
  %148 = sub nsw i64 %146, %147
  %149 = trunc i64 %148 to i32
  store i32 %149, i32* %9, align 4
  br label %156

150:                                              ; preds = %132
  %151 = load i64, i64* %4, align 8
  %152 = load i32, i32* %16, align 4
  %153 = zext i32 %152 to i64
  %154 = sub nsw i64 %151, %153
  %155 = trunc i64 %154 to i32
  store i32 %155, i32* %9, align 4
  br label %156

156:                                              ; preds = %150, %144
  %157 = load i32, i32* %9, align 4
  %158 = load i32, i32* %8, align 4
  %159 = icmp ult i32 %157, %158
  br i1 %159, label %160, label %168

160:                                              ; preds = %156
  %161 = load i32, i32* %9, align 4
  store i32 %161, i32* %8, align 4
  %162 = load i32, i32* %12, align 4
  %163 = sub i32 %162, 1
  store i32 %163, i32* %15, align 4
  %164 = load i32, i32* %11, align 4
  %165 = sub i32 %164, 1
  store i32 %165, i32* %14, align 4
  %166 = load i32, i32* %10, align 4
  %167 = sub i32 %166, 1
  store i32 %167, i32* %13, align 4
  br label %168

168:                                              ; preds = %160, %156
  %169 = load i64, i64* %4, align 8
  %170 = load i32, i32* %10, align 4
  %171 = zext i32 %170 to i64
  %172 = mul nsw i64 %169, %171
  %173 = icmp sge i64 %172, 600000
  br i1 %173, label %174, label %177

174:                                              ; preds = %168
  %175 = load i32, i32* %13, align 4
  %176 = or i32 %175, 128
  store i32 %176, i32* %13, align 4
  br label %177

177:                                              ; preds = %174, %168
  br label %178

178:                                              ; preds = %177
  %179 = load i32, i32* %12, align 4
  %180 = add i32 %179, 1
  store i32 %180, i32* %12, align 4
  br label %129

181:                                              ; preds = %129
  br label %182

182:                                              ; preds = %181
  %183 = load i32, i32* %11, align 4
  %184 = add i32 %183, 1
  store i32 %184, i32* %11, align 4
  br label %125

185:                                              ; preds = %125
  br label %186

186:                                              ; preds = %185, %123, %114
  %187 = load i32, i32* %10, align 4
  %188 = lshr i32 %187, 1
  store i32 %188, i32* %10, align 4
  br label %103

189:                                              ; preds = %103
  br label %190

190:                                              ; preds = %189, %101
  store i32 0, i32* %17, align 4
  br label %191

191:                                              ; preds = %301, %190
  %192 = load i32, i32* %17, align 4
  %193 = icmp sle i32 %192, 32
  br i1 %193, label %194, label %197

194:                                              ; preds = %191
  %195 = load i32, i32* %22, align 4
  %196 = icmp eq i32 %195, 0
  br label %197

197:                                              ; preds = %194, %191
  %198 = phi i1 [ false, %191 ], [ %196, %194 ]
  br i1 %198, label %199, label %304

199:                                              ; preds = %197
  %200 = load i32, i32* @DAC_INDEX, align 4
  %201 = load i32, i32* @MGA1064_PIX_CLK_CTL, align 4
  %202 = call i32 @WREG8(i32 %200, i32 %201)
  %203 = load i32, i32* @DAC_DATA, align 4
  %204 = call i32 @RREG8(i32 %203)
  store i32 %204, i32* %21, align 4
  %205 = load i32, i32* @MGA1064_PIX_CLK_CTL_CLK_DIS, align 4
  %206 = load i32, i32* %21, align 4
  %207 = or i32 %206, %205
  store i32 %207, i32* %21, align 4
  %208 = load i32, i32* @DAC_DATA, align 4
  %209 = load i32, i32* %21, align 4
  %210 = call i32 @WREG8(i32 %208, i32 %209)
  %211 = load i32, i32* @MGAREG_MEM_MISC_READ, align 4
  %212 = call i32 @RREG8(i32 %211)
  store i32 %212, i32* %21, align 4
  %213 = load i32, i32* %21, align 4
  %214 = or i32 %213, 12
  store i32 %214, i32* %21, align 4
  %215 = load i32, i32* @MGAREG_MEM_MISC_WRITE, align 4
  %216 = load i32, i32* %21, align 4
  %217 = call i32 @WREG8(i32 %215, i32 %216)
  %218 = load i32, i32* @DAC_INDEX, align 4
  %219 = load i32, i32* @MGA1064_PIX_CLK_CTL, align 4
  %220 = call i32 @WREG8(i32 %218, i32 %219)
  %221 = load i32, i32* @DAC_DATA, align 4
  %222 = call i32 @RREG8(i32 %221)
  store i32 %222, i32* %21, align 4
  %223 = load i32, i32* @MGA1064_PIX_CLK_CTL_CLK_POW_DOWN, align 4
  %224 = load i32, i32* %21, align 4
  %225 = or i32 %224, %223
  store i32 %225, i32* %21, align 4
  %226 = load i32, i32* @DAC_DATA, align 4
  %227 = load i32, i32* %21, align 4
  %228 = call i32 @WREG8(i32 %226, i32 %227)
  %229 = call i32 @udelay(i32 500)
  %230 = load i32, i32* @MGA1064_EH_PIX_PLLC_M, align 4
  %231 = load i32, i32* %14, align 4
  %232 = call i32 @WREG_DAC(i32 %230, i32 %231)
  %233 = load i32, i32* @MGA1064_EH_PIX_PLLC_N, align 4
  %234 = load i32, i32* %15, align 4
  %235 = call i32 @WREG_DAC(i32 %233, i32 %234)
  %236 = load i32, i32* @MGA1064_EH_PIX_PLLC_P, align 4
  %237 = load i32, i32* %13, align 4
  %238 = call i32 @WREG_DAC(i32 %236, i32 %237)
  %239 = call i32 @udelay(i32 500)
  %240 = load i32, i32* @DAC_INDEX, align 4
  %241 = load i32, i32* @MGA1064_PIX_CLK_CTL, align 4
  %242 = call i32 @WREG8(i32 %240, i32 %241)
  %243 = load i32, i32* @DAC_DATA, align 4
  %244 = call i32 @RREG8(i32 %243)
  store i32 %244, i32* %21, align 4
  %245 = load i32, i32* @MGA1064_PIX_CLK_CTL_SEL_MSK, align 4
  %246 = xor i32 %245, -1
  %247 = load i32, i32* %21, align 4
  %248 = and i32 %247, %246
  store i32 %248, i32* %21, align 4
  %249 = load i32, i32* @MGA1064_PIX_CLK_CTL_SEL_PLL, align 4
  %250 = load i32, i32* %21, align 4
  %251 = or i32 %250, %249
  store i32 %251, i32* %21, align 4
  %252 = load i32, i32* @DAC_DATA, align 4
  %253 = load i32, i32* %21, align 4
  %254 = call i32 @WREG8(i32 %252, i32 %253)
  %255 = load i32, i32* @DAC_INDEX, align 4
  %256 = load i32, i32* @MGA1064_PIX_CLK_CTL, align 4
  %257 = call i32 @WREG8(i32 %255, i32 %256)
  %258 = load i32, i32* @DAC_DATA, align 4
  %259 = call i32 @RREG8(i32 %258)
  store i32 %259, i32* %21, align 4
  %260 = load i32, i32* @MGA1064_PIX_CLK_CTL_CLK_DIS, align 4
  %261 = xor i32 %260, -1
  %262 = load i32, i32* %21, align 4
  %263 = and i32 %262, %261
  store i32 %263, i32* %21, align 4
  %264 = load i32, i32* @MGA1064_PIX_CLK_CTL_CLK_POW_DOWN, align 4
  %265 = xor i32 %264, -1
  %266 = load i32, i32* %21, align 4
  %267 = and i32 %266, %265
  store i32 %267, i32* %21, align 4
  %268 = load i32, i32* @DAC_DATA, align 4
  %269 = load i32, i32* %21, align 4
  %270 = call i32 @WREG8(i32 %268, i32 %269)
  %271 = load i32, i32* @MGAREG_VCOUNT, align 4
  %272 = call i32 @RREG8(i32 %271)
  store i32 %272, i32* %20, align 4
  store i32 0, i32* %18, align 4
  br label %273

273:                                              ; preds = %297, %199
  %274 = load i32, i32* %18, align 4
  %275 = icmp slt i32 %274, 30
  br i1 %275, label %276, label %279

276:                                              ; preds = %273
  %277 = load i32, i32* %22, align 4
  %278 = icmp eq i32 %277, 0
  br label %279

279:                                              ; preds = %276, %273
  %280 = phi i1 [ false, %273 ], [ %278, %276 ]
  br i1 %280, label %281, label %300

281:                                              ; preds = %279
  %282 = load i32, i32* @MGAREG_VCOUNT, align 4
  %283 = call i32 @RREG8(i32 %282)
  store i32 %283, i32* %19, align 4
  %284 = load i32, i32* %19, align 4
  %285 = load i32, i32* %20, align 4
  %286 = icmp slt i32 %284, %285
  br i1 %286, label %287, label %288

287:                                              ; preds = %281
  store i32 0, i32* %20, align 4
  br label %288

288:                                              ; preds = %287, %281
  %289 = load i32, i32* %19, align 4
  %290 = load i32, i32* %20, align 4
  %291 = sub nsw i32 %289, %290
  %292 = icmp sgt i32 %291, 2
  br i1 %292, label %293, label %294

293:                                              ; preds = %288
  store i32 1, i32* %22, align 4
  br label %296

294:                                              ; preds = %288
  %295 = call i32 @udelay(i32 5)
  br label %296

296:                                              ; preds = %294, %293
  br label %297

297:                                              ; preds = %296
  %298 = load i32, i32* %18, align 4
  %299 = add nsw i32 %298, 1
  store i32 %299, i32* %18, align 4
  br label %273

300:                                              ; preds = %279
  br label %301

301:                                              ; preds = %300
  %302 = load i32, i32* %17, align 4
  %303 = add nsw i32 %302, 1
  store i32 %303, i32* %17, align 4
  br label %191

304:                                              ; preds = %197
  ret i32 0
}

declare dso_local i32 @WREG8(i32, i32) #1

declare dso_local i32 @RREG8(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @WREG_DAC(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
