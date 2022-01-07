; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid10.c_read_balance.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid10.c_read_balance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 (%struct.TYPE_8__*, i32, i64, i64)* }
%struct.TYPE_8__ = type { i64 }
%struct.md_rdev = type { i64, i32, i32, i32 }
%struct.r10conf = type { i64, i32, %struct.TYPE_7__*, %struct.TYPE_8__*, %struct.geom }
%struct.TYPE_7__ = type { i64, i32, i32 }
%struct.geom = type { i32, i32 }
%struct.r10bio = type { i64, i32, i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i64, i32, i64 }

@UINT_MAX = common dso_local global i32 0, align 4
@MaxSector = common dso_local global i64 0, align 8
@R10BIO_FailFast = common dso_local global i32 0, align 4
@md_cluster_ops = common dso_local global %struct.TYPE_9__* null, align 8
@READ = common dso_local global i32 0, align 4
@IO_BLOCKED = common dso_local global i64 0, align 8
@Faulty = common dso_local global i32 0, align 4
@In_sync = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.md_rdev* (%struct.r10conf*, %struct.r10bio*, i32*)* @read_balance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.md_rdev* @read_balance(%struct.r10conf* %0, %struct.r10bio* %1, i32* %2) #0 {
  %4 = alloca %struct.r10conf*, align 8
  %5 = alloca %struct.r10bio*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.md_rdev*, align 8
  %15 = alloca %struct.md_rdev*, align 8
  %16 = alloca %struct.md_rdev*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.geom*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i64, align 8
  store %struct.r10conf* %0, %struct.r10conf** %4, align 8
  store %struct.r10bio* %1, %struct.r10bio** %5, align 8
  store i32* %2, i32** %6, align 8
  %29 = load %struct.r10bio*, %struct.r10bio** %5, align 8
  %30 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %7, align 8
  %32 = load %struct.r10bio*, %struct.r10bio** %5, align 8
  %33 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %10, align 4
  store %struct.md_rdev* null, %struct.md_rdev** %16, align 8
  store i32 0, i32* %20, align 4
  %35 = load %struct.r10conf*, %struct.r10conf** %4, align 8
  %36 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %35, i32 0, i32 4
  store %struct.geom* %36, %struct.geom** %22, align 8
  %37 = load %struct.r10conf*, %struct.r10conf** %4, align 8
  %38 = load %struct.r10bio*, %struct.r10bio** %5, align 8
  %39 = call i32 @raid10_find_phys(%struct.r10conf* %37, %struct.r10bio* %38)
  %40 = call i32 (...) @rcu_read_lock()
  store i32 -1, i32* %18, align 4
  %41 = load i32, i32* @UINT_MAX, align 4
  store i32 %41, i32* %21, align 4
  store %struct.md_rdev* null, %struct.md_rdev** %14, align 8
  store %struct.md_rdev* null, %struct.md_rdev** %15, align 8
  %42 = load i64, i64* @MaxSector, align 8
  store i64 %42, i64* %13, align 8
  store i32 0, i32* %11, align 4
  store i32 1, i32* %17, align 4
  %43 = load i32, i32* @R10BIO_FailFast, align 4
  %44 = load %struct.r10bio*, %struct.r10bio** %5, align 8
  %45 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %44, i32 0, i32 4
  %46 = call i32 @clear_bit(i32 %43, i32* %45)
  %47 = load %struct.r10conf*, %struct.r10conf** %4, align 8
  %48 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %47, i32 0, i32 3
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @MaxSector, align 8
  %53 = icmp slt i64 %51, %52
  br i1 %53, label %54, label %63

54:                                               ; preds = %3
  %55 = load i64, i64* %7, align 8
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %55, %57
  %59 = load %struct.r10conf*, %struct.r10conf** %4, align 8
  %60 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp sge i64 %58, %61
  br i1 %62, label %84, label %63

63:                                               ; preds = %54, %3
  %64 = load %struct.r10conf*, %struct.r10conf** %4, align 8
  %65 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %64, i32 0, i32 3
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %65, align 8
  %67 = call i64 @mddev_is_clustered(%struct.TYPE_8__* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %85

69:                                               ; preds = %63
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** @md_cluster_ops, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = load i64 (%struct.TYPE_8__*, i32, i64, i64)*, i64 (%struct.TYPE_8__*, i32, i64, i64)** %71, align 8
  %73 = load %struct.r10conf*, %struct.r10conf** %4, align 8
  %74 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %73, i32 0, i32 3
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %74, align 8
  %76 = load i32, i32* @READ, align 4
  %77 = load i64, i64* %7, align 8
  %78 = load i64, i64* %7, align 8
  %79 = load i32, i32* %10, align 4
  %80 = sext i32 %79 to i64
  %81 = add nsw i64 %78, %80
  %82 = call i64 %72(%struct.TYPE_8__* %75, i32 %76, i64 %77, i64 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %69, %54
  store i32 0, i32* %17, align 4
  br label %85

85:                                               ; preds = %84, %69, %63
  store i32 0, i32* %9, align 4
  br label %86

86:                                               ; preds = %342, %85
  %87 = load i32, i32* %9, align 4
  %88 = load %struct.r10conf*, %struct.r10conf** %4, align 8
  %89 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = icmp slt i32 %87, %90
  br i1 %91, label %92, label %345

92:                                               ; preds = %86
  %93 = load %struct.r10bio*, %struct.r10bio** %5, align 8
  %94 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %93, i32 0, i32 3
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %94, align 8
  %96 = load i32, i32* %9, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @IO_BLOCKED, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %92
  br label %342

104:                                              ; preds = %92
  %105 = load %struct.r10bio*, %struct.r10bio** %5, align 8
  %106 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %105, i32 0, i32 3
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %106, align 8
  %108 = load i32, i32* %9, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  store i32 %112, i32* %8, align 4
  %113 = load %struct.r10conf*, %struct.r10conf** %4, align 8
  %114 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %113, i32 0, i32 2
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %114, align 8
  %116 = load i32, i32* %8, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = call %struct.md_rdev* @rcu_dereference(i32 %120)
  store %struct.md_rdev* %121, %struct.md_rdev** %16, align 8
  %122 = load %struct.md_rdev*, %struct.md_rdev** %16, align 8
  %123 = icmp eq %struct.md_rdev* %122, null
  br i1 %123, label %146, label %124

124:                                              ; preds = %104
  %125 = load i32, i32* @Faulty, align 4
  %126 = load %struct.md_rdev*, %struct.md_rdev** %16, align 8
  %127 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %126, i32 0, i32 3
  %128 = call i64 @test_bit(i32 %125, i32* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %146, label %130

130:                                              ; preds = %124
  %131 = load %struct.r10bio*, %struct.r10bio** %5, align 8
  %132 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %131, i32 0, i32 3
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %132, align 8
  %134 = load i32, i32* %9, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 2
  %138 = load i64, i64* %137, align 8
  %139 = load i32, i32* %10, align 4
  %140 = sext i32 %139 to i64
  %141 = add nsw i64 %138, %140
  %142 = load %struct.md_rdev*, %struct.md_rdev** %16, align 8
  %143 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = icmp sgt i64 %141, %144
  br i1 %145, label %146, label %156

146:                                              ; preds = %130, %124, %104
  %147 = load %struct.r10conf*, %struct.r10conf** %4, align 8
  %148 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %147, i32 0, i32 2
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %148, align 8
  %150 = load i32, i32* %8, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = call %struct.md_rdev* @rcu_dereference(i32 %154)
  store %struct.md_rdev* %155, %struct.md_rdev** %16, align 8
  br label %156

156:                                              ; preds = %146, %130
  %157 = load %struct.md_rdev*, %struct.md_rdev** %16, align 8
  %158 = icmp eq %struct.md_rdev* %157, null
  br i1 %158, label %165, label %159

159:                                              ; preds = %156
  %160 = load i32, i32* @Faulty, align 4
  %161 = load %struct.md_rdev*, %struct.md_rdev** %16, align 8
  %162 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %161, i32 0, i32 3
  %163 = call i64 @test_bit(i32 %160, i32* %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %159, %156
  br label %342

166:                                              ; preds = %159
  %167 = load i32, i32* @In_sync, align 4
  %168 = load %struct.md_rdev*, %struct.md_rdev** %16, align 8
  %169 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %168, i32 0, i32 3
  %170 = call i64 @test_bit(i32 %167, i32* %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %189, label %172

172:                                              ; preds = %166
  %173 = load %struct.r10bio*, %struct.r10bio** %5, align 8
  %174 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %173, i32 0, i32 3
  %175 = load %struct.TYPE_6__*, %struct.TYPE_6__** %174, align 8
  %176 = load i32, i32* %9, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 2
  %180 = load i64, i64* %179, align 8
  %181 = load i32, i32* %10, align 4
  %182 = sext i32 %181 to i64
  %183 = add nsw i64 %180, %182
  %184 = load %struct.md_rdev*, %struct.md_rdev** %16, align 8
  %185 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = icmp sgt i64 %183, %186
  br i1 %187, label %188, label %189

188:                                              ; preds = %172
  br label %342

189:                                              ; preds = %172, %166
  %190 = load %struct.r10bio*, %struct.r10bio** %5, align 8
  %191 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %190, i32 0, i32 3
  %192 = load %struct.TYPE_6__*, %struct.TYPE_6__** %191, align 8
  %193 = load i32, i32* %9, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i64 %194
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i32 0, i32 2
  %197 = load i64, i64* %196, align 8
  store i64 %197, i64* %25, align 8
  %198 = load %struct.md_rdev*, %struct.md_rdev** %16, align 8
  %199 = load i64, i64* %25, align 8
  %200 = load i32, i32* %10, align 4
  %201 = call i64 @is_badblock(%struct.md_rdev* %198, i64 %199, i32 %200, i64* %23, i32* %24)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %254

203:                                              ; preds = %189
  %204 = load i64, i64* %13, align 8
  %205 = load i64, i64* @MaxSector, align 8
  %206 = icmp slt i64 %204, %205
  br i1 %206, label %207, label %208

207:                                              ; preds = %203
  br label %342

208:                                              ; preds = %203
  %209 = load i64, i64* %23, align 8
  %210 = load i64, i64* %25, align 8
  %211 = icmp sle i64 %209, %210
  br i1 %211, label %212, label %235

212:                                              ; preds = %208
  %213 = load i64, i64* %25, align 8
  %214 = load i64, i64* %23, align 8
  %215 = sub nsw i64 %213, %214
  %216 = load i32, i32* %24, align 4
  %217 = sext i32 %216 to i64
  %218 = sub nsw i64 %217, %215
  %219 = trunc i64 %218 to i32
  store i32 %219, i32* %24, align 4
  %220 = load i32, i32* %17, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %228, label %222

222:                                              ; preds = %212
  %223 = load i32, i32* %10, align 4
  %224 = load i32, i32* %24, align 4
  %225 = icmp sgt i32 %223, %224
  br i1 %225, label %226, label %228

226:                                              ; preds = %222
  %227 = load i32, i32* %24, align 4
  store i32 %227, i32* %10, align 4
  br label %228

228:                                              ; preds = %226, %222, %212
  %229 = load i32, i32* %11, align 4
  %230 = load i32, i32* %10, align 4
  %231 = icmp sgt i32 %229, %230
  br i1 %231, label %232, label %234

232:                                              ; preds = %228
  %233 = load i32, i32* %10, align 4
  store i32 %233, i32* %11, align 4
  br label %234

234:                                              ; preds = %232, %228
  br label %253

235:                                              ; preds = %208
  %236 = load i64, i64* %23, align 8
  %237 = load i64, i64* %25, align 8
  %238 = sub nsw i64 %236, %237
  store i64 %238, i64* %28, align 8
  %239 = load i64, i64* %28, align 8
  %240 = load i32, i32* %11, align 4
  %241 = sext i32 %240 to i64
  %242 = icmp sgt i64 %239, %241
  br i1 %242, label %243, label %248

243:                                              ; preds = %235
  %244 = load i64, i64* %28, align 8
  %245 = trunc i64 %244 to i32
  store i32 %245, i32* %11, align 4
  %246 = load i32, i32* %9, align 4
  store i32 %246, i32* %18, align 4
  %247 = load %struct.md_rdev*, %struct.md_rdev** %16, align 8
  store %struct.md_rdev* %247, %struct.md_rdev** %14, align 8
  br label %248

248:                                              ; preds = %243, %235
  %249 = load i32, i32* %17, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %252, label %251

251:                                              ; preds = %248
  br label %345

252:                                              ; preds = %248
  br label %253

253:                                              ; preds = %252, %234
  br label %342

254:                                              ; preds = %189
  %255 = load i32, i32* %10, align 4
  store i32 %255, i32* %11, align 4
  br label %256

256:                                              ; preds = %254
  %257 = load i32, i32* %17, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %260, label %259

259:                                              ; preds = %256
  br label %345

260:                                              ; preds = %256
  %261 = load %struct.md_rdev*, %struct.md_rdev** %16, align 8
  %262 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %261, i32 0, i32 2
  %263 = load i32, i32* %262, align 4
  %264 = call i32 @bdev_get_queue(i32 %263)
  %265 = call i32 @blk_queue_nonrot(i32 %264)
  store i32 %265, i32* %27, align 4
  %266 = load i32, i32* %27, align 4
  %267 = load i32, i32* %20, align 4
  %268 = or i32 %267, %266
  store i32 %268, i32* %20, align 4
  %269 = load %struct.md_rdev*, %struct.md_rdev** %16, align 8
  %270 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %269, i32 0, i32 1
  %271 = call i32 @atomic_read(i32* %270)
  store i32 %271, i32* %26, align 4
  %272 = load i32, i32* %21, align 4
  %273 = load i32, i32* %26, align 4
  %274 = icmp ugt i32 %272, %273
  br i1 %274, label %275, label %282

275:                                              ; preds = %260
  %276 = load i32, i32* %27, align 4
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %282

278:                                              ; preds = %275
  %279 = load i32, i32* %26, align 4
  store i32 %279, i32* %21, align 4
  %280 = load i32, i32* %9, align 4
  store i32 %280, i32* %19, align 4
  %281 = load %struct.md_rdev*, %struct.md_rdev** %16, align 8
  store %struct.md_rdev* %281, %struct.md_rdev** %15, align 8
  br label %282

282:                                              ; preds = %278, %275, %260
  %283 = load i32, i32* %18, align 4
  %284 = icmp sge i32 %283, 0
  br i1 %284, label %285, label %290

285:                                              ; preds = %282
  %286 = load i32, i32* @R10BIO_FailFast, align 4
  %287 = load %struct.r10bio*, %struct.r10bio** %5, align 8
  %288 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %287, i32 0, i32 4
  %289 = call i32 @set_bit(i32 %286, i32* %288)
  br label %290

290:                                              ; preds = %285, %282
  %291 = load %struct.geom*, %struct.geom** %22, align 8
  %292 = getelementptr inbounds %struct.geom, %struct.geom* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 4
  %294 = icmp sgt i32 %293, 1
  br i1 %294, label %295, label %299

295:                                              ; preds = %290
  %296 = load i32, i32* %26, align 4
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %299, label %298

298:                                              ; preds = %295
  store i64 0, i64* %12, align 8
  br label %333

299:                                              ; preds = %295, %290
  %300 = load %struct.geom*, %struct.geom** %22, align 8
  %301 = getelementptr inbounds %struct.geom, %struct.geom* %300, i32 0, i32 1
  %302 = load i32, i32* %301, align 4
  %303 = icmp sgt i32 %302, 1
  br i1 %303, label %304, label %313

304:                                              ; preds = %299
  %305 = load %struct.r10bio*, %struct.r10bio** %5, align 8
  %306 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %305, i32 0, i32 3
  %307 = load %struct.TYPE_6__*, %struct.TYPE_6__** %306, align 8
  %308 = load i32, i32* %9, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %307, i64 %309
  %311 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %310, i32 0, i32 2
  %312 = load i64, i64* %311, align 8
  store i64 %312, i64* %12, align 8
  br label %332

313:                                              ; preds = %299
  %314 = load %struct.r10bio*, %struct.r10bio** %5, align 8
  %315 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %314, i32 0, i32 3
  %316 = load %struct.TYPE_6__*, %struct.TYPE_6__** %315, align 8
  %317 = load i32, i32* %9, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %316, i64 %318
  %320 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %319, i32 0, i32 2
  %321 = load i64, i64* %320, align 8
  %322 = load %struct.r10conf*, %struct.r10conf** %4, align 8
  %323 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %322, i32 0, i32 2
  %324 = load %struct.TYPE_7__*, %struct.TYPE_7__** %323, align 8
  %325 = load i32, i32* %8, align 4
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %324, i64 %326
  %328 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %327, i32 0, i32 0
  %329 = load i64, i64* %328, align 8
  %330 = sub nsw i64 %321, %329
  %331 = call i64 @abs(i64 %330)
  store i64 %331, i64* %12, align 8
  br label %332

332:                                              ; preds = %313, %304
  br label %333

333:                                              ; preds = %332, %298
  %334 = load i64, i64* %12, align 8
  %335 = load i64, i64* %13, align 8
  %336 = icmp slt i64 %334, %335
  br i1 %336, label %337, label %341

337:                                              ; preds = %333
  %338 = load i64, i64* %12, align 8
  store i64 %338, i64* %13, align 8
  %339 = load i32, i32* %9, align 4
  store i32 %339, i32* %18, align 4
  %340 = load %struct.md_rdev*, %struct.md_rdev** %16, align 8
  store %struct.md_rdev* %340, %struct.md_rdev** %14, align 8
  br label %341

341:                                              ; preds = %337, %333
  br label %342

342:                                              ; preds = %341, %253, %207, %188, %165, %103
  %343 = load i32, i32* %9, align 4
  %344 = add nsw i32 %343, 1
  store i32 %344, i32* %9, align 4
  br label %86

345:                                              ; preds = %259, %251, %86
  %346 = load i32, i32* %9, align 4
  %347 = load %struct.r10conf*, %struct.r10conf** %4, align 8
  %348 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %347, i32 0, i32 1
  %349 = load i32, i32* %348, align 8
  %350 = icmp sge i32 %346, %349
  br i1 %350, label %351, label %361

351:                                              ; preds = %345
  %352 = load i32, i32* %20, align 4
  %353 = icmp ne i32 %352, 0
  br i1 %353, label %354, label %357

354:                                              ; preds = %351
  %355 = load i32, i32* %19, align 4
  store i32 %355, i32* %9, align 4
  %356 = load %struct.md_rdev*, %struct.md_rdev** %15, align 8
  store %struct.md_rdev* %356, %struct.md_rdev** %16, align 8
  br label %360

357:                                              ; preds = %351
  %358 = load i32, i32* %18, align 4
  store i32 %358, i32* %9, align 4
  %359 = load %struct.md_rdev*, %struct.md_rdev** %14, align 8
  store %struct.md_rdev* %359, %struct.md_rdev** %16, align 8
  br label %360

360:                                              ; preds = %357, %354
  br label %361

361:                                              ; preds = %360, %345
  %362 = load i32, i32* %9, align 4
  %363 = icmp sge i32 %362, 0
  br i1 %363, label %364, label %371

364:                                              ; preds = %361
  %365 = load %struct.md_rdev*, %struct.md_rdev** %16, align 8
  %366 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %365, i32 0, i32 1
  %367 = call i32 @atomic_inc(i32* %366)
  %368 = load i32, i32* %9, align 4
  %369 = load %struct.r10bio*, %struct.r10bio** %5, align 8
  %370 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %369, i32 0, i32 2
  store i32 %368, i32* %370, align 4
  br label %372

371:                                              ; preds = %361
  store %struct.md_rdev* null, %struct.md_rdev** %16, align 8
  br label %372

372:                                              ; preds = %371, %364
  %373 = call i32 (...) @rcu_read_unlock()
  %374 = load i32, i32* %11, align 4
  %375 = load i32*, i32** %6, align 8
  store i32 %374, i32* %375, align 4
  %376 = load %struct.md_rdev*, %struct.md_rdev** %16, align 8
  ret %struct.md_rdev* %376
}

declare dso_local i32 @raid10_find_phys(%struct.r10conf*, %struct.r10bio*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i64 @mddev_is_clustered(%struct.TYPE_8__*) #1

declare dso_local %struct.md_rdev* @rcu_dereference(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @is_badblock(%struct.md_rdev*, i64, i32, i64*, i32*) #1

declare dso_local i32 @blk_queue_nonrot(i32) #1

declare dso_local i32 @bdev_get_queue(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @abs(i64) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
