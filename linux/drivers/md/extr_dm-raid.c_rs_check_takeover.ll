; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-raid.c_rs_check_takeover.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-raid.c_rs_check_takeover.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raid_set = type { i32, %struct.TYPE_2__*, %struct.mddev }
%struct.TYPE_2__ = type { i8* }
%struct.mddev = type { i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"Can't takeover degraded raid set\00", align 1
@EPERM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Can't takeover reshaping raid set\00", align 1
@ALGORITHM_PARITY_N = common dso_local global i32 0, align 4
@ALGORITHM_LEFT_ASYMMETRIC_6 = common dso_local global i32 0, align 4
@ALGORITHM_RIGHT_SYMMETRIC_6 = common dso_local global i32 0, align 4
@ALGORITHM_LEFT_ASYMMETRIC = common dso_local global i32 0, align 4
@ALGORITHM_RIGHT_SYMMETRIC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"takeover not possible\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.raid_set*)* @rs_check_takeover to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rs_check_takeover(%struct.raid_set* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.raid_set*, align 8
  %4 = alloca %struct.mddev*, align 8
  %5 = alloca i32, align 4
  store %struct.raid_set* %0, %struct.raid_set** %3, align 8
  %6 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %7 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %6, i32 0, i32 2
  store %struct.mddev* %7, %struct.mddev** %4, align 8
  %8 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %9 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.mddev, %struct.mddev* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  %14 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %15 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8** %17, align 8
  %18 = load i32, i32* @EPERM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %362

20:                                               ; preds = %1
  %21 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %22 = call i64 @rs_is_reshaping(%struct.raid_set* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %20
  %25 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %26 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8** %28, align 8
  %29 = load i32, i32* @EPERM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %362

31:                                               ; preds = %20
  %32 = load %struct.mddev*, %struct.mddev** %4, align 8
  %33 = getelementptr inbounds %struct.mddev, %struct.mddev* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  switch i32 %34, label %354 [
    i32 0, label %35
    i32 10, label %85
    i32 1, label %163
    i32 4, label %195
    i32 5, label %231
    i32 6, label %303
  ]

35:                                               ; preds = %31
  %36 = load %struct.mddev*, %struct.mddev** %4, align 8
  %37 = getelementptr inbounds %struct.mddev, %struct.mddev* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %45, label %40

40:                                               ; preds = %35
  %41 = load %struct.mddev*, %struct.mddev** %4, align 8
  %42 = getelementptr inbounds %struct.mddev, %struct.mddev* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, 5
  br i1 %44, label %45, label %51

45:                                               ; preds = %40, %35
  %46 = load %struct.mddev*, %struct.mddev** %4, align 8
  %47 = getelementptr inbounds %struct.mddev, %struct.mddev* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  store i32 0, i32* %2, align 4
  br label %362

51:                                               ; preds = %45, %40
  %52 = load %struct.mddev*, %struct.mddev** %4, align 8
  %53 = getelementptr inbounds %struct.mddev, %struct.mddev* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %54, 10
  br i1 %55, label %56, label %66

56:                                               ; preds = %51
  %57 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %58 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.mddev*, %struct.mddev** %4, align 8
  %61 = getelementptr inbounds %struct.mddev, %struct.mddev* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = srem i32 %59, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %56
  store i32 0, i32* %2, align 4
  br label %362

66:                                               ; preds = %56, %51
  %67 = load %struct.mddev*, %struct.mddev** %4, align 8
  %68 = getelementptr inbounds %struct.mddev, %struct.mddev* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @__within_range(i32 %69, i32 4, i32 6)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %84

72:                                               ; preds = %66
  %73 = load %struct.mddev*, %struct.mddev** %4, align 8
  %74 = getelementptr inbounds %struct.mddev, %struct.mddev* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @ALGORITHM_PARITY_N, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %84

78:                                               ; preds = %72
  %79 = load %struct.mddev*, %struct.mddev** %4, align 8
  %80 = getelementptr inbounds %struct.mddev, %struct.mddev* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = icmp sgt i32 %81, 1
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  store i32 0, i32* %2, align 4
  br label %362

84:                                               ; preds = %78, %72, %66
  br label %355

85:                                               ; preds = %31
  %86 = load %struct.mddev*, %struct.mddev** %4, align 8
  %87 = getelementptr inbounds %struct.mddev, %struct.mddev* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @__is_raid10_offset(i32 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %85
  br label %355

92:                                               ; preds = %85
  %93 = load %struct.mddev*, %struct.mddev** %4, align 8
  %94 = getelementptr inbounds %struct.mddev, %struct.mddev* %93, i32 0, i32 5
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @__raid10_near_copies(i32 %95)
  store i32 %96, i32* %5, align 4
  %97 = load %struct.mddev*, %struct.mddev** %4, align 8
  %98 = getelementptr inbounds %struct.mddev, %struct.mddev* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %133

101:                                              ; preds = %92
  %102 = load i32, i32* %5, align 4
  %103 = icmp ugt i32 %102, 1
  br i1 %103, label %104, label %122

104:                                              ; preds = %101
  %105 = load %struct.mddev*, %struct.mddev** %4, align 8
  %106 = getelementptr inbounds %struct.mddev, %struct.mddev* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %5, align 4
  %109 = urem i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %122, label %111

111:                                              ; preds = %104
  %112 = load i32, i32* %5, align 4
  %113 = load %struct.mddev*, %struct.mddev** %4, align 8
  %114 = getelementptr inbounds %struct.mddev, %struct.mddev* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = udiv i32 %115, %112
  store i32 %116, i32* %114, align 4
  %117 = load %struct.mddev*, %struct.mddev** %4, align 8
  %118 = getelementptr inbounds %struct.mddev, %struct.mddev* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.mddev*, %struct.mddev** %4, align 8
  %121 = getelementptr inbounds %struct.mddev, %struct.mddev* %120, i32 0, i32 6
  store i32 %119, i32* %121, align 4
  store i32 0, i32* %2, align 4
  br label %362

122:                                              ; preds = %104, %101
  %123 = load i32, i32* %5, align 4
  %124 = icmp eq i32 %123, 1
  br i1 %124, label %125, label %132

125:                                              ; preds = %122
  %126 = load %struct.mddev*, %struct.mddev** %4, align 8
  %127 = getelementptr inbounds %struct.mddev, %struct.mddev* %126, i32 0, i32 5
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @__raid10_far_copies(i32 %128)
  %130 = icmp sgt i32 %129, 1
  br i1 %130, label %131, label %132

131:                                              ; preds = %125
  store i32 0, i32* %2, align 4
  br label %362

132:                                              ; preds = %125, %122
  br label %355

133:                                              ; preds = %92
  %134 = load %struct.mddev*, %struct.mddev** %4, align 8
  %135 = getelementptr inbounds %struct.mddev, %struct.mddev* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = icmp eq i32 %136, 1
  br i1 %137, label %138, label %150

138:                                              ; preds = %133
  %139 = load i32, i32* %5, align 4
  %140 = load %struct.mddev*, %struct.mddev** %4, align 8
  %141 = getelementptr inbounds %struct.mddev, %struct.mddev* %140, i32 0, i32 5
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @__raid10_far_copies(i32 %142)
  %144 = call i32 @max(i32 %139, i32 %143)
  %145 = load %struct.mddev*, %struct.mddev** %4, align 8
  %146 = getelementptr inbounds %struct.mddev, %struct.mddev* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 4
  %148 = icmp eq i32 %144, %147
  br i1 %148, label %149, label %150

149:                                              ; preds = %138
  store i32 0, i32* %2, align 4
  br label %362

150:                                              ; preds = %138, %133
  %151 = load %struct.mddev*, %struct.mddev** %4, align 8
  %152 = getelementptr inbounds %struct.mddev, %struct.mddev* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @__within_range(i32 %153, i32 4, i32 5)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %162

156:                                              ; preds = %150
  %157 = load %struct.mddev*, %struct.mddev** %4, align 8
  %158 = getelementptr inbounds %struct.mddev, %struct.mddev* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 4
  %160 = icmp eq i32 %159, 2
  br i1 %160, label %161, label %162

161:                                              ; preds = %156
  store i32 0, i32* %2, align 4
  br label %362

162:                                              ; preds = %156, %150
  br label %355

163:                                              ; preds = %31
  %164 = load %struct.mddev*, %struct.mddev** %4, align 8
  %165 = getelementptr inbounds %struct.mddev, %struct.mddev* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @__within_range(i32 %166, i32 4, i32 5)
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %177

169:                                              ; preds = %163
  %170 = load %struct.mddev*, %struct.mddev** %4, align 8
  %171 = getelementptr inbounds %struct.mddev, %struct.mddev* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 4
  %173 = icmp eq i32 %172, 2
  br i1 %173, label %174, label %177

174:                                              ; preds = %169
  %175 = load %struct.mddev*, %struct.mddev** %4, align 8
  %176 = getelementptr inbounds %struct.mddev, %struct.mddev* %175, i32 0, i32 0
  store i32 1, i32* %176, align 4
  store i32 0, i32* %2, align 4
  br label %362

177:                                              ; preds = %169, %163
  %178 = load %struct.mddev*, %struct.mddev** %4, align 8
  %179 = getelementptr inbounds %struct.mddev, %struct.mddev* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 4
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %188

182:                                              ; preds = %177
  %183 = load %struct.mddev*, %struct.mddev** %4, align 8
  %184 = getelementptr inbounds %struct.mddev, %struct.mddev* %183, i32 0, i32 3
  %185 = load i32, i32* %184, align 4
  %186 = icmp eq i32 %185, 1
  br i1 %186, label %187, label %188

187:                                              ; preds = %182
  store i32 0, i32* %2, align 4
  br label %362

188:                                              ; preds = %182, %177
  %189 = load %struct.mddev*, %struct.mddev** %4, align 8
  %190 = getelementptr inbounds %struct.mddev, %struct.mddev* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 4
  %192 = icmp eq i32 %191, 10
  br i1 %192, label %193, label %194

193:                                              ; preds = %188
  store i32 0, i32* %2, align 4
  br label %362

194:                                              ; preds = %188
  br label %355

195:                                              ; preds = %31
  %196 = load %struct.mddev*, %struct.mddev** %4, align 8
  %197 = getelementptr inbounds %struct.mddev, %struct.mddev* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 4
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %200, label %201

200:                                              ; preds = %195
  store i32 0, i32* %2, align 4
  br label %362

201:                                              ; preds = %195
  %202 = load %struct.mddev*, %struct.mddev** %4, align 8
  %203 = getelementptr inbounds %struct.mddev, %struct.mddev* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 4
  %205 = icmp eq i32 %204, 1
  br i1 %205, label %211, label %206

206:                                              ; preds = %201
  %207 = load %struct.mddev*, %struct.mddev** %4, align 8
  %208 = getelementptr inbounds %struct.mddev, %struct.mddev* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 4
  %210 = icmp eq i32 %209, 5
  br i1 %210, label %211, label %217

211:                                              ; preds = %206, %201
  %212 = load %struct.mddev*, %struct.mddev** %4, align 8
  %213 = getelementptr inbounds %struct.mddev, %struct.mddev* %212, i32 0, i32 3
  %214 = load i32, i32* %213, align 4
  %215 = icmp eq i32 %214, 2
  br i1 %215, label %216, label %217

216:                                              ; preds = %211
  store i32 0, i32* %2, align 4
  br label %362

217:                                              ; preds = %211, %206
  %218 = load %struct.mddev*, %struct.mddev** %4, align 8
  %219 = getelementptr inbounds %struct.mddev, %struct.mddev* %218, i32 0, i32 2
  %220 = load i32, i32* %219, align 4
  %221 = call i32 @__within_range(i32 %220, i32 5, i32 6)
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %230

223:                                              ; preds = %217
  %224 = load %struct.mddev*, %struct.mddev** %4, align 8
  %225 = getelementptr inbounds %struct.mddev, %struct.mddev* %224, i32 0, i32 5
  %226 = load i32, i32* %225, align 4
  %227 = load i32, i32* @ALGORITHM_PARITY_N, align 4
  %228 = icmp eq i32 %226, %227
  br i1 %228, label %229, label %230

229:                                              ; preds = %223
  store i32 0, i32* %2, align 4
  br label %362

230:                                              ; preds = %223, %217
  br label %355

231:                                              ; preds = %31
  %232 = load %struct.mddev*, %struct.mddev** %4, align 8
  %233 = getelementptr inbounds %struct.mddev, %struct.mddev* %232, i32 0, i32 2
  %234 = load i32, i32* %233, align 4
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %236, label %243

236:                                              ; preds = %231
  %237 = load %struct.mddev*, %struct.mddev** %4, align 8
  %238 = getelementptr inbounds %struct.mddev, %struct.mddev* %237, i32 0, i32 5
  %239 = load i32, i32* %238, align 4
  %240 = load i32, i32* @ALGORITHM_PARITY_N, align 4
  %241 = icmp eq i32 %239, %240
  br i1 %241, label %242, label %243

242:                                              ; preds = %236
  store i32 0, i32* %2, align 4
  br label %362

243:                                              ; preds = %236, %231
  %244 = load %struct.mddev*, %struct.mddev** %4, align 8
  %245 = getelementptr inbounds %struct.mddev, %struct.mddev* %244, i32 0, i32 2
  %246 = load i32, i32* %245, align 4
  %247 = icmp eq i32 %246, 4
  br i1 %247, label %248, label %255

248:                                              ; preds = %243
  %249 = load %struct.mddev*, %struct.mddev** %4, align 8
  %250 = getelementptr inbounds %struct.mddev, %struct.mddev* %249, i32 0, i32 5
  %251 = load i32, i32* %250, align 4
  %252 = load i32, i32* @ALGORITHM_PARITY_N, align 4
  %253 = icmp eq i32 %251, %252
  br i1 %253, label %254, label %255

254:                                              ; preds = %248
  store i32 0, i32* %2, align 4
  br label %362

255:                                              ; preds = %248, %243
  %256 = load %struct.mddev*, %struct.mddev** %4, align 8
  %257 = getelementptr inbounds %struct.mddev, %struct.mddev* %256, i32 0, i32 2
  %258 = load i32, i32* %257, align 4
  %259 = icmp eq i32 %258, 1
  br i1 %259, label %270, label %260

260:                                              ; preds = %255
  %261 = load %struct.mddev*, %struct.mddev** %4, align 8
  %262 = getelementptr inbounds %struct.mddev, %struct.mddev* %261, i32 0, i32 2
  %263 = load i32, i32* %262, align 4
  %264 = icmp eq i32 %263, 4
  br i1 %264, label %270, label %265

265:                                              ; preds = %260
  %266 = load %struct.mddev*, %struct.mddev** %4, align 8
  %267 = getelementptr inbounds %struct.mddev, %struct.mddev* %266, i32 0, i32 2
  %268 = load i32, i32* %267, align 4
  %269 = icmp eq i32 %268, 10
  br i1 %269, label %270, label %276

270:                                              ; preds = %265, %260, %255
  %271 = load %struct.mddev*, %struct.mddev** %4, align 8
  %272 = getelementptr inbounds %struct.mddev, %struct.mddev* %271, i32 0, i32 3
  %273 = load i32, i32* %272, align 4
  %274 = icmp eq i32 %273, 2
  br i1 %274, label %275, label %276

275:                                              ; preds = %270
  store i32 0, i32* %2, align 4
  br label %362

276:                                              ; preds = %270, %265
  %277 = load %struct.mddev*, %struct.mddev** %4, align 8
  %278 = getelementptr inbounds %struct.mddev, %struct.mddev* %277, i32 0, i32 2
  %279 = load i32, i32* %278, align 4
  %280 = icmp eq i32 %279, 6
  br i1 %280, label %281, label %302

281:                                              ; preds = %276
  %282 = load %struct.mddev*, %struct.mddev** %4, align 8
  %283 = getelementptr inbounds %struct.mddev, %struct.mddev* %282, i32 0, i32 5
  %284 = load i32, i32* %283, align 4
  %285 = load i32, i32* @ALGORITHM_PARITY_N, align 4
  %286 = icmp eq i32 %284, %285
  br i1 %286, label %287, label %293

287:                                              ; preds = %281
  %288 = load %struct.mddev*, %struct.mddev** %4, align 8
  %289 = getelementptr inbounds %struct.mddev, %struct.mddev* %288, i32 0, i32 4
  %290 = load i32, i32* %289, align 4
  %291 = load i32, i32* @ALGORITHM_PARITY_N, align 4
  %292 = icmp eq i32 %290, %291
  br i1 %292, label %301, label %293

293:                                              ; preds = %287, %281
  %294 = load %struct.mddev*, %struct.mddev** %4, align 8
  %295 = getelementptr inbounds %struct.mddev, %struct.mddev* %294, i32 0, i32 4
  %296 = load i32, i32* %295, align 4
  %297 = load i32, i32* @ALGORITHM_LEFT_ASYMMETRIC_6, align 4
  %298 = load i32, i32* @ALGORITHM_RIGHT_SYMMETRIC_6, align 4
  %299 = call i32 @__within_range(i32 %296, i32 %297, i32 %298)
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %302

301:                                              ; preds = %293, %287
  store i32 0, i32* %2, align 4
  br label %362

302:                                              ; preds = %293, %276
  br label %355

303:                                              ; preds = %31
  %304 = load %struct.mddev*, %struct.mddev** %4, align 8
  %305 = getelementptr inbounds %struct.mddev, %struct.mddev* %304, i32 0, i32 2
  %306 = load i32, i32* %305, align 4
  %307 = icmp eq i32 %306, 0
  br i1 %307, label %308, label %315

308:                                              ; preds = %303
  %309 = load %struct.mddev*, %struct.mddev** %4, align 8
  %310 = getelementptr inbounds %struct.mddev, %struct.mddev* %309, i32 0, i32 5
  %311 = load i32, i32* %310, align 4
  %312 = load i32, i32* @ALGORITHM_PARITY_N, align 4
  %313 = icmp eq i32 %311, %312
  br i1 %313, label %314, label %315

314:                                              ; preds = %308
  store i32 0, i32* %2, align 4
  br label %362

315:                                              ; preds = %308, %303
  %316 = load %struct.mddev*, %struct.mddev** %4, align 8
  %317 = getelementptr inbounds %struct.mddev, %struct.mddev* %316, i32 0, i32 2
  %318 = load i32, i32* %317, align 4
  %319 = icmp eq i32 %318, 4
  br i1 %319, label %320, label %327

320:                                              ; preds = %315
  %321 = load %struct.mddev*, %struct.mddev** %4, align 8
  %322 = getelementptr inbounds %struct.mddev, %struct.mddev* %321, i32 0, i32 5
  %323 = load i32, i32* %322, align 4
  %324 = load i32, i32* @ALGORITHM_PARITY_N, align 4
  %325 = icmp eq i32 %323, %324
  br i1 %325, label %326, label %327

326:                                              ; preds = %320
  store i32 0, i32* %2, align 4
  br label %362

327:                                              ; preds = %320, %315
  %328 = load %struct.mddev*, %struct.mddev** %4, align 8
  %329 = getelementptr inbounds %struct.mddev, %struct.mddev* %328, i32 0, i32 2
  %330 = load i32, i32* %329, align 4
  %331 = icmp eq i32 %330, 5
  br i1 %331, label %332, label %353

332:                                              ; preds = %327
  %333 = load %struct.mddev*, %struct.mddev** %4, align 8
  %334 = getelementptr inbounds %struct.mddev, %struct.mddev* %333, i32 0, i32 5
  %335 = load i32, i32* %334, align 4
  %336 = load i32, i32* @ALGORITHM_PARITY_N, align 4
  %337 = icmp eq i32 %335, %336
  br i1 %337, label %338, label %344

338:                                              ; preds = %332
  %339 = load %struct.mddev*, %struct.mddev** %4, align 8
  %340 = getelementptr inbounds %struct.mddev, %struct.mddev* %339, i32 0, i32 4
  %341 = load i32, i32* %340, align 4
  %342 = load i32, i32* @ALGORITHM_PARITY_N, align 4
  %343 = icmp eq i32 %341, %342
  br i1 %343, label %352, label %344

344:                                              ; preds = %338, %332
  %345 = load %struct.mddev*, %struct.mddev** %4, align 8
  %346 = getelementptr inbounds %struct.mddev, %struct.mddev* %345, i32 0, i32 4
  %347 = load i32, i32* %346, align 4
  %348 = load i32, i32* @ALGORITHM_LEFT_ASYMMETRIC, align 4
  %349 = load i32, i32* @ALGORITHM_RIGHT_SYMMETRIC, align 4
  %350 = call i32 @__within_range(i32 %347, i32 %348, i32 %349)
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %352, label %353

352:                                              ; preds = %344, %338
  store i32 0, i32* %2, align 4
  br label %362

353:                                              ; preds = %344, %327
  br label %354

354:                                              ; preds = %31, %353
  br label %355

355:                                              ; preds = %354, %302, %230, %194, %162, %132, %91, %84
  %356 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %357 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %356, i32 0, i32 1
  %358 = load %struct.TYPE_2__*, %struct.TYPE_2__** %357, align 8
  %359 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %358, i32 0, i32 0
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8** %359, align 8
  %360 = load i32, i32* @EINVAL, align 4
  %361 = sub nsw i32 0, %360
  store i32 %361, i32* %2, align 4
  br label %362

362:                                              ; preds = %355, %352, %326, %314, %301, %275, %254, %242, %229, %216, %200, %193, %187, %174, %161, %149, %131, %111, %83, %65, %50, %24, %13
  %363 = load i32, i32* %2, align 4
  ret i32 %363
}

declare dso_local i64 @rs_is_reshaping(%struct.raid_set*) #1

declare dso_local i32 @__within_range(i32, i32, i32) #1

declare dso_local i32 @__is_raid10_offset(i32) #1

declare dso_local i32 @__raid10_near_copies(i32) #1

declare dso_local i32 @__raid10_far_copies(i32) #1

declare dso_local i32 @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
