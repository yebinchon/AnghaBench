; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md.c_update_array_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md.c_update_array_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64 (%struct.mddev*)*, i32 (%struct.mddev*)*, i32 (%struct.mddev*)* }
%struct.mddev = type { i64, i64, i64, i64, i32, i64, i32, i64, i64, i64, %struct.TYPE_9__, %struct.bitmap*, i64, i64, i32*, %struct.TYPE_7__* }
%struct.TYPE_9__ = type { i64, i64, i64, i32, i32 }
%struct.bitmap = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i32 (%struct.mddev*)*, i32* }
%struct.TYPE_10__ = type { i64, i64, i64, i64, i64, i32, i32, i64, i64, i32 }

@MD_SB_BITMAP_PRESENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@md_cluster_ops = common dso_local global %struct.TYPE_11__* null, align 8
@.str = private unnamed_addr constant [81 x i8] c"md: can't change bitmap to none since the array is in use by more than one node\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mddev*, %struct.TYPE_10__*)* @update_array_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_array_info(%struct.mddev* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mddev*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.bitmap*, align 8
  store %struct.mddev* %0, %struct.mddev** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %10 = load %struct.mddev*, %struct.mddev** %4, align 8
  %11 = getelementptr inbounds %struct.mddev, %struct.mddev* %10, i32 0, i32 11
  %12 = load %struct.bitmap*, %struct.bitmap** %11, align 8
  %13 = icmp ne %struct.bitmap* %12, null
  br i1 %13, label %14, label %25

14:                                               ; preds = %2
  %15 = load %struct.mddev*, %struct.mddev** %4, align 8
  %16 = getelementptr inbounds %struct.mddev, %struct.mddev* %15, i32 0, i32 10
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %14
  %21 = load i32, i32* @MD_SB_BITMAP_PRESENT, align 4
  %22 = shl i32 1, %21
  %23 = load i32, i32* %8, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %8, align 4
  br label %25

25:                                               ; preds = %20, %14, %2
  %26 = load %struct.mddev*, %struct.mddev** %4, align 8
  %27 = getelementptr inbounds %struct.mddev, %struct.mddev* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %28, %31
  br i1 %32, label %85, label %33

33:                                               ; preds = %25
  %34 = load %struct.mddev*, %struct.mddev** %4, align 8
  %35 = getelementptr inbounds %struct.mddev, %struct.mddev* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %36, %39
  br i1 %40, label %85, label %41

41:                                               ; preds = %33
  %42 = load %struct.mddev*, %struct.mddev** %4, align 8
  %43 = getelementptr inbounds %struct.mddev, %struct.mddev* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %44, %47
  br i1 %48, label %85, label %49

49:                                               ; preds = %41
  %50 = load %struct.mddev*, %struct.mddev** %4, align 8
  %51 = getelementptr inbounds %struct.mddev, %struct.mddev* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %52, %55
  br i1 %56, label %85, label %57

57:                                               ; preds = %49
  %58 = load %struct.mddev*, %struct.mddev** %4, align 8
  %59 = getelementptr inbounds %struct.mddev, %struct.mddev* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 9
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 0
  %65 = xor i1 %64, true
  %66 = zext i1 %65 to i32
  %67 = icmp ne i32 %60, %66
  br i1 %67, label %85, label %68

68:                                               ; preds = %57
  %69 = load %struct.mddev*, %struct.mddev** %4, align 8
  %70 = getelementptr inbounds %struct.mddev, %struct.mddev* %69, i32 0, i32 5
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 4
  %74 = load i64, i64* %73, align 8
  %75 = ashr i64 %74, 9
  %76 = icmp ne i64 %71, %75
  br i1 %76, label %85, label %77

77:                                               ; preds = %68
  %78 = load i32, i32* %8, align 4
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 5
  %81 = load i32, i32* %80, align 8
  %82 = xor i32 %78, %81
  %83 = and i32 %82, -512
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %77, %68, %57, %49, %41, %33, %25
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %3, align 4
  br label %396

88:                                               ; preds = %77
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 6
  %91 = load i32, i32* %90, align 4
  %92 = icmp sge i32 %91, 0
  br i1 %92, label %93, label %105

93:                                               ; preds = %88
  %94 = load %struct.mddev*, %struct.mddev** %4, align 8
  %95 = getelementptr inbounds %struct.mddev, %struct.mddev* %94, i32 0, i32 6
  %96 = load i32, i32* %95, align 8
  %97 = sdiv i32 %96, 2
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 6
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %97, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %93
  %103 = load i32, i32* %7, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %7, align 4
  br label %105

105:                                              ; preds = %102, %93, %88
  %106 = load %struct.mddev*, %struct.mddev** %4, align 8
  %107 = getelementptr inbounds %struct.mddev, %struct.mddev* %106, i32 0, i32 7
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 7
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %108, %111
  br i1 %112, label %113, label %116

113:                                              ; preds = %105
  %114 = load i32, i32* %7, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %7, align 4
  br label %116

116:                                              ; preds = %113, %105
  %117 = load %struct.mddev*, %struct.mddev** %4, align 8
  %118 = getelementptr inbounds %struct.mddev, %struct.mddev* %117, i32 0, i32 8
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 8
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %119, %122
  br i1 %123, label %124, label %127

124:                                              ; preds = %116
  %125 = load i32, i32* %7, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %7, align 4
  br label %127

127:                                              ; preds = %124, %116
  %128 = load i32, i32* %8, align 4
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 5
  %131 = load i32, i32* %130, align 8
  %132 = xor i32 %128, %131
  %133 = load i32, i32* @MD_SB_BITMAP_PRESENT, align 4
  %134 = shl i32 1, %133
  %135 = and i32 %132, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %127
  %138 = load i32, i32* %7, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %7, align 4
  br label %140

140:                                              ; preds = %137, %127
  %141 = load i32, i32* %7, align 4
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %140
  store i32 0, i32* %3, align 4
  br label %396

144:                                              ; preds = %140
  %145 = load i32, i32* %7, align 4
  %146 = icmp sgt i32 %145, 1
  br i1 %146, label %147, label %150

147:                                              ; preds = %144
  %148 = load i32, i32* @EINVAL, align 4
  %149 = sub nsw i32 0, %148
  store i32 %149, i32* %3, align 4
  br label %396

150:                                              ; preds = %144
  %151 = load %struct.mddev*, %struct.mddev** %4, align 8
  %152 = getelementptr inbounds %struct.mddev, %struct.mddev* %151, i32 0, i32 8
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 8
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %153, %156
  br i1 %157, label %158, label %191

158:                                              ; preds = %150
  %159 = load %struct.mddev*, %struct.mddev** %4, align 8
  %160 = getelementptr inbounds %struct.mddev, %struct.mddev* %159, i32 0, i32 15
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 0
  %163 = load i32 (%struct.mddev*)*, i32 (%struct.mddev*)** %162, align 8
  %164 = icmp eq i32 (%struct.mddev*)* %163, null
  br i1 %164, label %165, label %168

165:                                              ; preds = %158
  %166 = load i32, i32* @EINVAL, align 4
  %167 = sub nsw i32 0, %166
  store i32 %167, i32* %3, align 4
  br label %396

168:                                              ; preds = %158
  %169 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 8
  %171 = load i64, i64* %170, align 8
  %172 = load %struct.mddev*, %struct.mddev** %4, align 8
  %173 = getelementptr inbounds %struct.mddev, %struct.mddev* %172, i32 0, i32 9
  store i64 %171, i64* %173, align 8
  %174 = load %struct.mddev*, %struct.mddev** %4, align 8
  %175 = getelementptr inbounds %struct.mddev, %struct.mddev* %174, i32 0, i32 15
  %176 = load %struct.TYPE_7__*, %struct.TYPE_7__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 0
  %178 = load i32 (%struct.mddev*)*, i32 (%struct.mddev*)** %177, align 8
  %179 = load %struct.mddev*, %struct.mddev** %4, align 8
  %180 = call i32 %178(%struct.mddev* %179)
  store i32 %180, i32* %6, align 4
  %181 = load i32, i32* %6, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %189

183:                                              ; preds = %168
  %184 = load %struct.mddev*, %struct.mddev** %4, align 8
  %185 = getelementptr inbounds %struct.mddev, %struct.mddev* %184, i32 0, i32 8
  %186 = load i64, i64* %185, align 8
  %187 = load %struct.mddev*, %struct.mddev** %4, align 8
  %188 = getelementptr inbounds %struct.mddev, %struct.mddev* %187, i32 0, i32 9
  store i64 %186, i64* %188, align 8
  br label %189

189:                                              ; preds = %183, %168
  %190 = load i32, i32* %6, align 4
  store i32 %190, i32* %3, align 4
  br label %396

191:                                              ; preds = %150
  %192 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %192, i32 0, i32 6
  %194 = load i32, i32* %193, align 4
  %195 = icmp sge i32 %194, 0
  br i1 %195, label %196, label %212

196:                                              ; preds = %191
  %197 = load %struct.mddev*, %struct.mddev** %4, align 8
  %198 = getelementptr inbounds %struct.mddev, %struct.mddev* %197, i32 0, i32 6
  %199 = load i32, i32* %198, align 8
  %200 = sdiv i32 %199, 2
  %201 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %201, i32 0, i32 6
  %203 = load i32, i32* %202, align 4
  %204 = icmp ne i32 %200, %203
  br i1 %204, label %205, label %212

205:                                              ; preds = %196
  %206 = load %struct.mddev*, %struct.mddev** %4, align 8
  %207 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %208 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %207, i32 0, i32 6
  %209 = load i32, i32* %208, align 4
  %210 = mul nsw i32 %209, 2
  %211 = call i32 @update_size(%struct.mddev* %206, i32 %210)
  store i32 %211, i32* %6, align 4
  br label %212

212:                                              ; preds = %205, %196, %191
  %213 = load %struct.mddev*, %struct.mddev** %4, align 8
  %214 = getelementptr inbounds %struct.mddev, %struct.mddev* %213, i32 0, i32 7
  %215 = load i64, i64* %214, align 8
  %216 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %217 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %216, i32 0, i32 7
  %218 = load i64, i64* %217, align 8
  %219 = icmp ne i64 %215, %218
  br i1 %219, label %220, label %226

220:                                              ; preds = %212
  %221 = load %struct.mddev*, %struct.mddev** %4, align 8
  %222 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %223 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %222, i32 0, i32 7
  %224 = load i64, i64* %223, align 8
  %225 = call i32 @update_raid_disks(%struct.mddev* %221, i64 %224)
  store i32 %225, i32* %6, align 4
  br label %226

226:                                              ; preds = %220, %212
  %227 = load i32, i32* %8, align 4
  %228 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %229 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %228, i32 0, i32 5
  %230 = load i32, i32* %229, align 8
  %231 = xor i32 %227, %230
  %232 = load i32, i32* @MD_SB_BITMAP_PRESENT, align 4
  %233 = shl i32 1, %232
  %234 = and i32 %231, %233
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %390

236:                                              ; preds = %226
  %237 = load %struct.mddev*, %struct.mddev** %4, align 8
  %238 = getelementptr inbounds %struct.mddev, %struct.mddev* %237, i32 0, i32 15
  %239 = load %struct.TYPE_7__*, %struct.TYPE_7__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %239, i32 0, i32 1
  %241 = load i32*, i32** %240, align 8
  %242 = icmp eq i32* %241, null
  br i1 %242, label %248, label %243

243:                                              ; preds = %236
  %244 = load %struct.mddev*, %struct.mddev** %4, align 8
  %245 = getelementptr inbounds %struct.mddev, %struct.mddev* %244, i32 0, i32 14
  %246 = load i32*, i32** %245, align 8
  %247 = icmp eq i32* %246, null
  br i1 %247, label %248, label %251

248:                                              ; preds = %243, %236
  %249 = load i32, i32* @EINVAL, align 4
  %250 = sub nsw i32 0, %249
  store i32 %250, i32* %6, align 4
  br label %394

251:                                              ; preds = %243
  %252 = load %struct.mddev*, %struct.mddev** %4, align 8
  %253 = getelementptr inbounds %struct.mddev, %struct.mddev* %252, i32 0, i32 13
  %254 = load i64, i64* %253, align 8
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %261, label %256

256:                                              ; preds = %251
  %257 = load %struct.mddev*, %struct.mddev** %4, align 8
  %258 = getelementptr inbounds %struct.mddev, %struct.mddev* %257, i32 0, i32 12
  %259 = load i64, i64* %258, align 8
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %264

261:                                              ; preds = %256, %251
  %262 = load i32, i32* @EBUSY, align 4
  %263 = sub nsw i32 0, %262
  store i32 %263, i32* %6, align 4
  br label %394

264:                                              ; preds = %256
  %265 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %266 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %265, i32 0, i32 5
  %267 = load i32, i32* %266, align 8
  %268 = load i32, i32* @MD_SB_BITMAP_PRESENT, align 4
  %269 = shl i32 1, %268
  %270 = and i32 %267, %269
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %329

272:                                              ; preds = %264
  %273 = load %struct.mddev*, %struct.mddev** %4, align 8
  %274 = getelementptr inbounds %struct.mddev, %struct.mddev* %273, i32 0, i32 11
  %275 = load %struct.bitmap*, %struct.bitmap** %274, align 8
  %276 = icmp ne %struct.bitmap* %275, null
  br i1 %276, label %277, label %280

277:                                              ; preds = %272
  %278 = load i32, i32* @EEXIST, align 4
  %279 = sub nsw i32 0, %278
  store i32 %279, i32* %6, align 4
  br label %394

280:                                              ; preds = %272
  %281 = load %struct.mddev*, %struct.mddev** %4, align 8
  %282 = getelementptr inbounds %struct.mddev, %struct.mddev* %281, i32 0, i32 10
  %283 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %282, i32 0, i32 1
  %284 = load i64, i64* %283, align 8
  %285 = icmp eq i64 %284, 0
  br i1 %285, label %286, label %289

286:                                              ; preds = %280
  %287 = load i32, i32* @EINVAL, align 4
  %288 = sub nsw i32 0, %287
  store i32 %288, i32* %6, align 4
  br label %394

289:                                              ; preds = %280
  %290 = load %struct.mddev*, %struct.mddev** %4, align 8
  %291 = getelementptr inbounds %struct.mddev, %struct.mddev* %290, i32 0, i32 10
  %292 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %291, i32 0, i32 1
  %293 = load i64, i64* %292, align 8
  %294 = load %struct.mddev*, %struct.mddev** %4, align 8
  %295 = getelementptr inbounds %struct.mddev, %struct.mddev* %294, i32 0, i32 10
  %296 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %295, i32 0, i32 0
  store i64 %293, i64* %296, align 8
  %297 = load %struct.mddev*, %struct.mddev** %4, align 8
  %298 = getelementptr inbounds %struct.mddev, %struct.mddev* %297, i32 0, i32 10
  %299 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %298, i32 0, i32 3
  %300 = load i32, i32* %299, align 8
  %301 = load %struct.mddev*, %struct.mddev** %4, align 8
  %302 = getelementptr inbounds %struct.mddev, %struct.mddev* %301, i32 0, i32 10
  %303 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %302, i32 0, i32 4
  store i32 %300, i32* %303, align 4
  %304 = load %struct.mddev*, %struct.mddev** %4, align 8
  %305 = call %struct.bitmap* @md_bitmap_create(%struct.mddev* %304, i32 -1)
  store %struct.bitmap* %305, %struct.bitmap** %9, align 8
  %306 = load %struct.mddev*, %struct.mddev** %4, align 8
  %307 = call i32 @mddev_suspend(%struct.mddev* %306)
  %308 = load %struct.bitmap*, %struct.bitmap** %9, align 8
  %309 = call i32 @IS_ERR(%struct.bitmap* %308)
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %317, label %311

311:                                              ; preds = %289
  %312 = load %struct.bitmap*, %struct.bitmap** %9, align 8
  %313 = load %struct.mddev*, %struct.mddev** %4, align 8
  %314 = getelementptr inbounds %struct.mddev, %struct.mddev* %313, i32 0, i32 11
  store %struct.bitmap* %312, %struct.bitmap** %314, align 8
  %315 = load %struct.mddev*, %struct.mddev** %4, align 8
  %316 = call i32 @md_bitmap_load(%struct.mddev* %315)
  store i32 %316, i32* %6, align 4
  br label %320

317:                                              ; preds = %289
  %318 = load %struct.bitmap*, %struct.bitmap** %9, align 8
  %319 = call i32 @PTR_ERR(%struct.bitmap* %318)
  store i32 %319, i32* %6, align 4
  br label %320

320:                                              ; preds = %317, %311
  %321 = load i32, i32* %6, align 4
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %326

323:                                              ; preds = %320
  %324 = load %struct.mddev*, %struct.mddev** %4, align 8
  %325 = call i32 @md_bitmap_destroy(%struct.mddev* %324)
  br label %326

326:                                              ; preds = %323, %320
  %327 = load %struct.mddev*, %struct.mddev** %4, align 8
  %328 = call i32 @mddev_resume(%struct.mddev* %327)
  br label %389

329:                                              ; preds = %264
  %330 = load %struct.mddev*, %struct.mddev** %4, align 8
  %331 = getelementptr inbounds %struct.mddev, %struct.mddev* %330, i32 0, i32 11
  %332 = load %struct.bitmap*, %struct.bitmap** %331, align 8
  %333 = icmp ne %struct.bitmap* %332, null
  br i1 %333, label %337, label %334

334:                                              ; preds = %329
  %335 = load i32, i32* @ENOENT, align 4
  %336 = sub nsw i32 0, %335
  store i32 %336, i32* %6, align 4
  br label %394

337:                                              ; preds = %329
  %338 = load %struct.mddev*, %struct.mddev** %4, align 8
  %339 = getelementptr inbounds %struct.mddev, %struct.mddev* %338, i32 0, i32 11
  %340 = load %struct.bitmap*, %struct.bitmap** %339, align 8
  %341 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %340, i32 0, i32 0
  %342 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %341, i32 0, i32 0
  %343 = load i64, i64* %342, align 8
  %344 = icmp ne i64 %343, 0
  br i1 %344, label %345, label %348

345:                                              ; preds = %337
  %346 = load i32, i32* @EINVAL, align 4
  %347 = sub nsw i32 0, %346
  store i32 %347, i32* %6, align 4
  br label %394

348:                                              ; preds = %337
  %349 = load %struct.mddev*, %struct.mddev** %4, align 8
  %350 = getelementptr inbounds %struct.mddev, %struct.mddev* %349, i32 0, i32 10
  %351 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %350, i32 0, i32 2
  %352 = load i64, i64* %351, align 8
  %353 = icmp ne i64 %352, 0
  br i1 %353, label %354, label %379

354:                                              ; preds = %348
  %355 = load %struct.TYPE_11__*, %struct.TYPE_11__** @md_cluster_ops, align 8
  %356 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %355, i32 0, i32 0
  %357 = load i64 (%struct.mddev*)*, i64 (%struct.mddev*)** %356, align 8
  %358 = load %struct.mddev*, %struct.mddev** %4, align 8
  %359 = call i64 %357(%struct.mddev* %358)
  %360 = icmp sle i64 %359, 0
  br i1 %360, label %361, label %370

361:                                              ; preds = %354
  %362 = call i32 @pr_warn(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str, i64 0, i64 0))
  %363 = load i32, i32* @EPERM, align 4
  %364 = sub nsw i32 0, %363
  store i32 %364, i32* %6, align 4
  %365 = load %struct.TYPE_11__*, %struct.TYPE_11__** @md_cluster_ops, align 8
  %366 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %365, i32 0, i32 2
  %367 = load i32 (%struct.mddev*)*, i32 (%struct.mddev*)** %366, align 8
  %368 = load %struct.mddev*, %struct.mddev** %4, align 8
  %369 = call i32 %367(%struct.mddev* %368)
  br label %394

370:                                              ; preds = %354
  %371 = load %struct.mddev*, %struct.mddev** %4, align 8
  %372 = getelementptr inbounds %struct.mddev, %struct.mddev* %371, i32 0, i32 10
  %373 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %372, i32 0, i32 2
  store i64 0, i64* %373, align 8
  %374 = load %struct.TYPE_11__*, %struct.TYPE_11__** @md_cluster_ops, align 8
  %375 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %374, i32 0, i32 1
  %376 = load i32 (%struct.mddev*)*, i32 (%struct.mddev*)** %375, align 8
  %377 = load %struct.mddev*, %struct.mddev** %4, align 8
  %378 = call i32 %376(%struct.mddev* %377)
  br label %379

379:                                              ; preds = %370, %348
  %380 = load %struct.mddev*, %struct.mddev** %4, align 8
  %381 = call i32 @mddev_suspend(%struct.mddev* %380)
  %382 = load %struct.mddev*, %struct.mddev** %4, align 8
  %383 = call i32 @md_bitmap_destroy(%struct.mddev* %382)
  %384 = load %struct.mddev*, %struct.mddev** %4, align 8
  %385 = call i32 @mddev_resume(%struct.mddev* %384)
  %386 = load %struct.mddev*, %struct.mddev** %4, align 8
  %387 = getelementptr inbounds %struct.mddev, %struct.mddev* %386, i32 0, i32 10
  %388 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %387, i32 0, i32 0
  store i64 0, i64* %388, align 8
  br label %389

389:                                              ; preds = %379, %326
  br label %390

390:                                              ; preds = %389, %226
  %391 = load %struct.mddev*, %struct.mddev** %4, align 8
  %392 = call i32 @md_update_sb(%struct.mddev* %391, i32 1)
  %393 = load i32, i32* %6, align 4
  store i32 %393, i32* %3, align 4
  br label %396

394:                                              ; preds = %361, %345, %334, %286, %277, %261, %248
  %395 = load i32, i32* %6, align 4
  store i32 %395, i32* %3, align 4
  br label %396

396:                                              ; preds = %394, %390, %189, %165, %147, %143, %85
  %397 = load i32, i32* %3, align 4
  ret i32 %397
}

declare dso_local i32 @update_size(%struct.mddev*, i32) #1

declare dso_local i32 @update_raid_disks(%struct.mddev*, i64) #1

declare dso_local %struct.bitmap* @md_bitmap_create(%struct.mddev*, i32) #1

declare dso_local i32 @mddev_suspend(%struct.mddev*) #1

declare dso_local i32 @IS_ERR(%struct.bitmap*) #1

declare dso_local i32 @md_bitmap_load(%struct.mddev*) #1

declare dso_local i32 @PTR_ERR(%struct.bitmap*) #1

declare dso_local i32 @md_bitmap_destroy(%struct.mddev*) #1

declare dso_local i32 @mddev_resume(%struct.mddev*) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @md_update_sb(%struct.mddev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
