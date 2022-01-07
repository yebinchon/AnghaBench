; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dispc.c_dispc_ovl_calc_scaling_34xx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dispc.c_dispc_ovl_calc_scaling_34xx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dispc_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 (i64, i32, i32, i32, i32, i32)* }
%struct.videomode = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"failed to find scaling settings\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"horizontal timing too tight\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Cannot setup scaling\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"width exceeds maximum width possible\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"cannot setup scaling with five taps\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dispc_device*, i64, i64, %struct.videomode*, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32, i64*, i32)* @dispc_ovl_calc_scaling_34xx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dispc_ovl_calc_scaling_34xx(%struct.dispc_device* %0, i64 %1, i64 %2, %struct.videomode* %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32* %9, i32* %10, i32* %11, i32* %12, i32* %13, i32 %14, i64* %15, i32 %16) #0 {
  %18 = alloca i32, align 4
  %19 = alloca %struct.dispc_device*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca %struct.videomode*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i32*, align 8
  %31 = alloca i32*, align 8
  %32 = alloca i32*, align 8
  %33 = alloca i32, align 4
  %34 = alloca i64*, align 8
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  store %struct.dispc_device* %0, %struct.dispc_device** %19, align 8
  store i64 %1, i64* %20, align 8
  store i64 %2, i64* %21, align 8
  store %struct.videomode* %3, %struct.videomode** %22, align 8
  store i32 %4, i32* %23, align 4
  store i32 %5, i32* %24, align 4
  store i32 %6, i32* %25, align 4
  store i32 %7, i32* %26, align 4
  store i32 %8, i32* %27, align 4
  store i32* %9, i32** %28, align 8
  store i32* %10, i32** %29, align 8
  store i32* %11, i32** %30, align 8
  store i32* %12, i32** %31, align 8
  store i32* %13, i32** %32, align 8
  store i32 %14, i32* %33, align 4
  store i64* %15, i64** %34, align 8
  store i32 %16, i32* %35, align 4
  %40 = load %struct.dispc_device*, %struct.dispc_device** %19, align 8
  %41 = getelementptr inbounds %struct.dispc_device, %struct.dispc_device* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %39, align 4
  br label %45

45:                                               ; preds = %202, %17
  %46 = load i32, i32* %24, align 4
  %47 = load i32*, i32** %32, align 8
  %48 = load i32, i32* %47, align 4
  %49 = sdiv i32 %46, %48
  store i32 %49, i32* %38, align 4
  %50 = load i32, i32* %23, align 4
  %51 = load i32*, i32** %31, align 8
  %52 = load i32, i32* %51, align 4
  %53 = sdiv i32 %50, %52
  store i32 %53, i32* %37, align 4
  %54 = load i32, i32* %38, align 4
  %55 = load i32, i32* %26, align 4
  %56 = icmp sgt i32 %54, %55
  %57 = zext i1 %56 to i32
  %58 = load i32*, i32** %28, align 8
  store i32 %57, i32* %58, align 4
  %59 = load i32, i32* %37, align 4
  %60 = load i32, i32* %39, align 4
  %61 = icmp sgt i32 %59, %60
  br i1 %61, label %62, label %74

62:                                               ; preds = %45
  %63 = load i32, i32* %38, align 4
  %64 = load i32, i32* %26, align 4
  %65 = icmp sgt i32 %63, %64
  br i1 %65, label %66, label %73

66:                                               ; preds = %62
  %67 = load i32, i32* %38, align 4
  %68 = load i32, i32* %26, align 4
  %69 = mul nsw i32 %68, 2
  %70 = icmp slt i32 %67, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  %72 = load i32*, i32** %28, align 8
  store i32 0, i32* %72, align 4
  br label %73

73:                                               ; preds = %71, %66, %62
  br label %74

74:                                               ; preds = %73, %45
  br label %75

75:                                               ; preds = %121, %74
  %76 = load i32*, i32** %28, align 8
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %89

79:                                               ; preds = %75
  %80 = load i64, i64* %20, align 8
  %81 = load %struct.videomode*, %struct.videomode** %22, align 8
  %82 = load i32, i32* %37, align 4
  %83 = load i32, i32* %38, align 4
  %84 = load i32, i32* %25, align 4
  %85 = load i32, i32* %26, align 4
  %86 = load i32, i32* %27, align 4
  %87 = call i64 @calc_core_clk_five_taps(i64 %80, %struct.videomode* %81, i32 %82, i32 %83, i32 %84, i32 %85, i32 %86)
  %88 = load i64*, i64** %34, align 8
  store i64 %87, i64* %88, align 8
  br label %103

89:                                               ; preds = %75
  %90 = load %struct.dispc_device*, %struct.dispc_device** %19, align 8
  %91 = getelementptr inbounds %struct.dispc_device, %struct.dispc_device* %90, i32 0, i32 0
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 1
  %94 = load i64 (i64, i32, i32, i32, i32, i32)*, i64 (i64, i32, i32, i32, i32, i32)** %93, align 8
  %95 = load i64, i64* %20, align 8
  %96 = load i32, i32* %37, align 4
  %97 = load i32, i32* %38, align 4
  %98 = load i32, i32* %25, align 4
  %99 = load i32, i32* %26, align 4
  %100 = load i32, i32* %35, align 4
  %101 = call i64 %94(i64 %95, i32 %96, i32 %97, i32 %98, i32 %99, i32 %100)
  %102 = load i64*, i64** %34, align 8
  store i64 %101, i64* %102, align 8
  br label %103

103:                                              ; preds = %89, %79
  %104 = load i64, i64* %20, align 8
  %105 = load i64, i64* %21, align 8
  %106 = load %struct.videomode*, %struct.videomode** %22, align 8
  %107 = load i32, i32* %33, align 4
  %108 = load i32, i32* %37, align 4
  %109 = load i32, i32* %38, align 4
  %110 = load i32, i32* %25, align 4
  %111 = load i32, i32* %26, align 4
  %112 = load i32*, i32** %28, align 8
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @check_horiz_timing_omap3(i64 %104, i64 %105, %struct.videomode* %106, i32 %107, i32 %108, i32 %109, i32 %110, i32 %111, i32 %113)
  store i32 %114, i32* %36, align 4
  %115 = load i32, i32* %36, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %103
  %118 = load i32*, i32** %28, align 8
  %119 = load i32, i32* %118, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %117
  %122 = load i32*, i32** %28, align 8
  store i32 0, i32* %122, align 4
  br label %75

123:                                              ; preds = %117, %103
  %124 = load i32, i32* %36, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %149, label %126

126:                                              ; preds = %123
  %127 = load i32, i32* %37, align 4
  %128 = load i32, i32* %39, align 4
  %129 = mul nsw i32 %128, 2
  %130 = icmp sgt i32 %127, %129
  br i1 %130, label %149, label %131

131:                                              ; preds = %126
  %132 = load i32, i32* %37, align 4
  %133 = load i32, i32* %39, align 4
  %134 = icmp sgt i32 %132, %133
  br i1 %134, label %135, label %139

135:                                              ; preds = %131
  %136 = load i32*, i32** %28, align 8
  %137 = load i32, i32* %136, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %149, label %139

139:                                              ; preds = %135, %131
  %140 = load i64*, i64** %34, align 8
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %149

143:                                              ; preds = %139
  %144 = load i64*, i64** %34, align 8
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.dispc_device*, %struct.dispc_device** %19, align 8
  %147 = call i64 @dispc_core_clk_rate(%struct.dispc_device* %146)
  %148 = icmp ugt i64 %145, %147
  br label %149

149:                                              ; preds = %143, %139, %135, %126, %123
  %150 = phi i1 [ true, %139 ], [ true, %135 ], [ true, %126 ], [ true, %123 ], [ %148, %143 ]
  %151 = zext i1 %150 to i32
  store i32 %151, i32* %36, align 4
  %152 = load i32, i32* %36, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %179, label %154

154:                                              ; preds = %149
  %155 = load i32, i32* %37, align 4
  %156 = sdiv i32 %155, 4
  %157 = load i32, i32* %25, align 4
  %158 = icmp sgt i32 %156, %157
  br i1 %158, label %159, label %160

159:                                              ; preds = %154
  store i32 1, i32* %36, align 4
  br label %160

160:                                              ; preds = %159, %154
  %161 = load i32*, i32** %28, align 8
  %162 = load i32, i32* %161, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %171

164:                                              ; preds = %160
  %165 = load i32, i32* %38, align 4
  %166 = sdiv i32 %165, 4
  %167 = load i32, i32* %26, align 4
  %168 = icmp sgt i32 %166, %167
  br i1 %168, label %169, label %170

169:                                              ; preds = %164
  store i32 1, i32* %36, align 4
  br label %170

170:                                              ; preds = %169, %164
  br label %178

171:                                              ; preds = %160
  %172 = load i32, i32* %38, align 4
  %173 = sdiv i32 %172, 2
  %174 = load i32, i32* %26, align 4
  %175 = icmp sgt i32 %173, %174
  br i1 %175, label %176, label %177

176:                                              ; preds = %171
  store i32 1, i32* %36, align 4
  br label %177

177:                                              ; preds = %176, %171
  br label %178

178:                                              ; preds = %177, %170
  br label %179

179:                                              ; preds = %178, %149
  %180 = load i32, i32* %36, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %186

182:                                              ; preds = %179
  %183 = load i32*, i32** %32, align 8
  %184 = load i32, i32* %183, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %183, align 4
  br label %186

186:                                              ; preds = %182, %179
  br label %187

187:                                              ; preds = %186
  %188 = load i32*, i32** %31, align 8
  %189 = load i32, i32* %188, align 4
  %190 = load i32*, i32** %29, align 8
  %191 = load i32, i32* %190, align 4
  %192 = icmp sle i32 %189, %191
  br i1 %192, label %193, label %202

193:                                              ; preds = %187
  %194 = load i32*, i32** %32, align 8
  %195 = load i32, i32* %194, align 4
  %196 = load i32*, i32** %30, align 8
  %197 = load i32, i32* %196, align 4
  %198 = icmp sle i32 %195, %197
  br i1 %198, label %199, label %202

199:                                              ; preds = %193
  %200 = load i32, i32* %36, align 4
  %201 = icmp ne i32 %200, 0
  br label %202

202:                                              ; preds = %199, %193, %187
  %203 = phi i1 [ false, %193 ], [ false, %187 ], [ %201, %199 ]
  br i1 %203, label %45, label %204

204:                                              ; preds = %202
  %205 = load i32, i32* %36, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %211

207:                                              ; preds = %204
  %208 = call i32 @DSSERR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %209 = load i32, i32* @EINVAL, align 4
  %210 = sub nsw i32 0, %209
  store i32 %210, i32* %18, align 4
  br label %251

211:                                              ; preds = %204
  %212 = load i64, i64* %20, align 8
  %213 = load i64, i64* %21, align 8
  %214 = load %struct.videomode*, %struct.videomode** %22, align 8
  %215 = load i32, i32* %33, align 4
  %216 = load i32, i32* %37, align 4
  %217 = load i32, i32* %38, align 4
  %218 = load i32, i32* %25, align 4
  %219 = load i32, i32* %26, align 4
  %220 = load i32*, i32** %28, align 8
  %221 = load i32, i32* %220, align 4
  %222 = call i32 @check_horiz_timing_omap3(i64 %212, i64 %213, %struct.videomode* %214, i32 %215, i32 %216, i32 %217, i32 %218, i32 %219, i32 %221)
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %228

224:                                              ; preds = %211
  %225 = call i32 @DSSERR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %226 = load i32, i32* @EINVAL, align 4
  %227 = sub nsw i32 0, %226
  store i32 %227, i32* %18, align 4
  br label %251

228:                                              ; preds = %211
  %229 = load i32, i32* %37, align 4
  %230 = load i32, i32* %39, align 4
  %231 = mul nsw i32 %230, 2
  %232 = icmp sgt i32 %229, %231
  br i1 %232, label %233, label %238

233:                                              ; preds = %228
  %234 = call i32 @DSSERR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %235 = call i32 @DSSERR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %236 = load i32, i32* @EINVAL, align 4
  %237 = sub nsw i32 0, %236
  store i32 %237, i32* %18, align 4
  br label %251

238:                                              ; preds = %228
  %239 = load i32, i32* %37, align 4
  %240 = load i32, i32* %39, align 4
  %241 = icmp sgt i32 %239, %240
  br i1 %241, label %242, label %250

242:                                              ; preds = %238
  %243 = load i32*, i32** %28, align 8
  %244 = load i32, i32* %243, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %250

246:                                              ; preds = %242
  %247 = call i32 @DSSERR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  %248 = load i32, i32* @EINVAL, align 4
  %249 = sub nsw i32 0, %248
  store i32 %249, i32* %18, align 4
  br label %251

250:                                              ; preds = %242, %238
  store i32 0, i32* %18, align 4
  br label %251

251:                                              ; preds = %250, %246, %233, %224, %207
  %252 = load i32, i32* %18, align 4
  ret i32 %252
}

declare dso_local i64 @calc_core_clk_five_taps(i64, %struct.videomode*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @check_horiz_timing_omap3(i64, i64, %struct.videomode*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @dispc_core_clk_rate(%struct.dispc_device*) #1

declare dso_local i32 @DSSERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
