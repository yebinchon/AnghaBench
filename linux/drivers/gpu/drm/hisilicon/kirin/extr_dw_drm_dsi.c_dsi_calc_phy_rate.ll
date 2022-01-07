; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/hisilicon/kirin/extr_dw_drm_dsi.c_dsi_calc_phy_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/hisilicon/kirin/extr_dw_drm_dsi.c_dsi_calc_phy_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32, i32 }
%struct.mipi_phy_params = type { i32, i64, i32, i32, i64, i64, i32, i32, i32 }

@PHY_REF_CLK_PERIOD_PS = common dso_local global i64 0, align 8
@dphy_range_info = common dso_local global %struct.TYPE_3__* null, align 8
@.str = private unnamed_addr constant [20 x i8] c"%dkHz out of range\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, %struct.mipi_phy_params*)* @dsi_calc_phy_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @dsi_calc_phy_rate(i64 %0, %struct.mipi_phy_params* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.mipi_phy_params*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store %struct.mipi_phy_params* %1, %struct.mipi_phy_params** %5, align 8
  %17 = load i64, i64* @PHY_REF_CLK_PERIOD_PS, align 8
  store i64 %17, i64* %6, align 8
  %18 = load i64, i64* %4, align 8
  store i64 %18, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i64 1, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  store i64 1, i64* %12, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  store i64 0, i64* %15, align 8
  br label %19

19:                                               ; preds = %305, %2
  %20 = load i64, i64* %7, align 8
  store i64 %20, i64* %15, align 8
  store i64 0, i64* %8, align 8
  br label %21

21:                                               ; preds = %44, %19
  %22 = load i64, i64* %8, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** @dphy_range_info, align 8
  %24 = call i64 @ARRAY_SIZE(%struct.TYPE_3__* %23)
  %25 = icmp ult i64 %22, %24
  br i1 %25, label %26, label %47

26:                                               ; preds = %21
  %27 = load i64, i64* %15, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** @dphy_range_info, align 8
  %29 = load i64, i64* %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp uge i64 %27, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %26
  %35 = load i64, i64* %15, align 8
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** @dphy_range_info, align 8
  %37 = load i64, i64* %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ule i64 %35, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  br label %47

43:                                               ; preds = %34, %26
  br label %44

44:                                               ; preds = %43
  %45 = load i64, i64* %8, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %8, align 8
  br label %21

47:                                               ; preds = %42, %21
  %48 = load i64, i64* %8, align 8
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** @dphy_range_info, align 8
  %50 = call i64 @ARRAY_SIZE(%struct.TYPE_3__* %49)
  %51 = icmp eq i64 %48, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load i64, i64* %15, align 8
  %54 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i64 %53)
  store i64 0, i64* %3, align 8
  br label %308

55:                                               ; preds = %47
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** @dphy_range_info, align 8
  %57 = load i64, i64* %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.mipi_phy_params*, %struct.mipi_phy_params** %5, align 8
  %62 = getelementptr inbounds %struct.mipi_phy_params, %struct.mipi_phy_params* %61, i32 0, i32 8
  store i32 %60, i32* %62, align 8
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** @dphy_range_info, align 8
  %64 = load i64, i64* %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.mipi_phy_params*, %struct.mipi_phy_params** %5, align 8
  %69 = getelementptr inbounds %struct.mipi_phy_params, %struct.mipi_phy_params* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  %70 = load %struct.mipi_phy_params*, %struct.mipi_phy_params** %5, align 8
  %71 = getelementptr inbounds %struct.mipi_phy_params, %struct.mipi_phy_params* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp sle i32 %72, 7
  br i1 %73, label %74, label %86

74:                                               ; preds = %55
  %75 = load %struct.mipi_phy_params*, %struct.mipi_phy_params** %5, align 8
  %76 = getelementptr inbounds %struct.mipi_phy_params, %struct.mipi_phy_params* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp sge i32 %77, 4
  br i1 %78, label %79, label %86

79:                                               ; preds = %74
  %80 = load %struct.mipi_phy_params*, %struct.mipi_phy_params** %5, align 8
  %81 = getelementptr inbounds %struct.mipi_phy_params, %struct.mipi_phy_params* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = sub nsw i32 7, %82
  %84 = ashr i32 16, %83
  %85 = sext i32 %84 to i64
  store i64 %85, i64* %9, align 8
  br label %86

86:                                               ; preds = %79, %74, %55
  %87 = load i64, i64* %15, align 8
  %88 = load i64, i64* %9, align 8
  %89 = mul i64 %87, %88
  %90 = load i64, i64* %6, align 8
  %91 = mul i64 %89, %90
  store i64 %91, i64* %16, align 8
  %92 = load i64, i64* %16, align 8
  %93 = udiv i64 %92, 1000000000
  store i64 %93, i64* %14, align 8
  %94 = load i64, i64* %16, align 8
  %95 = urem i64 %94, 1000000000
  %96 = udiv i64 %95, 100000000
  store i64 %96, i64* %13, align 8
  %97 = load i64, i64* %14, align 8
  %98 = urem i64 %97, 2
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %124

100:                                              ; preds = %86
  %101 = load i64, i64* %13, align 8
  %102 = mul i64 %101, 6
  %103 = icmp uge i64 %102, 50
  br i1 %103, label %104, label %109

104:                                              ; preds = %100
  store i64 2, i64* %11, align 8
  %105 = load i64, i64* %14, align 8
  %106 = add i64 %105, 1
  %107 = load i64, i64* %11, align 8
  %108 = mul i64 %106, %107
  store i64 %108, i64* %10, align 8
  br label %123

109:                                              ; preds = %100
  %110 = load i64, i64* %13, align 8
  %111 = mul i64 %110, 6
  %112 = icmp uge i64 %111, 30
  br i1 %112, label %113, label %118

113:                                              ; preds = %109
  store i64 3, i64* %11, align 8
  %114 = load i64, i64* %14, align 8
  %115 = load i64, i64* %11, align 8
  %116 = mul i64 %114, %115
  %117 = add i64 %116, 2
  store i64 %117, i64* %10, align 8
  br label %122

118:                                              ; preds = %109
  store i64 1, i64* %11, align 8
  %119 = load i64, i64* %14, align 8
  %120 = load i64, i64* %11, align 8
  %121 = mul i64 %119, %120
  store i64 %121, i64* %10, align 8
  br label %122

122:                                              ; preds = %118, %113
  br label %123

123:                                              ; preds = %122, %104
  br label %158

124:                                              ; preds = %86
  %125 = load i64, i64* %13, align 8
  %126 = mul i64 %125, 6
  %127 = icmp uge i64 %126, 50
  br i1 %127, label %128, label %133

128:                                              ; preds = %124
  store i64 1, i64* %11, align 8
  %129 = load i64, i64* %14, align 8
  %130 = add i64 %129, 1
  %131 = load i64, i64* %11, align 8
  %132 = mul i64 %130, %131
  store i64 %132, i64* %10, align 8
  br label %157

133:                                              ; preds = %124
  %134 = load i64, i64* %13, align 8
  %135 = mul i64 %134, 6
  %136 = icmp uge i64 %135, 30
  br i1 %136, label %137, label %142

137:                                              ; preds = %133
  store i64 1, i64* %11, align 8
  %138 = load i64, i64* %14, align 8
  %139 = add i64 %138, 1
  %140 = load i64, i64* %11, align 8
  %141 = mul i64 %139, %140
  store i64 %141, i64* %10, align 8
  br label %156

142:                                              ; preds = %133
  %143 = load i64, i64* %13, align 8
  %144 = mul i64 %143, 6
  %145 = icmp uge i64 %144, 10
  br i1 %145, label %146, label %151

146:                                              ; preds = %142
  store i64 3, i64* %11, align 8
  %147 = load i64, i64* %14, align 8
  %148 = load i64, i64* %11, align 8
  %149 = mul i64 %147, %148
  %150 = add i64 %149, 1
  store i64 %150, i64* %10, align 8
  br label %155

151:                                              ; preds = %142
  store i64 2, i64* %11, align 8
  %152 = load i64, i64* %14, align 8
  %153 = load i64, i64* %11, align 8
  %154 = mul i64 %152, %153
  store i64 %154, i64* %10, align 8
  br label %155

155:                                              ; preds = %151, %146
  br label %156

156:                                              ; preds = %155, %137
  br label %157

157:                                              ; preds = %156, %128
  br label %158

158:                                              ; preds = %157, %123
  %159 = load i64, i64* %11, align 8
  %160 = icmp eq i64 %159, 1
  br i1 %160, label %161, label %166

161:                                              ; preds = %158
  %162 = load %struct.mipi_phy_params*, %struct.mipi_phy_params** %5, align 8
  %163 = getelementptr inbounds %struct.mipi_phy_params, %struct.mipi_phy_params* %162, i32 0, i32 1
  store i64 0, i64* %163, align 8
  %164 = load %struct.mipi_phy_params*, %struct.mipi_phy_params** %5, align 8
  %165 = getelementptr inbounds %struct.mipi_phy_params, %struct.mipi_phy_params* %164, i32 0, i32 2
  store i32 1, i32* %165, align 8
  br label %172

166:                                              ; preds = %158
  %167 = load i64, i64* %11, align 8
  %168 = load %struct.mipi_phy_params*, %struct.mipi_phy_params** %5, align 8
  %169 = getelementptr inbounds %struct.mipi_phy_params, %struct.mipi_phy_params* %168, i32 0, i32 1
  store i64 %167, i64* %169, align 8
  %170 = load %struct.mipi_phy_params*, %struct.mipi_phy_params** %5, align 8
  %171 = getelementptr inbounds %struct.mipi_phy_params, %struct.mipi_phy_params* %170, i32 0, i32 2
  store i32 0, i32* %171, align 8
  br label %172

172:                                              ; preds = %166, %161
  %173 = load %struct.mipi_phy_params*, %struct.mipi_phy_params** %5, align 8
  %174 = getelementptr inbounds %struct.mipi_phy_params, %struct.mipi_phy_params* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 4
  %176 = icmp sle i32 %175, 7
  br i1 %176, label %177, label %189

177:                                              ; preds = %172
  %178 = load %struct.mipi_phy_params*, %struct.mipi_phy_params** %5, align 8
  %179 = getelementptr inbounds %struct.mipi_phy_params, %struct.mipi_phy_params* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 4
  %181 = icmp sge i32 %180, 4
  br i1 %181, label %182, label %189

182:                                              ; preds = %177
  %183 = load %struct.mipi_phy_params*, %struct.mipi_phy_params** %5, align 8
  %184 = getelementptr inbounds %struct.mipi_phy_params, %struct.mipi_phy_params* %183, i32 0, i32 3
  %185 = load i32, i32* %184, align 4
  %186 = sub nsw i32 7, %185
  %187 = ashr i32 16, %186
  %188 = sext i32 %187 to i64
  store i64 %188, i64* %12, align 8
  br label %189

189:                                              ; preds = %182, %177, %172
  %190 = load i64, i64* %10, align 8
  %191 = icmp eq i64 %190, 2
  br i1 %191, label %192, label %201

192:                                              ; preds = %189
  %193 = load %struct.mipi_phy_params*, %struct.mipi_phy_params** %5, align 8
  %194 = getelementptr inbounds %struct.mipi_phy_params, %struct.mipi_phy_params* %193, i32 0, i32 4
  store i64 0, i64* %194, align 8
  %195 = load %struct.mipi_phy_params*, %struct.mipi_phy_params** %5, align 8
  %196 = getelementptr inbounds %struct.mipi_phy_params, %struct.mipi_phy_params* %195, i32 0, i32 5
  store i64 0, i64* %196, align 8
  %197 = load %struct.mipi_phy_params*, %struct.mipi_phy_params** %5, align 8
  %198 = getelementptr inbounds %struct.mipi_phy_params, %struct.mipi_phy_params* %197, i32 0, i32 6
  store i32 0, i32* %198, align 8
  %199 = load %struct.mipi_phy_params*, %struct.mipi_phy_params** %5, align 8
  %200 = getelementptr inbounds %struct.mipi_phy_params, %struct.mipi_phy_params* %199, i32 0, i32 7
  store i32 1, i32* %200, align 4
  br label %289

201:                                              ; preds = %189
  %202 = load i64, i64* %10, align 8
  %203 = load i64, i64* %12, align 8
  %204 = mul i64 4, %203
  %205 = icmp uge i64 %202, %204
  br i1 %205, label %206, label %224

206:                                              ; preds = %201
  %207 = load i64, i64* %10, align 8
  %208 = load i64, i64* %12, align 8
  %209 = mul i64 8, %208
  %210 = icmp ule i64 %207, %209
  br i1 %210, label %211, label %224

211:                                              ; preds = %206
  %212 = load i64, i64* %10, align 8
  %213 = load i64, i64* %12, align 8
  %214 = mul i64 2, %213
  %215 = udiv i64 %212, %214
  %216 = load %struct.mipi_phy_params*, %struct.mipi_phy_params** %5, align 8
  %217 = getelementptr inbounds %struct.mipi_phy_params, %struct.mipi_phy_params* %216, i32 0, i32 4
  store i64 %215, i64* %217, align 8
  %218 = load %struct.mipi_phy_params*, %struct.mipi_phy_params** %5, align 8
  %219 = getelementptr inbounds %struct.mipi_phy_params, %struct.mipi_phy_params* %218, i32 0, i32 5
  store i64 0, i64* %219, align 8
  %220 = load %struct.mipi_phy_params*, %struct.mipi_phy_params** %5, align 8
  %221 = getelementptr inbounds %struct.mipi_phy_params, %struct.mipi_phy_params* %220, i32 0, i32 6
  store i32 1, i32* %221, align 8
  %222 = load %struct.mipi_phy_params*, %struct.mipi_phy_params** %5, align 8
  %223 = getelementptr inbounds %struct.mipi_phy_params, %struct.mipi_phy_params* %222, i32 0, i32 7
  store i32 0, i32* %223, align 4
  br label %288

224:                                              ; preds = %206, %201
  %225 = load i64, i64* %10, align 8
  %226 = load i64, i64* %12, align 8
  %227 = mul i64 10, %226
  %228 = icmp uge i64 %225, %227
  br i1 %228, label %229, label %278

229:                                              ; preds = %224
  %230 = load i64, i64* %10, align 8
  %231 = load i64, i64* %12, align 8
  %232 = mul i64 300, %231
  %233 = icmp ule i64 %230, %232
  br i1 %233, label %234, label %278

234:                                              ; preds = %229
  %235 = load i64, i64* %10, align 8
  %236 = load i64, i64* %12, align 8
  %237 = mul i64 2, %236
  %238 = udiv i64 %235, %237
  %239 = urem i64 %238, 2
  %240 = icmp eq i64 %239, 0
  br i1 %240, label %241, label %258

241:                                              ; preds = %234
  %242 = load i64, i64* %10, align 8
  %243 = load i64, i64* %12, align 8
  %244 = mul i64 2, %243
  %245 = udiv i64 %242, %244
  %246 = udiv i64 %245, 2
  %247 = sub i64 %246, 1
  %248 = load %struct.mipi_phy_params*, %struct.mipi_phy_params** %5, align 8
  %249 = getelementptr inbounds %struct.mipi_phy_params, %struct.mipi_phy_params* %248, i32 0, i32 4
  store i64 %247, i64* %249, align 8
  %250 = load i64, i64* %10, align 8
  %251 = load i64, i64* %12, align 8
  %252 = mul i64 2, %251
  %253 = udiv i64 %250, %252
  %254 = urem i64 %253, 2
  %255 = add i64 %254, 2
  %256 = load %struct.mipi_phy_params*, %struct.mipi_phy_params** %5, align 8
  %257 = getelementptr inbounds %struct.mipi_phy_params, %struct.mipi_phy_params* %256, i32 0, i32 5
  store i64 %255, i64* %257, align 8
  br label %273

258:                                              ; preds = %234
  %259 = load i64, i64* %10, align 8
  %260 = load i64, i64* %12, align 8
  %261 = mul i64 2, %260
  %262 = udiv i64 %259, %261
  %263 = udiv i64 %262, 2
  %264 = load %struct.mipi_phy_params*, %struct.mipi_phy_params** %5, align 8
  %265 = getelementptr inbounds %struct.mipi_phy_params, %struct.mipi_phy_params* %264, i32 0, i32 4
  store i64 %263, i64* %265, align 8
  %266 = load i64, i64* %10, align 8
  %267 = load i64, i64* %12, align 8
  %268 = mul i64 2, %267
  %269 = udiv i64 %266, %268
  %270 = urem i64 %269, 2
  %271 = load %struct.mipi_phy_params*, %struct.mipi_phy_params** %5, align 8
  %272 = getelementptr inbounds %struct.mipi_phy_params, %struct.mipi_phy_params* %271, i32 0, i32 5
  store i64 %270, i64* %272, align 8
  br label %273

273:                                              ; preds = %258, %241
  %274 = load %struct.mipi_phy_params*, %struct.mipi_phy_params** %5, align 8
  %275 = getelementptr inbounds %struct.mipi_phy_params, %struct.mipi_phy_params* %274, i32 0, i32 6
  store i32 0, i32* %275, align 8
  %276 = load %struct.mipi_phy_params*, %struct.mipi_phy_params** %5, align 8
  %277 = getelementptr inbounds %struct.mipi_phy_params, %struct.mipi_phy_params* %276, i32 0, i32 7
  store i32 0, i32* %277, align 4
  br label %287

278:                                              ; preds = %229, %224
  %279 = load %struct.mipi_phy_params*, %struct.mipi_phy_params** %5, align 8
  %280 = getelementptr inbounds %struct.mipi_phy_params, %struct.mipi_phy_params* %279, i32 0, i32 4
  store i64 0, i64* %280, align 8
  %281 = load %struct.mipi_phy_params*, %struct.mipi_phy_params** %5, align 8
  %282 = getelementptr inbounds %struct.mipi_phy_params, %struct.mipi_phy_params* %281, i32 0, i32 5
  store i64 0, i64* %282, align 8
  %283 = load %struct.mipi_phy_params*, %struct.mipi_phy_params** %5, align 8
  %284 = getelementptr inbounds %struct.mipi_phy_params, %struct.mipi_phy_params* %283, i32 0, i32 6
  store i32 0, i32* %284, align 8
  %285 = load %struct.mipi_phy_params*, %struct.mipi_phy_params** %5, align 8
  %286 = getelementptr inbounds %struct.mipi_phy_params, %struct.mipi_phy_params* %285, i32 0, i32 7
  store i32 1, i32* %286, align 4
  br label %287

287:                                              ; preds = %278, %273
  br label %288

288:                                              ; preds = %287, %211
  br label %289

289:                                              ; preds = %288, %192
  %290 = load i64, i64* %10, align 8
  %291 = mul i64 1000000000, %290
  %292 = load i64, i64* %6, align 8
  %293 = load i64, i64* %11, align 8
  %294 = mul i64 %292, %293
  %295 = load i64, i64* %9, align 8
  %296 = mul i64 %294, %295
  %297 = udiv i64 %291, %296
  store i64 %297, i64* %15, align 8
  %298 = load i64, i64* %15, align 8
  %299 = load i64, i64* %4, align 8
  %300 = icmp uge i64 %298, %299
  br i1 %300, label %301, label %302

301:                                              ; preds = %289
  br label %306

302:                                              ; preds = %289
  %303 = load i64, i64* %7, align 8
  %304 = add i64 %303, 10
  store i64 %304, i64* %7, align 8
  br label %305

305:                                              ; preds = %302
  br i1 true, label %19, label %306

306:                                              ; preds = %305, %301
  %307 = load i64, i64* %15, align 8
  store i64 %307, i64* %3, align 8
  br label %308

308:                                              ; preds = %306, %52
  %309 = load i64, i64* %3, align 8
  ret i64 %309
}

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @DRM_ERROR(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
