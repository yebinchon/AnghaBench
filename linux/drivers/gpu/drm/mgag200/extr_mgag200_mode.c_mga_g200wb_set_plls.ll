; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mgag200/extr_mgag200_mode.c_mga_g200wb_set_plls.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mgag200/extr_mgag200_mode.c_mga_g200wb_set_plls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mga_device = type { i64 }

@G200_EW3 = common dso_local global i64 0, align 8
@MGAREG_CRTC_INDEX = common dso_local global i32 0, align 4
@MGAREG_CRTC_DATA = common dso_local global i32 0, align 4
@DAC_INDEX = common dso_local global i32 0, align 4
@MGA1064_PIX_CLK_CTL = common dso_local global i32 0, align 4
@DAC_DATA = common dso_local global i32 0, align 4
@MGA1064_PIX_CLK_CTL_CLK_DIS = common dso_local global i32 0, align 4
@MGA1064_REMHEADCTL = common dso_local global i32 0, align 4
@MGA1064_REMHEADCTL_CLKDIS = common dso_local global i32 0, align 4
@MGAREG_MEM_MISC_READ = common dso_local global i32 0, align 4
@MGAREG_MEM_MISC_WRITE = common dso_local global i32 0, align 4
@MGA1064_PIX_CLK_CTL_CLK_POW_DOWN = common dso_local global i32 0, align 4
@MGA1064_VREF_CTL = common dso_local global i32 0, align 4
@MGA1064_WB_PIX_PLLC_N = common dso_local global i32 0, align 4
@MGA1064_WB_PIX_PLLC_M = common dso_local global i32 0, align 4
@MGA1064_WB_PIX_PLLC_P = common dso_local global i32 0, align 4
@MGA1064_PIX_CLK_CTL_SEL_MSK = common dso_local global i32 0, align 4
@MGA1064_PIX_CLK_CTL_SEL_PLL = common dso_local global i32 0, align 4
@MGA1064_REMHEADCTL_CLKSL_MSK = common dso_local global i32 0, align 4
@MGA1064_REMHEADCTL_CLKSL_PLL = common dso_local global i32 0, align 4
@MGAREG_SEQ_INDEX = common dso_local global i32 0, align 4
@MGAREG_SEQ_DATA = common dso_local global i32 0, align 4
@MGAREG_VCOUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mga_device*, i64)* @mga_g200wb_set_plls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mga_g200wb_set_plls(%struct.mga_device* %0, i64 %1) #0 {
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
  %23 = alloca i32, align 4
  store %struct.mga_device* %0, %struct.mga_device** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %22, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %15, align 4
  store i32 -1, i32* %8, align 4
  %24 = load %struct.mga_device*, %struct.mga_device** %3, align 8
  %25 = getelementptr inbounds %struct.mga_device, %struct.mga_device* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @G200_EW3, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %138

29:                                               ; preds = %2
  store i32 800000, i32* %5, align 4
  store i32 400000, i32* %6, align 4
  store i32 25000, i32* %7, align 4
  store i32 1, i32* %10, align 4
  br label %30

30:                                               ; preds = %134, %29
  %31 = load i32, i32* %10, align 4
  %32 = icmp ult i32 %31, 8
  br i1 %32, label %33, label %137

33:                                               ; preds = %30
  store i32 1, i32* %13, align 4
  br label %34

34:                                               ; preds = %130, %33
  %35 = load i32, i32* %13, align 4
  %36 = icmp ult i32 %35, 8
  br i1 %36, label %37, label %133

37:                                               ; preds = %34
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %13, align 4
  %40 = icmp ult i32 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  br label %130

42:                                               ; preds = %37
  %43 = load i64, i64* %4, align 8
  %44 = load i32, i32* %10, align 4
  %45 = zext i32 %44 to i64
  %46 = mul nsw i64 %43, %45
  %47 = load i32, i32* %13, align 4
  %48 = zext i32 %47 to i64
  %49 = mul nsw i64 %46, %48
  %50 = load i32, i32* %5, align 4
  %51 = zext i32 %50 to i64
  %52 = icmp sgt i64 %49, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %42
  br label %130

54:                                               ; preds = %42
  %55 = load i64, i64* %4, align 8
  %56 = load i32, i32* %10, align 4
  %57 = zext i32 %56 to i64
  %58 = mul nsw i64 %55, %57
  %59 = load i32, i32* %13, align 4
  %60 = zext i32 %59 to i64
  %61 = mul nsw i64 %58, %60
  %62 = load i32, i32* %6, align 4
  %63 = zext i32 %62 to i64
  %64 = icmp slt i64 %61, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %54
  br label %130

66:                                               ; preds = %54
  store i32 1, i32* %11, align 4
  br label %67

67:                                               ; preds = %126, %66
  %68 = load i32, i32* %11, align 4
  %69 = icmp ult i32 %68, 26
  br i1 %69, label %70, label %129

70:                                               ; preds = %67
  store i32 32, i32* %12, align 4
  br label %71

71:                                               ; preds = %122, %70
  %72 = load i32, i32* %12, align 4
  %73 = icmp ult i32 %72, 2048
  br i1 %73, label %74, label %125

74:                                               ; preds = %71
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* %12, align 4
  %77 = mul i32 %75, %76
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* %10, align 4
  %80 = mul i32 %78, %79
  %81 = load i32, i32* %13, align 4
  %82 = mul i32 %80, %81
  %83 = udiv i32 %77, %82
  store i32 %83, i32* %17, align 4
  %84 = load i32, i32* %17, align 4
  %85 = zext i32 %84 to i64
  %86 = load i64, i64* %4, align 8
  %87 = icmp sgt i64 %85, %86
  br i1 %87, label %88, label %94

88:                                               ; preds = %74
  %89 = load i32, i32* %17, align 4
  %90 = zext i32 %89 to i64
  %91 = load i64, i64* %4, align 8
  %92 = sub nsw i64 %90, %91
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %9, align 4
  br label %100

94:                                               ; preds = %74
  %95 = load i64, i64* %4, align 8
  %96 = load i32, i32* %17, align 4
  %97 = zext i32 %96 to i64
  %98 = sub nsw i64 %95, %97
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %9, align 4
  br label %100

100:                                              ; preds = %94, %88
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* %8, align 4
  %103 = icmp ult i32 %101, %102
  br i1 %103, label %104, label %121

104:                                              ; preds = %100
  %105 = load i32, i32* %9, align 4
  store i32 %105, i32* %8, align 4
  %106 = load i32, i32* %12, align 4
  %107 = and i32 %106, 256
  %108 = lshr i32 %107, 1
  %109 = load i32, i32* %11, align 4
  %110 = or i32 %108, %109
  store i32 %110, i32* %15, align 4
  %111 = load i32, i32* %12, align 4
  %112 = and i32 %111, 255
  store i32 %112, i32* %16, align 4
  %113 = load i32, i32* %12, align 4
  %114 = and i32 %113, 1536
  %115 = lshr i32 %114, 3
  %116 = load i32, i32* %13, align 4
  %117 = shl i32 %116, 3
  %118 = or i32 %115, %117
  %119 = load i32, i32* %10, align 4
  %120 = or i32 %118, %119
  store i32 %120, i32* %14, align 4
  br label %121

121:                                              ; preds = %104, %100
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* %12, align 4
  %124 = add i32 %123, 1
  store i32 %124, i32* %12, align 4
  br label %71

125:                                              ; preds = %71
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %11, align 4
  %128 = add i32 %127, 1
  store i32 %128, i32* %11, align 4
  br label %67

129:                                              ; preds = %67
  br label %130

130:                                              ; preds = %129, %65, %53, %41
  %131 = load i32, i32* %13, align 4
  %132 = add i32 %131, 1
  store i32 %132, i32* %13, align 4
  br label %34

133:                                              ; preds = %34
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %10, align 4
  %136 = add i32 %135, 1
  store i32 %136, i32* %10, align 4
  br label %30

137:                                              ; preds = %30
  br label %221

138:                                              ; preds = %2
  store i32 550000, i32* %5, align 4
  store i32 150000, i32* %6, align 4
  store i32 48000, i32* %7, align 4
  store i32 1, i32* %10, align 4
  br label %139

139:                                              ; preds = %217, %138
  %140 = load i32, i32* %10, align 4
  %141 = icmp ult i32 %140, 9
  br i1 %141, label %142, label %220

142:                                              ; preds = %139
  %143 = load i64, i64* %4, align 8
  %144 = load i32, i32* %10, align 4
  %145 = zext i32 %144 to i64
  %146 = mul nsw i64 %143, %145
  %147 = load i32, i32* %5, align 4
  %148 = zext i32 %147 to i64
  %149 = icmp sgt i64 %146, %148
  br i1 %149, label %150, label %151

150:                                              ; preds = %142
  br label %217

151:                                              ; preds = %142
  %152 = load i64, i64* %4, align 8
  %153 = load i32, i32* %10, align 4
  %154 = zext i32 %153 to i64
  %155 = mul nsw i64 %152, %154
  %156 = load i32, i32* %6, align 4
  %157 = zext i32 %156 to i64
  %158 = icmp slt i64 %155, %157
  br i1 %158, label %159, label %160

159:                                              ; preds = %151
  br label %217

160:                                              ; preds = %151
  store i32 1, i32* %11, align 4
  br label %161

161:                                              ; preds = %213, %160
  %162 = load i32, i32* %11, align 4
  %163 = icmp ult i32 %162, 17
  br i1 %163, label %164, label %216

164:                                              ; preds = %161
  store i32 1, i32* %12, align 4
  br label %165

165:                                              ; preds = %209, %164
  %166 = load i32, i32* %12, align 4
  %167 = icmp ult i32 %166, 151
  br i1 %167, label %168, label %212

168:                                              ; preds = %165
  %169 = load i32, i32* %7, align 4
  %170 = load i32, i32* %12, align 4
  %171 = mul i32 %169, %170
  %172 = load i32, i32* %11, align 4
  %173 = load i32, i32* %10, align 4
  %174 = mul i32 %172, %173
  %175 = udiv i32 %171, %174
  store i32 %175, i32* %17, align 4
  %176 = load i32, i32* %17, align 4
  %177 = zext i32 %176 to i64
  %178 = load i64, i64* %4, align 8
  %179 = icmp sgt i64 %177, %178
  br i1 %179, label %180, label %186

180:                                              ; preds = %168
  %181 = load i32, i32* %17, align 4
  %182 = zext i32 %181 to i64
  %183 = load i64, i64* %4, align 8
  %184 = sub nsw i64 %182, %183
  %185 = trunc i64 %184 to i32
  store i32 %185, i32* %9, align 4
  br label %192

186:                                              ; preds = %168
  %187 = load i64, i64* %4, align 8
  %188 = load i32, i32* %17, align 4
  %189 = zext i32 %188 to i64
  %190 = sub nsw i64 %187, %189
  %191 = trunc i64 %190 to i32
  store i32 %191, i32* %9, align 4
  br label %192

192:                                              ; preds = %186, %180
  %193 = load i32, i32* %9, align 4
  %194 = load i32, i32* %8, align 4
  %195 = icmp ult i32 %193, %194
  br i1 %195, label %196, label %208

196:                                              ; preds = %192
  %197 = load i32, i32* %9, align 4
  store i32 %197, i32* %8, align 4
  %198 = load i32, i32* %12, align 4
  %199 = sub i32 %198, 1
  store i32 %199, i32* %16, align 4
  %200 = load i32, i32* %11, align 4
  %201 = sub i32 %200, 1
  %202 = load i32, i32* %16, align 4
  %203 = lshr i32 %202, 1
  %204 = and i32 %203, 128
  %205 = or i32 %201, %204
  store i32 %205, i32* %15, align 4
  %206 = load i32, i32* %10, align 4
  %207 = sub i32 %206, 1
  store i32 %207, i32* %14, align 4
  br label %208

208:                                              ; preds = %196, %192
  br label %209

209:                                              ; preds = %208
  %210 = load i32, i32* %12, align 4
  %211 = add i32 %210, 1
  store i32 %211, i32* %12, align 4
  br label %165

212:                                              ; preds = %165
  br label %213

213:                                              ; preds = %212
  %214 = load i32, i32* %11, align 4
  %215 = add i32 %214, 1
  store i32 %215, i32* %11, align 4
  br label %161

216:                                              ; preds = %161
  br label %217

217:                                              ; preds = %216, %159, %150
  %218 = load i32, i32* %10, align 4
  %219 = add i32 %218, 1
  store i32 %219, i32* %10, align 4
  br label %139

220:                                              ; preds = %139
  br label %221

221:                                              ; preds = %220, %137
  store i32 0, i32* %18, align 4
  br label %222

222:                                              ; preds = %402, %221
  %223 = load i32, i32* %18, align 4
  %224 = icmp sle i32 %223, 32
  br i1 %224, label %225, label %228

225:                                              ; preds = %222
  %226 = load i32, i32* %22, align 4
  %227 = icmp eq i32 %226, 0
  br label %228

228:                                              ; preds = %225, %222
  %229 = phi i1 [ false, %222 ], [ %227, %225 ]
  br i1 %229, label %230, label %405

230:                                              ; preds = %228
  %231 = load i32, i32* %18, align 4
  %232 = icmp sgt i32 %231, 0
  br i1 %232, label %233, label %246

233:                                              ; preds = %230
  %234 = load i32, i32* @MGAREG_CRTC_INDEX, align 4
  %235 = call i32 @WREG8(i32 %234, i32 30)
  %236 = load i32, i32* @MGAREG_CRTC_DATA, align 4
  %237 = call i32 @RREG8(i32 %236)
  store i32 %237, i32* %23, align 4
  %238 = load i32, i32* %23, align 4
  %239 = icmp slt i32 %238, 255
  br i1 %239, label %240, label %245

240:                                              ; preds = %233
  %241 = load i32, i32* @MGAREG_CRTC_DATA, align 4
  %242 = load i32, i32* %23, align 4
  %243 = add nsw i32 %242, 1
  %244 = call i32 @WREG8(i32 %241, i32 %243)
  br label %245

245:                                              ; preds = %240, %233
  br label %246

246:                                              ; preds = %245, %230
  %247 = load i32, i32* @DAC_INDEX, align 4
  %248 = load i32, i32* @MGA1064_PIX_CLK_CTL, align 4
  %249 = call i32 @WREG8(i32 %247, i32 %248)
  %250 = load i32, i32* @DAC_DATA, align 4
  %251 = call i32 @RREG8(i32 %250)
  store i32 %251, i32* %23, align 4
  %252 = load i32, i32* @MGA1064_PIX_CLK_CTL_CLK_DIS, align 4
  %253 = load i32, i32* %23, align 4
  %254 = or i32 %253, %252
  store i32 %254, i32* %23, align 4
  %255 = load i32, i32* @DAC_DATA, align 4
  %256 = load i32, i32* %23, align 4
  %257 = call i32 @WREG8(i32 %255, i32 %256)
  %258 = load i32, i32* @DAC_INDEX, align 4
  %259 = load i32, i32* @MGA1064_REMHEADCTL, align 4
  %260 = call i32 @WREG8(i32 %258, i32 %259)
  %261 = load i32, i32* @DAC_DATA, align 4
  %262 = call i32 @RREG8(i32 %261)
  store i32 %262, i32* %23, align 4
  %263 = load i32, i32* @MGA1064_REMHEADCTL_CLKDIS, align 4
  %264 = load i32, i32* %23, align 4
  %265 = or i32 %264, %263
  store i32 %265, i32* %23, align 4
  %266 = load i32, i32* @DAC_DATA, align 4
  %267 = load i32, i32* %23, align 4
  %268 = call i32 @WREG8(i32 %266, i32 %267)
  %269 = load i32, i32* @MGAREG_MEM_MISC_READ, align 4
  %270 = call i32 @RREG8(i32 %269)
  store i32 %270, i32* %23, align 4
  %271 = load i32, i32* %23, align 4
  %272 = or i32 %271, 12
  store i32 %272, i32* %23, align 4
  %273 = load i32, i32* @MGAREG_MEM_MISC_WRITE, align 4
  %274 = load i32, i32* %23, align 4
  %275 = call i32 @WREG8(i32 %273, i32 %274)
  %276 = load i32, i32* @DAC_INDEX, align 4
  %277 = load i32, i32* @MGA1064_PIX_CLK_CTL, align 4
  %278 = call i32 @WREG8(i32 %276, i32 %277)
  %279 = load i32, i32* @DAC_DATA, align 4
  %280 = call i32 @RREG8(i32 %279)
  store i32 %280, i32* %23, align 4
  %281 = load i32, i32* @MGA1064_PIX_CLK_CTL_CLK_POW_DOWN, align 4
  %282 = or i32 %281, 128
  %283 = load i32, i32* %23, align 4
  %284 = or i32 %283, %282
  store i32 %284, i32* %23, align 4
  %285 = load i32, i32* @DAC_DATA, align 4
  %286 = load i32, i32* %23, align 4
  %287 = call i32 @WREG8(i32 %285, i32 %286)
  %288 = call i32 @udelay(i32 500)
  %289 = load i32, i32* @DAC_INDEX, align 4
  %290 = load i32, i32* @MGA1064_VREF_CTL, align 4
  %291 = call i32 @WREG8(i32 %289, i32 %290)
  %292 = load i32, i32* @DAC_DATA, align 4
  %293 = call i32 @RREG8(i32 %292)
  store i32 %293, i32* %23, align 4
  %294 = load i32, i32* %23, align 4
  %295 = and i32 %294, -5
  store i32 %295, i32* %23, align 4
  %296 = load i32, i32* @DAC_DATA, align 4
  %297 = load i32, i32* %23, align 4
  %298 = call i32 @WREG8(i32 %296, i32 %297)
  %299 = call i32 @udelay(i32 50)
  %300 = load i32, i32* @MGA1064_WB_PIX_PLLC_N, align 4
  %301 = load i32, i32* %16, align 4
  %302 = call i32 @WREG_DAC(i32 %300, i32 %301)
  %303 = load i32, i32* @MGA1064_WB_PIX_PLLC_M, align 4
  %304 = load i32, i32* %15, align 4
  %305 = call i32 @WREG_DAC(i32 %303, i32 %304)
  %306 = load i32, i32* @MGA1064_WB_PIX_PLLC_P, align 4
  %307 = load i32, i32* %14, align 4
  %308 = call i32 @WREG_DAC(i32 %306, i32 %307)
  %309 = call i32 @udelay(i32 50)
  %310 = load i32, i32* @DAC_INDEX, align 4
  %311 = load i32, i32* @MGA1064_VREF_CTL, align 4
  %312 = call i32 @WREG8(i32 %310, i32 %311)
  %313 = load i32, i32* @DAC_DATA, align 4
  %314 = call i32 @RREG8(i32 %313)
  store i32 %314, i32* %23, align 4
  %315 = load i32, i32* %23, align 4
  %316 = or i32 %315, 4
  store i32 %316, i32* %23, align 4
  %317 = load i32, i32* @MGA1064_VREF_CTL, align 4
  %318 = load i32, i32* %23, align 4
  %319 = call i32 @WREG_DAC(i32 %317, i32 %318)
  %320 = call i32 @udelay(i32 500)
  %321 = load i32, i32* @DAC_INDEX, align 4
  %322 = load i32, i32* @MGA1064_PIX_CLK_CTL, align 4
  %323 = call i32 @WREG8(i32 %321, i32 %322)
  %324 = load i32, i32* @DAC_DATA, align 4
  %325 = call i32 @RREG8(i32 %324)
  store i32 %325, i32* %23, align 4
  %326 = load i32, i32* @MGA1064_PIX_CLK_CTL_SEL_MSK, align 4
  %327 = xor i32 %326, -1
  %328 = load i32, i32* %23, align 4
  %329 = and i32 %328, %327
  store i32 %329, i32* %23, align 4
  %330 = load i32, i32* @MGA1064_PIX_CLK_CTL_SEL_PLL, align 4
  %331 = load i32, i32* %23, align 4
  %332 = or i32 %331, %330
  store i32 %332, i32* %23, align 4
  %333 = load i32, i32* @DAC_DATA, align 4
  %334 = load i32, i32* %23, align 4
  %335 = call i32 @WREG8(i32 %333, i32 %334)
  %336 = load i32, i32* @DAC_INDEX, align 4
  %337 = load i32, i32* @MGA1064_REMHEADCTL, align 4
  %338 = call i32 @WREG8(i32 %336, i32 %337)
  %339 = load i32, i32* @DAC_DATA, align 4
  %340 = call i32 @RREG8(i32 %339)
  store i32 %340, i32* %23, align 4
  %341 = load i32, i32* @MGA1064_REMHEADCTL_CLKSL_MSK, align 4
  %342 = xor i32 %341, -1
  %343 = load i32, i32* %23, align 4
  %344 = and i32 %343, %342
  store i32 %344, i32* %23, align 4
  %345 = load i32, i32* @MGA1064_REMHEADCTL_CLKSL_PLL, align 4
  %346 = load i32, i32* %23, align 4
  %347 = or i32 %346, %345
  store i32 %347, i32* %23, align 4
  %348 = load i32, i32* @DAC_DATA, align 4
  %349 = load i32, i32* %23, align 4
  %350 = call i32 @WREG8(i32 %348, i32 %349)
  %351 = load i32, i32* @MGAREG_SEQ_INDEX, align 4
  %352 = call i32 @WREG8(i32 %351, i32 1)
  %353 = load i32, i32* @MGAREG_SEQ_DATA, align 4
  %354 = call i32 @RREG8(i32 %353)
  store i32 %354, i32* %23, align 4
  %355 = load i32, i32* %23, align 4
  %356 = and i32 %355, -9
  store i32 %356, i32* %23, align 4
  %357 = load i32, i32* @MGAREG_SEQ_DATA, align 4
  %358 = load i32, i32* %23, align 4
  %359 = call i32 @WREG8(i32 %357, i32 %358)
  %360 = load i32, i32* @DAC_INDEX, align 4
  %361 = load i32, i32* @MGA1064_PIX_CLK_CTL, align 4
  %362 = call i32 @WREG8(i32 %360, i32 %361)
  %363 = load i32, i32* @DAC_DATA, align 4
  %364 = call i32 @RREG8(i32 %363)
  store i32 %364, i32* %23, align 4
  %365 = load i32, i32* @MGA1064_PIX_CLK_CTL_CLK_DIS, align 4
  %366 = xor i32 %365, -1
  %367 = load i32, i32* %23, align 4
  %368 = and i32 %367, %366
  store i32 %368, i32* %23, align 4
  %369 = load i32, i32* @DAC_DATA, align 4
  %370 = load i32, i32* %23, align 4
  %371 = call i32 @WREG8(i32 %369, i32 %370)
  %372 = load i32, i32* @MGAREG_VCOUNT, align 4
  %373 = call i32 @RREG8(i32 %372)
  store i32 %373, i32* %21, align 4
  store i32 0, i32* %19, align 4
  br label %374

374:                                              ; preds = %398, %246
  %375 = load i32, i32* %19, align 4
  %376 = icmp slt i32 %375, 30
  br i1 %376, label %377, label %380

377:                                              ; preds = %374
  %378 = load i32, i32* %22, align 4
  %379 = icmp eq i32 %378, 0
  br label %380

380:                                              ; preds = %377, %374
  %381 = phi i1 [ false, %374 ], [ %379, %377 ]
  br i1 %381, label %382, label %401

382:                                              ; preds = %380
  %383 = load i32, i32* @MGAREG_VCOUNT, align 4
  %384 = call i32 @RREG8(i32 %383)
  store i32 %384, i32* %20, align 4
  %385 = load i32, i32* %20, align 4
  %386 = load i32, i32* %21, align 4
  %387 = icmp slt i32 %385, %386
  br i1 %387, label %388, label %389

388:                                              ; preds = %382
  store i32 0, i32* %21, align 4
  br label %389

389:                                              ; preds = %388, %382
  %390 = load i32, i32* %20, align 4
  %391 = load i32, i32* %21, align 4
  %392 = sub nsw i32 %390, %391
  %393 = icmp sgt i32 %392, 2
  br i1 %393, label %394, label %395

394:                                              ; preds = %389
  store i32 1, i32* %22, align 4
  br label %397

395:                                              ; preds = %389
  %396 = call i32 @udelay(i32 5)
  br label %397

397:                                              ; preds = %395, %394
  br label %398

398:                                              ; preds = %397
  %399 = load i32, i32* %19, align 4
  %400 = add nsw i32 %399, 1
  store i32 %400, i32* %19, align 4
  br label %374

401:                                              ; preds = %380
  br label %402

402:                                              ; preds = %401
  %403 = load i32, i32* %18, align 4
  %404 = add nsw i32 %403, 1
  store i32 %404, i32* %18, align 4
  br label %222

405:                                              ; preds = %228
  %406 = load i32, i32* @DAC_INDEX, align 4
  %407 = load i32, i32* @MGA1064_REMHEADCTL, align 4
  %408 = call i32 @WREG8(i32 %406, i32 %407)
  %409 = load i32, i32* @DAC_DATA, align 4
  %410 = call i32 @RREG8(i32 %409)
  store i32 %410, i32* %23, align 4
  %411 = load i32, i32* @MGA1064_REMHEADCTL_CLKDIS, align 4
  %412 = xor i32 %411, -1
  %413 = load i32, i32* %23, align 4
  %414 = and i32 %413, %412
  store i32 %414, i32* %23, align 4
  %415 = load i32, i32* @MGA1064_REMHEADCTL, align 4
  %416 = load i32, i32* %23, align 4
  %417 = call i32 @WREG_DAC(i32 %415, i32 %416)
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
