; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cxd2099.c_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cxd2099.c_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxd = type { i32, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cxd*)* @init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init(%struct.cxd* %0) #0 {
  %2 = alloca %struct.cxd*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.cxd* %0, %struct.cxd** %2, align 8
  %5 = load %struct.cxd*, %struct.cxd** %2, align 8
  %6 = getelementptr inbounds %struct.cxd, %struct.cxd* %5, i32 0, i32 4
  %7 = call i32 @mutex_lock(i32* %6)
  %8 = load %struct.cxd*, %struct.cxd** %2, align 8
  %9 = getelementptr inbounds %struct.cxd, %struct.cxd* %8, i32 0, i32 0
  store i32 -1, i32* %9, align 8
  br label %10

10:                                               ; preds = %1
  %11 = load %struct.cxd*, %struct.cxd** %2, align 8
  %12 = call i32 @write_reg(%struct.cxd* %11, i32 0, i32 0)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  br label %289

16:                                               ; preds = %10
  %17 = load %struct.cxd*, %struct.cxd** %2, align 8
  %18 = call i32 @write_reg(%struct.cxd* %17, i32 1, i32 0)
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %289

22:                                               ; preds = %16
  %23 = load %struct.cxd*, %struct.cxd** %2, align 8
  %24 = call i32 @write_reg(%struct.cxd* %23, i32 2, i32 16)
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %3, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %289

28:                                               ; preds = %22
  %29 = load %struct.cxd*, %struct.cxd** %2, align 8
  %30 = call i32 @write_reg(%struct.cxd* %29, i32 3, i32 0)
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* %3, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %289

34:                                               ; preds = %28
  %35 = load %struct.cxd*, %struct.cxd** %2, align 8
  %36 = call i32 @write_reg(%struct.cxd* %35, i32 5, i32 255)
  store i32 %36, i32* %3, align 4
  %37 = load i32, i32* %3, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %289

40:                                               ; preds = %34
  %41 = load %struct.cxd*, %struct.cxd** %2, align 8
  %42 = call i32 @write_reg(%struct.cxd* %41, i32 6, i32 31)
  store i32 %42, i32* %3, align 4
  %43 = load i32, i32* %3, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %289

46:                                               ; preds = %40
  %47 = load %struct.cxd*, %struct.cxd** %2, align 8
  %48 = call i32 @write_reg(%struct.cxd* %47, i32 7, i32 31)
  store i32 %48, i32* %3, align 4
  %49 = load i32, i32* %3, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %289

52:                                               ; preds = %46
  %53 = load %struct.cxd*, %struct.cxd** %2, align 8
  %54 = call i32 @write_reg(%struct.cxd* %53, i32 8, i32 40)
  store i32 %54, i32* %3, align 4
  %55 = load i32, i32* %3, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  br label %289

58:                                               ; preds = %52
  %59 = load %struct.cxd*, %struct.cxd** %2, align 8
  %60 = call i32 @write_reg(%struct.cxd* %59, i32 20, i32 32)
  store i32 %60, i32* %3, align 4
  %61 = load i32, i32* %3, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  br label %289

64:                                               ; preds = %58
  %65 = load %struct.cxd*, %struct.cxd** %2, align 8
  %66 = call i32 @write_reg(%struct.cxd* %65, i32 10, i32 167)
  store i32 %66, i32* %3, align 4
  %67 = load i32, i32* %3, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  br label %289

70:                                               ; preds = %64
  %71 = load %struct.cxd*, %struct.cxd** %2, align 8
  %72 = call i32 @write_reg(%struct.cxd* %71, i32 11, i32 51)
  store i32 %72, i32* %3, align 4
  %73 = load i32, i32* %3, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  br label %289

76:                                               ; preds = %70
  %77 = load %struct.cxd*, %struct.cxd** %2, align 8
  %78 = call i32 @write_reg(%struct.cxd* %77, i32 12, i32 51)
  store i32 %78, i32* %3, align 4
  %79 = load i32, i32* %3, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  br label %289

82:                                               ; preds = %76
  %83 = load %struct.cxd*, %struct.cxd** %2, align 8
  %84 = call i32 @write_regm(%struct.cxd* %83, i32 20, i32 0, i32 15)
  store i32 %84, i32* %3, align 4
  %85 = load i32, i32* %3, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %82
  br label %289

88:                                               ; preds = %82
  %89 = load %struct.cxd*, %struct.cxd** %2, align 8
  %90 = load %struct.cxd*, %struct.cxd** %2, align 8
  %91 = getelementptr inbounds %struct.cxd, %struct.cxd* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @write_reg(%struct.cxd* %89, i32 21, i32 %92)
  store i32 %93, i32* %3, align 4
  %94 = load i32, i32* %3, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %88
  br label %289

97:                                               ; preds = %88
  %98 = load %struct.cxd*, %struct.cxd** %2, align 8
  %99 = call i32 @write_regm(%struct.cxd* %98, i32 22, i32 0, i32 15)
  store i32 %99, i32* %3, align 4
  %100 = load i32, i32* %3, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %97
  br label %289

103:                                              ; preds = %97
  %104 = load %struct.cxd*, %struct.cxd** %2, align 8
  %105 = load %struct.cxd*, %struct.cxd** %2, align 8
  %106 = getelementptr inbounds %struct.cxd, %struct.cxd* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @write_reg(%struct.cxd* %104, i32 23, i32 %107)
  store i32 %108, i32* %3, align 4
  %109 = load i32, i32* %3, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %103
  br label %289

112:                                              ; preds = %103
  %113 = load %struct.cxd*, %struct.cxd** %2, align 8
  %114 = getelementptr inbounds %struct.cxd, %struct.cxd* %113, i32 0, i32 5
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = icmp eq i32 %116, 2
  br i1 %117, label %118, label %169

118:                                              ; preds = %112
  %119 = load %struct.cxd*, %struct.cxd** %2, align 8
  %120 = getelementptr inbounds %struct.cxd, %struct.cxd* %119, i32 0, i32 5
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = shl i32 %122, 13
  %124 = add nsw i32 %123, 71999
  %125 = sdiv i32 %124, 72000
  store i32 %125, i32* %4, align 4
  %126 = load %struct.cxd*, %struct.cxd** %2, align 8
  %127 = getelementptr inbounds %struct.cxd, %struct.cxd* %126, i32 0, i32 5
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %138

131:                                              ; preds = %118
  %132 = load %struct.cxd*, %struct.cxd** %2, align 8
  %133 = call i32 @write_reg(%struct.cxd* %132, i32 9, i32 111)
  store i32 %133, i32* %3, align 4
  %134 = load i32, i32* %3, align 4
  %135 = icmp slt i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %131
  br label %289

137:                                              ; preds = %131
  br label %145

138:                                              ; preds = %118
  %139 = load %struct.cxd*, %struct.cxd** %2, align 8
  %140 = call i32 @write_reg(%struct.cxd* %139, i32 9, i32 109)
  store i32 %140, i32* %3, align 4
  %141 = load i32, i32* %3, align 4
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %138
  br label %289

144:                                              ; preds = %138
  br label %145

145:                                              ; preds = %144, %137
  %146 = load %struct.cxd*, %struct.cxd** %2, align 8
  %147 = call i32 @write_reg(%struct.cxd* %146, i32 32, i32 8)
  store i32 %147, i32* %3, align 4
  %148 = load i32, i32* %3, align 4
  %149 = icmp slt i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %145
  br label %289

151:                                              ; preds = %145
  %152 = load %struct.cxd*, %struct.cxd** %2, align 8
  %153 = load i32, i32* %4, align 4
  %154 = ashr i32 %153, 8
  %155 = and i32 %154, 255
  %156 = call i32 @write_reg(%struct.cxd* %152, i32 33, i32 %155)
  store i32 %156, i32* %3, align 4
  %157 = load i32, i32* %3, align 4
  %158 = icmp slt i32 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %151
  br label %289

160:                                              ; preds = %151
  %161 = load %struct.cxd*, %struct.cxd** %2, align 8
  %162 = load i32, i32* %4, align 4
  %163 = and i32 %162, 255
  %164 = call i32 @write_reg(%struct.cxd* %161, i32 34, i32 %163)
  store i32 %164, i32* %3, align 4
  %165 = load i32, i32* %3, align 4
  %166 = icmp slt i32 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %160
  br label %289

168:                                              ; preds = %160
  br label %254

169:                                              ; preds = %112
  %170 = load %struct.cxd*, %struct.cxd** %2, align 8
  %171 = getelementptr inbounds %struct.cxd, %struct.cxd* %170, i32 0, i32 5
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = icmp eq i32 %173, 1
  br i1 %174, label %175, label %214

175:                                              ; preds = %169
  %176 = load %struct.cxd*, %struct.cxd** %2, align 8
  %177 = getelementptr inbounds %struct.cxd, %struct.cxd* %176, i32 0, i32 5
  %178 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %177, i32 0, i32 2
  %179 = load i64, i64* %178, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %188

181:                                              ; preds = %175
  %182 = load %struct.cxd*, %struct.cxd** %2, align 8
  %183 = call i32 @write_reg(%struct.cxd* %182, i32 9, i32 111)
  store i32 %183, i32* %3, align 4
  %184 = load i32, i32* %3, align 4
  %185 = icmp slt i32 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %181
  br label %289

187:                                              ; preds = %181
  br label %195

188:                                              ; preds = %175
  %189 = load %struct.cxd*, %struct.cxd** %2, align 8
  %190 = call i32 @write_reg(%struct.cxd* %189, i32 9, i32 109)
  store i32 %190, i32* %3, align 4
  %191 = load i32, i32* %3, align 4
  %192 = icmp slt i32 %191, 0
  br i1 %192, label %193, label %194

193:                                              ; preds = %188
  br label %289

194:                                              ; preds = %188
  br label %195

195:                                              ; preds = %194, %187
  %196 = load %struct.cxd*, %struct.cxd** %2, align 8
  %197 = call i32 @write_reg(%struct.cxd* %196, i32 32, i32 104)
  store i32 %197, i32* %3, align 4
  %198 = load i32, i32* %3, align 4
  %199 = icmp slt i32 %198, 0
  br i1 %199, label %200, label %201

200:                                              ; preds = %195
  br label %289

201:                                              ; preds = %195
  %202 = load %struct.cxd*, %struct.cxd** %2, align 8
  %203 = call i32 @write_reg(%struct.cxd* %202, i32 33, i32 0)
  store i32 %203, i32* %3, align 4
  %204 = load i32, i32* %3, align 4
  %205 = icmp slt i32 %204, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %201
  br label %289

207:                                              ; preds = %201
  %208 = load %struct.cxd*, %struct.cxd** %2, align 8
  %209 = call i32 @write_reg(%struct.cxd* %208, i32 34, i32 2)
  store i32 %209, i32* %3, align 4
  %210 = load i32, i32* %3, align 4
  %211 = icmp slt i32 %210, 0
  br i1 %211, label %212, label %213

212:                                              ; preds = %207
  br label %289

213:                                              ; preds = %207
  br label %253

214:                                              ; preds = %169
  %215 = load %struct.cxd*, %struct.cxd** %2, align 8
  %216 = getelementptr inbounds %struct.cxd, %struct.cxd* %215, i32 0, i32 5
  %217 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %216, i32 0, i32 2
  %218 = load i64, i64* %217, align 8
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %227

220:                                              ; preds = %214
  %221 = load %struct.cxd*, %struct.cxd** %2, align 8
  %222 = call i32 @write_reg(%struct.cxd* %221, i32 9, i32 79)
  store i32 %222, i32* %3, align 4
  %223 = load i32, i32* %3, align 4
  %224 = icmp slt i32 %223, 0
  br i1 %224, label %225, label %226

225:                                              ; preds = %220
  br label %289

226:                                              ; preds = %220
  br label %234

227:                                              ; preds = %214
  %228 = load %struct.cxd*, %struct.cxd** %2, align 8
  %229 = call i32 @write_reg(%struct.cxd* %228, i32 9, i32 77)
  store i32 %229, i32* %3, align 4
  %230 = load i32, i32* %3, align 4
  %231 = icmp slt i32 %230, 0
  br i1 %231, label %232, label %233

232:                                              ; preds = %227
  br label %289

233:                                              ; preds = %227
  br label %234

234:                                              ; preds = %233, %226
  %235 = load %struct.cxd*, %struct.cxd** %2, align 8
  %236 = call i32 @write_reg(%struct.cxd* %235, i32 32, i32 40)
  store i32 %236, i32* %3, align 4
  %237 = load i32, i32* %3, align 4
  %238 = icmp slt i32 %237, 0
  br i1 %238, label %239, label %240

239:                                              ; preds = %234
  br label %289

240:                                              ; preds = %234
  %241 = load %struct.cxd*, %struct.cxd** %2, align 8
  %242 = call i32 @write_reg(%struct.cxd* %241, i32 33, i32 0)
  store i32 %242, i32* %3, align 4
  %243 = load i32, i32* %3, align 4
  %244 = icmp slt i32 %243, 0
  br i1 %244, label %245, label %246

245:                                              ; preds = %240
  br label %289

246:                                              ; preds = %240
  %247 = load %struct.cxd*, %struct.cxd** %2, align 8
  %248 = call i32 @write_reg(%struct.cxd* %247, i32 34, i32 7)
  store i32 %248, i32* %3, align 4
  %249 = load i32, i32* %3, align 4
  %250 = icmp slt i32 %249, 0
  br i1 %250, label %251, label %252

251:                                              ; preds = %246
  br label %289

252:                                              ; preds = %246
  br label %253

253:                                              ; preds = %252, %213
  br label %254

254:                                              ; preds = %253, %168
  %255 = load %struct.cxd*, %struct.cxd** %2, align 8
  %256 = call i32 @write_regm(%struct.cxd* %255, i32 32, i32 128, i32 128)
  store i32 %256, i32* %3, align 4
  %257 = load i32, i32* %3, align 4
  %258 = icmp slt i32 %257, 0
  br i1 %258, label %259, label %260

259:                                              ; preds = %254
  br label %289

260:                                              ; preds = %254
  %261 = load %struct.cxd*, %struct.cxd** %2, align 8
  %262 = call i32 @write_regm(%struct.cxd* %261, i32 3, i32 2, i32 2)
  store i32 %262, i32* %3, align 4
  %263 = load i32, i32* %3, align 4
  %264 = icmp slt i32 %263, 0
  br i1 %264, label %265, label %266

265:                                              ; preds = %260
  br label %289

266:                                              ; preds = %260
  %267 = load %struct.cxd*, %struct.cxd** %2, align 8
  %268 = call i32 @write_reg(%struct.cxd* %267, i32 1, i32 4)
  store i32 %268, i32* %3, align 4
  %269 = load i32, i32* %3, align 4
  %270 = icmp slt i32 %269, 0
  br i1 %270, label %271, label %272

271:                                              ; preds = %266
  br label %289

272:                                              ; preds = %266
  %273 = load %struct.cxd*, %struct.cxd** %2, align 8
  %274 = call i32 @write_reg(%struct.cxd* %273, i32 0, i32 49)
  store i32 %274, i32* %3, align 4
  %275 = load i32, i32* %3, align 4
  %276 = icmp slt i32 %275, 0
  br i1 %276, label %277, label %278

277:                                              ; preds = %272
  br label %289

278:                                              ; preds = %272
  %279 = load %struct.cxd*, %struct.cxd** %2, align 8
  %280 = call i32 @write_regm(%struct.cxd* %279, i32 9, i32 8, i32 8)
  store i32 %280, i32* %3, align 4
  %281 = load i32, i32* %3, align 4
  %282 = icmp slt i32 %281, 0
  br i1 %282, label %283, label %284

283:                                              ; preds = %278
  br label %289

284:                                              ; preds = %278
  %285 = load %struct.cxd*, %struct.cxd** %2, align 8
  %286 = getelementptr inbounds %struct.cxd, %struct.cxd* %285, i32 0, i32 3
  store i32 -1, i32* %286, align 4
  %287 = load %struct.cxd*, %struct.cxd** %2, align 8
  %288 = call i32 @cam_mode(%struct.cxd* %287, i32 0)
  br label %289

289:                                              ; preds = %284, %283, %277, %271, %265, %259, %251, %245, %239, %232, %225, %212, %206, %200, %193, %186, %167, %159, %150, %143, %136, %111, %102, %96, %87, %81, %75, %69, %63, %57, %51, %45, %39, %33, %27, %21, %15
  %290 = load %struct.cxd*, %struct.cxd** %2, align 8
  %291 = getelementptr inbounds %struct.cxd, %struct.cxd* %290, i32 0, i32 4
  %292 = call i32 @mutex_unlock(i32* %291)
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @write_reg(%struct.cxd*, i32, i32) #1

declare dso_local i32 @write_regm(%struct.cxd*, i32, i32, i32) #1

declare dso_local i32 @cam_mode(%struct.cxd*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
