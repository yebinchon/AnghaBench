; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/analogix/extr_analogix_dp_reg.c_analogix_dp_set_analog_power_down.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/analogix/extr_analogix_dp_reg.c_analogix_dp_set_analog_power_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.analogix_dp_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ANALOGIX_DP_PHY_PD = common dso_local global i32 0, align 4
@ANALOGIX_DP_PD = common dso_local global i32 0, align 4
@RK_AUX_PD = common dso_local global i32 0, align 4
@AUX_PD = common dso_local global i32 0, align 4
@CH0_PD = common dso_local global i32 0, align 4
@CH1_PD = common dso_local global i32 0, align 4
@CH2_PD = common dso_local global i32 0, align 4
@CH3_PD = common dso_local global i32 0, align 4
@DP_INC_BG = common dso_local global i32 0, align 4
@DP_PHY_PD = common dso_local global i32 0, align 4
@DP_ALL_PD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @analogix_dp_set_analog_power_down(%struct.analogix_dp_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.analogix_dp_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.analogix_dp_device* %0, %struct.analogix_dp_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* @ANALOGIX_DP_PHY_PD, align 4
  store i32 %10, i32* %8, align 4
  %11 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %4, align 8
  %12 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = icmp ne %struct.TYPE_2__* %13, null
  br i1 %14, label %15, label %25

15:                                               ; preds = %3
  %16 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %4, align 8
  %17 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @is_rockchip(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %15
  %24 = load i32, i32* @ANALOGIX_DP_PD, align 4
  store i32 %24, i32* %8, align 4
  br label %25

25:                                               ; preds = %23, %15, %3
  %26 = load i32, i32* %5, align 4
  switch i32 %26, label %277 [
    i32 133, label %27
    i32 132, label %70
    i32 131, label %97
    i32 130, label %124
    i32 129, label %151
    i32 134, label %178
    i32 128, label %236
  ]

27:                                               ; preds = %25
  %28 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %4, align 8
  %29 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = icmp ne %struct.TYPE_2__* %30, null
  br i1 %31, label %32, label %42

32:                                               ; preds = %27
  %33 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %4, align 8
  %34 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @is_rockchip(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %32
  %41 = load i32, i32* @RK_AUX_PD, align 4
  store i32 %41, i32* %9, align 4
  br label %44

42:                                               ; preds = %32, %27
  %43 = load i32, i32* @AUX_PD, align 4
  store i32 %43, i32* %9, align 4
  br label %44

44:                                               ; preds = %42, %40
  %45 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %4, align 8
  %46 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %47, %48
  %50 = call i32 @readl(i32 %49)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %44
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %7, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %7, align 4
  br label %62

57:                                               ; preds = %44
  %58 = load i32, i32* %9, align 4
  %59 = xor i32 %58, -1
  %60 = load i32, i32* %7, align 4
  %61 = and i32 %60, %59
  store i32 %61, i32* %7, align 4
  br label %62

62:                                               ; preds = %57, %53
  %63 = load i32, i32* %7, align 4
  %64 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %4, align 8
  %65 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %8, align 4
  %68 = add nsw i32 %66, %67
  %69 = call i32 @writel(i32 %63, i32 %68)
  br label %278

70:                                               ; preds = %25
  %71 = load i32, i32* @CH0_PD, align 4
  store i32 %71, i32* %9, align 4
  %72 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %4, align 8
  %73 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* %8, align 4
  %76 = add nsw i32 %74, %75
  %77 = call i32 @readl(i32 %76)
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* %6, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %70
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* %7, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %7, align 4
  br label %89

84:                                               ; preds = %70
  %85 = load i32, i32* %9, align 4
  %86 = xor i32 %85, -1
  %87 = load i32, i32* %7, align 4
  %88 = and i32 %87, %86
  store i32 %88, i32* %7, align 4
  br label %89

89:                                               ; preds = %84, %80
  %90 = load i32, i32* %7, align 4
  %91 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %4, align 8
  %92 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* %8, align 4
  %95 = add nsw i32 %93, %94
  %96 = call i32 @writel(i32 %90, i32 %95)
  br label %278

97:                                               ; preds = %25
  %98 = load i32, i32* @CH1_PD, align 4
  store i32 %98, i32* %9, align 4
  %99 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %4, align 8
  %100 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* %8, align 4
  %103 = add nsw i32 %101, %102
  %104 = call i32 @readl(i32 %103)
  store i32 %104, i32* %7, align 4
  %105 = load i32, i32* %6, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %97
  %108 = load i32, i32* %9, align 4
  %109 = load i32, i32* %7, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %7, align 4
  br label %116

111:                                              ; preds = %97
  %112 = load i32, i32* %9, align 4
  %113 = xor i32 %112, -1
  %114 = load i32, i32* %7, align 4
  %115 = and i32 %114, %113
  store i32 %115, i32* %7, align 4
  br label %116

116:                                              ; preds = %111, %107
  %117 = load i32, i32* %7, align 4
  %118 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %4, align 8
  %119 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* %8, align 4
  %122 = add nsw i32 %120, %121
  %123 = call i32 @writel(i32 %117, i32 %122)
  br label %278

124:                                              ; preds = %25
  %125 = load i32, i32* @CH2_PD, align 4
  store i32 %125, i32* %9, align 4
  %126 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %4, align 8
  %127 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* %8, align 4
  %130 = add nsw i32 %128, %129
  %131 = call i32 @readl(i32 %130)
  store i32 %131, i32* %7, align 4
  %132 = load i32, i32* %6, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %124
  %135 = load i32, i32* %9, align 4
  %136 = load i32, i32* %7, align 4
  %137 = or i32 %136, %135
  store i32 %137, i32* %7, align 4
  br label %143

138:                                              ; preds = %124
  %139 = load i32, i32* %9, align 4
  %140 = xor i32 %139, -1
  %141 = load i32, i32* %7, align 4
  %142 = and i32 %141, %140
  store i32 %142, i32* %7, align 4
  br label %143

143:                                              ; preds = %138, %134
  %144 = load i32, i32* %7, align 4
  %145 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %4, align 8
  %146 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* %8, align 4
  %149 = add nsw i32 %147, %148
  %150 = call i32 @writel(i32 %144, i32 %149)
  br label %278

151:                                              ; preds = %25
  %152 = load i32, i32* @CH3_PD, align 4
  store i32 %152, i32* %9, align 4
  %153 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %4, align 8
  %154 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* %8, align 4
  %157 = add nsw i32 %155, %156
  %158 = call i32 @readl(i32 %157)
  store i32 %158, i32* %7, align 4
  %159 = load i32, i32* %6, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %165

161:                                              ; preds = %151
  %162 = load i32, i32* %9, align 4
  %163 = load i32, i32* %7, align 4
  %164 = or i32 %163, %162
  store i32 %164, i32* %7, align 4
  br label %170

165:                                              ; preds = %151
  %166 = load i32, i32* %9, align 4
  %167 = xor i32 %166, -1
  %168 = load i32, i32* %7, align 4
  %169 = and i32 %168, %167
  store i32 %169, i32* %7, align 4
  br label %170

170:                                              ; preds = %165, %161
  %171 = load i32, i32* %7, align 4
  %172 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %4, align 8
  %173 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* %8, align 4
  %176 = add nsw i32 %174, %175
  %177 = call i32 @writel(i32 %171, i32 %176)
  br label %278

178:                                              ; preds = %25
  %179 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %4, align 8
  %180 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %179, i32 0, i32 1
  %181 = load %struct.TYPE_2__*, %struct.TYPE_2__** %180, align 8
  %182 = icmp ne %struct.TYPE_2__* %181, null
  br i1 %182, label %183, label %193

183:                                              ; preds = %178
  %184 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %4, align 8
  %185 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %184, i32 0, i32 1
  %186 = load %struct.TYPE_2__*, %struct.TYPE_2__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = call i64 @is_rockchip(i32 %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %193

191:                                              ; preds = %183
  %192 = load i32, i32* @DP_INC_BG, align 4
  store i32 %192, i32* %9, align 4
  br label %195

193:                                              ; preds = %183, %178
  %194 = load i32, i32* @DP_PHY_PD, align 4
  store i32 %194, i32* %9, align 4
  br label %195

195:                                              ; preds = %193, %191
  %196 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %4, align 8
  %197 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = load i32, i32* %8, align 4
  %200 = add nsw i32 %198, %199
  %201 = call i32 @readl(i32 %200)
  store i32 %201, i32* %7, align 4
  %202 = load i32, i32* %6, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %208

204:                                              ; preds = %195
  %205 = load i32, i32* %9, align 4
  %206 = load i32, i32* %7, align 4
  %207 = or i32 %206, %205
  store i32 %207, i32* %7, align 4
  br label %213

208:                                              ; preds = %195
  %209 = load i32, i32* %9, align 4
  %210 = xor i32 %209, -1
  %211 = load i32, i32* %7, align 4
  %212 = and i32 %211, %210
  store i32 %212, i32* %7, align 4
  br label %213

213:                                              ; preds = %208, %204
  %214 = load i32, i32* %7, align 4
  %215 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %4, align 8
  %216 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = load i32, i32* %8, align 4
  %219 = add nsw i32 %217, %218
  %220 = call i32 @writel(i32 %214, i32 %219)
  %221 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %4, align 8
  %222 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %221, i32 0, i32 1
  %223 = load %struct.TYPE_2__*, %struct.TYPE_2__** %222, align 8
  %224 = icmp ne %struct.TYPE_2__* %223, null
  br i1 %224, label %225, label %235

225:                                              ; preds = %213
  %226 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %4, align 8
  %227 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %226, i32 0, i32 1
  %228 = load %struct.TYPE_2__*, %struct.TYPE_2__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = call i64 @is_rockchip(i32 %230)
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %235

233:                                              ; preds = %225
  %234 = call i32 @usleep_range(i32 10, i32 15)
  br label %235

235:                                              ; preds = %233, %225, %213
  br label %278

236:                                              ; preds = %25
  %237 = load i32, i32* %6, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %248

239:                                              ; preds = %236
  %240 = load i32, i32* @DP_ALL_PD, align 4
  store i32 %240, i32* %7, align 4
  %241 = load i32, i32* %7, align 4
  %242 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %4, align 8
  %243 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = load i32, i32* %8, align 4
  %246 = add nsw i32 %244, %245
  %247 = call i32 @writel(i32 %241, i32 %246)
  br label %276

248:                                              ; preds = %236
  %249 = load i32, i32* @DP_ALL_PD, align 4
  store i32 %249, i32* %7, align 4
  %250 = load i32, i32* %7, align 4
  %251 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %4, align 8
  %252 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = load i32, i32* %8, align 4
  %255 = add nsw i32 %253, %254
  %256 = call i32 @writel(i32 %250, i32 %255)
  %257 = call i32 @usleep_range(i32 10, i32 15)
  %258 = load i32, i32* @DP_INC_BG, align 4
  %259 = xor i32 %258, -1
  %260 = load i32, i32* %7, align 4
  %261 = and i32 %260, %259
  store i32 %261, i32* %7, align 4
  %262 = load i32, i32* %7, align 4
  %263 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %4, align 8
  %264 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 8
  %266 = load i32, i32* %8, align 4
  %267 = add nsw i32 %265, %266
  %268 = call i32 @writel(i32 %262, i32 %267)
  %269 = call i32 @usleep_range(i32 10, i32 15)
  %270 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %4, align 8
  %271 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 8
  %273 = load i32, i32* %8, align 4
  %274 = add nsw i32 %272, %273
  %275 = call i32 @writel(i32 0, i32 %274)
  br label %276

276:                                              ; preds = %248, %239
  br label %278

277:                                              ; preds = %25
  br label %278

278:                                              ; preds = %277, %276, %235, %170, %143, %116, %89, %62
  ret void
}

declare dso_local i64 @is_rockchip(i32) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
