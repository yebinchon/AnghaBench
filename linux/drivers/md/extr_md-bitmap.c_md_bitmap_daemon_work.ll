; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md-bitmap.c_md_bitmap_daemon_work.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md-bitmap.c_md_bitmap_daemon_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { %struct.TYPE_13__, %struct.TYPE_12__*, %struct.bitmap* }
%struct.TYPE_13__ = type { i64, i32, i64 }
%struct.TYPE_12__ = type { i64 }
%struct.bitmap = type { i32, %struct.TYPE_11__, i32, i64, %struct.bitmap_counts, i32, %struct.TYPE_9__*, i64 }
%struct.TYPE_11__ = type { i64, i32*, i32 }
%struct.bitmap_counts = type { i64, i32, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_14__ = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@MAX_SCHEDULE_TIMEOUT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"md bitmap_daemon_work\00", align 1
@BITMAP_PAGE_PENDING = common dso_local global i32 0, align 4
@BITMAP_PAGE_NEEDWRITE = common dso_local global i32 0, align 4
@PAGE_COUNTER_RATIO = common dso_local global i64 0, align 8
@PAGE_COUNTER_SHIFT = common dso_local global i64 0, align 8
@PAGE_COUNTER_MASK = common dso_local global i64 0, align 8
@BITMAP_STALE = common dso_local global i32 0, align 4
@BITMAP_PAGE_DIRTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @md_bitmap_daemon_work(%struct.mddev* %0) #0 {
  %2 = alloca %struct.mddev*, align 8
  %3 = alloca %struct.bitmap*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bitmap_counts*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.mddev* %0, %struct.mddev** %2, align 8
  %11 = load %struct.mddev*, %struct.mddev** %2, align 8
  %12 = getelementptr inbounds %struct.mddev, %struct.mddev* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 1
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.mddev*, %struct.mddev** %2, align 8
  %16 = getelementptr inbounds %struct.mddev, %struct.mddev* %15, i32 0, i32 2
  %17 = load %struct.bitmap*, %struct.bitmap** %16, align 8
  store %struct.bitmap* %17, %struct.bitmap** %3, align 8
  %18 = load %struct.bitmap*, %struct.bitmap** %3, align 8
  %19 = icmp eq %struct.bitmap* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %1
  %21 = load %struct.mddev*, %struct.mddev** %2, align 8
  %22 = getelementptr inbounds %struct.mddev, %struct.mddev* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 1
  %24 = call i32 @mutex_unlock(i32* %23)
  br label %293

25:                                               ; preds = %1
  %26 = load i64, i64* @jiffies, align 8
  %27 = load %struct.bitmap*, %struct.bitmap** %3, align 8
  %28 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %27, i32 0, i32 7
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.mddev*, %struct.mddev** %2, align 8
  %31 = getelementptr inbounds %struct.mddev, %struct.mddev* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %29, %33
  %35 = call i64 @time_before(i64 %26, i64 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %25
  br label %274

38:                                               ; preds = %25
  %39 = load i64, i64* @jiffies, align 8
  %40 = load %struct.bitmap*, %struct.bitmap** %3, align 8
  %41 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %40, i32 0, i32 7
  store i64 %39, i64* %41, align 8
  %42 = load %struct.bitmap*, %struct.bitmap** %3, align 8
  %43 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %38
  %47 = load i64, i64* @MAX_SCHEDULE_TIMEOUT, align 8
  %48 = load %struct.mddev*, %struct.mddev** %2, align 8
  %49 = getelementptr inbounds %struct.mddev, %struct.mddev* %48, i32 0, i32 1
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  store i64 %47, i64* %51, align 8
  br label %274

52:                                               ; preds = %38
  %53 = load %struct.bitmap*, %struct.bitmap** %3, align 8
  %54 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %53, i32 0, i32 0
  store i32 1, i32* %54, align 8
  %55 = load %struct.bitmap*, %struct.bitmap** %3, align 8
  %56 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %55, i32 0, i32 6
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %52
  %62 = load %struct.bitmap*, %struct.bitmap** %3, align 8
  %63 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %62, i32 0, i32 6
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @blk_add_trace_msg(i64 %66, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %68

68:                                               ; preds = %61, %52
  store i64 0, i64* %4, align 8
  br label %69

69:                                               ; preds = %88, %68
  %70 = load i64, i64* %4, align 8
  %71 = load %struct.bitmap*, %struct.bitmap** %3, align 8
  %72 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ult i64 %70, %74
  br i1 %75, label %76, label %91

76:                                               ; preds = %69
  %77 = load %struct.bitmap*, %struct.bitmap** %3, align 8
  %78 = load i64, i64* %4, align 8
  %79 = load i32, i32* @BITMAP_PAGE_PENDING, align 4
  %80 = call i64 @test_and_clear_page_attr(%struct.bitmap* %77, i64 %78, i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %76
  %83 = load %struct.bitmap*, %struct.bitmap** %3, align 8
  %84 = load i64, i64* %4, align 8
  %85 = load i32, i32* @BITMAP_PAGE_NEEDWRITE, align 4
  %86 = call i32 @set_page_attr(%struct.bitmap* %83, i64 %84, i32 %85)
  br label %87

87:                                               ; preds = %82, %76
  br label %88

88:                                               ; preds = %87
  %89 = load i64, i64* %4, align 8
  %90 = add i64 %89, 1
  store i64 %90, i64* %4, align 8
  br label %69

91:                                               ; preds = %69
  %92 = load %struct.bitmap*, %struct.bitmap** %3, align 8
  %93 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %92, i32 0, i32 3
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %128

96:                                               ; preds = %91
  %97 = load %struct.mddev*, %struct.mddev** %2, align 8
  %98 = getelementptr inbounds %struct.mddev, %struct.mddev* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %128

102:                                              ; preds = %96
  %103 = load %struct.bitmap*, %struct.bitmap** %3, align 8
  %104 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %103, i32 0, i32 3
  store i64 0, i64* %104, align 8
  %105 = load %struct.bitmap*, %struct.bitmap** %3, align 8
  %106 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  %109 = icmp ne i32* %108, null
  br i1 %109, label %110, label %127

110:                                              ; preds = %102
  %111 = load %struct.bitmap*, %struct.bitmap** %3, align 8
  %112 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = call %struct.TYPE_14__* @kmap_atomic(i32 %114)
  store %struct.TYPE_14__* %115, %struct.TYPE_14__** %8, align 8
  %116 = load %struct.bitmap*, %struct.bitmap** %3, align 8
  %117 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %116, i32 0, i32 5
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @cpu_to_le64(i32 %118)
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 0
  store i32 %119, i32* %121, align 4
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %123 = call i32 @kunmap_atomic(%struct.TYPE_14__* %122)
  %124 = load %struct.bitmap*, %struct.bitmap** %3, align 8
  %125 = load i32, i32* @BITMAP_PAGE_NEEDWRITE, align 4
  %126 = call i32 @set_page_attr(%struct.bitmap* %124, i64 0, i32 %125)
  br label %127

127:                                              ; preds = %110, %102
  br label %128

128:                                              ; preds = %127, %96, %91
  %129 = load %struct.bitmap*, %struct.bitmap** %3, align 8
  %130 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %129, i32 0, i32 4
  store %struct.bitmap_counts* %130, %struct.bitmap_counts** %7, align 8
  %131 = load %struct.bitmap_counts*, %struct.bitmap_counts** %7, align 8
  %132 = getelementptr inbounds %struct.bitmap_counts, %struct.bitmap_counts* %131, i32 0, i32 2
  %133 = call i32 @spin_lock_irq(i32* %132)
  store i64 0, i64* %5, align 8
  store i64 0, i64* %4, align 8
  br label %134

134:                                              ; preds = %221, %128
  %135 = load i64, i64* %4, align 8
  %136 = load %struct.bitmap_counts*, %struct.bitmap_counts** %7, align 8
  %137 = getelementptr inbounds %struct.bitmap_counts, %struct.bitmap_counts* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = icmp ult i64 %135, %138
  br i1 %139, label %140, label %224

140:                                              ; preds = %134
  %141 = load i64, i64* %4, align 8
  %142 = trunc i64 %141 to i32
  %143 = load %struct.bitmap_counts*, %struct.bitmap_counts** %7, align 8
  %144 = getelementptr inbounds %struct.bitmap_counts, %struct.bitmap_counts* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = shl i32 %142, %145
  store i32 %146, i32* %10, align 4
  %147 = load i64, i64* %4, align 8
  %148 = load i64, i64* %5, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %150, label %177

150:                                              ; preds = %140
  %151 = load i64, i64* @PAGE_COUNTER_RATIO, align 8
  %152 = load i64, i64* %5, align 8
  %153 = add i64 %152, %151
  store i64 %153, i64* %5, align 8
  %154 = load %struct.bitmap_counts*, %struct.bitmap_counts** %7, align 8
  %155 = getelementptr inbounds %struct.bitmap_counts, %struct.bitmap_counts* %154, i32 0, i32 3
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %155, align 8
  %157 = load i64, i64* %4, align 8
  %158 = load i64, i64* @PAGE_COUNTER_SHIFT, align 8
  %159 = lshr i64 %157, %158
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %168, label %164

164:                                              ; preds = %150
  %165 = load i64, i64* @PAGE_COUNTER_MASK, align 8
  %166 = load i64, i64* %4, align 8
  %167 = or i64 %166, %165
  store i64 %167, i64* %4, align 8
  br label %221

168:                                              ; preds = %150
  %169 = load %struct.bitmap_counts*, %struct.bitmap_counts** %7, align 8
  %170 = getelementptr inbounds %struct.bitmap_counts, %struct.bitmap_counts* %169, i32 0, i32 3
  %171 = load %struct.TYPE_10__*, %struct.TYPE_10__** %170, align 8
  %172 = load i64, i64* %4, align 8
  %173 = load i64, i64* @PAGE_COUNTER_SHIFT, align 8
  %174 = lshr i64 %172, %173
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 0
  store i64 0, i64* %176, align 8
  br label %177

177:                                              ; preds = %168, %140
  %178 = load %struct.bitmap_counts*, %struct.bitmap_counts** %7, align 8
  %179 = load i32, i32* %10, align 4
  %180 = call i32* @md_bitmap_get_counter(%struct.bitmap_counts* %178, i32 %179, i32* %6, i32 0)
  store i32* %180, i32** %9, align 8
  %181 = load i32*, i32** %9, align 8
  %182 = icmp ne i32* %181, null
  br i1 %182, label %187, label %183

183:                                              ; preds = %177
  %184 = load i64, i64* @PAGE_COUNTER_MASK, align 8
  %185 = load i64, i64* %4, align 8
  %186 = or i64 %185, %184
  store i64 %186, i64* %4, align 8
  br label %221

187:                                              ; preds = %177
  %188 = load i32*, i32** %9, align 8
  %189 = load i32, i32* %188, align 4
  %190 = icmp eq i32 %189, 1
  br i1 %190, label %191, label %204

191:                                              ; preds = %187
  %192 = load %struct.bitmap*, %struct.bitmap** %3, align 8
  %193 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %192, i32 0, i32 3
  %194 = load i64, i64* %193, align 8
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %204, label %196

196:                                              ; preds = %191
  %197 = load i32*, i32** %9, align 8
  store i32 0, i32* %197, align 4
  %198 = load %struct.bitmap_counts*, %struct.bitmap_counts** %7, align 8
  %199 = load i32, i32* %10, align 4
  %200 = call i32 @md_bitmap_count_page(%struct.bitmap_counts* %198, i32 %199, i32 -1)
  %201 = load %struct.bitmap*, %struct.bitmap** %3, align 8
  %202 = load i32, i32* %10, align 4
  %203 = call i32 @md_bitmap_file_clear_bit(%struct.bitmap* %201, i32 %202)
  br label %220

204:                                              ; preds = %191, %187
  %205 = load i32*, i32** %9, align 8
  %206 = load i32, i32* %205, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %219

208:                                              ; preds = %204
  %209 = load i32*, i32** %9, align 8
  %210 = load i32, i32* %209, align 4
  %211 = icmp sle i32 %210, 2
  br i1 %211, label %212, label %219

212:                                              ; preds = %208
  %213 = load i32*, i32** %9, align 8
  store i32 1, i32* %213, align 4
  %214 = load %struct.bitmap_counts*, %struct.bitmap_counts** %7, align 8
  %215 = load i32, i32* %10, align 4
  %216 = call i32 @md_bitmap_set_pending(%struct.bitmap_counts* %214, i32 %215)
  %217 = load %struct.bitmap*, %struct.bitmap** %3, align 8
  %218 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %217, i32 0, i32 0
  store i32 0, i32* %218, align 8
  br label %219

219:                                              ; preds = %212, %208, %204
  br label %220

220:                                              ; preds = %219, %196
  br label %221

221:                                              ; preds = %220, %183, %164
  %222 = load i64, i64* %4, align 8
  %223 = add i64 %222, 1
  store i64 %223, i64* %4, align 8
  br label %134

224:                                              ; preds = %134
  %225 = load %struct.bitmap_counts*, %struct.bitmap_counts** %7, align 8
  %226 = getelementptr inbounds %struct.bitmap_counts, %struct.bitmap_counts* %225, i32 0, i32 2
  %227 = call i32 @spin_unlock_irq(i32* %226)
  %228 = load %struct.bitmap*, %struct.bitmap** %3, align 8
  %229 = call i32 @md_bitmap_wait_writes(%struct.bitmap* %228)
  store i64 0, i64* %4, align 8
  br label %230

230:                                              ; preds = %270, %224
  %231 = load i64, i64* %4, align 8
  %232 = load %struct.bitmap*, %struct.bitmap** %3, align 8
  %233 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %232, i32 0, i32 1
  %234 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %233, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  %236 = icmp ult i64 %231, %235
  br i1 %236, label %237, label %244

237:                                              ; preds = %230
  %238 = load i32, i32* @BITMAP_STALE, align 4
  %239 = load %struct.bitmap*, %struct.bitmap** %3, align 8
  %240 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %239, i32 0, i32 2
  %241 = call i32 @test_bit(i32 %238, i32* %240)
  %242 = icmp ne i32 %241, 0
  %243 = xor i1 %242, true
  br label %244

244:                                              ; preds = %237, %230
  %245 = phi i1 [ false, %230 ], [ %243, %237 ]
  br i1 %245, label %246, label %273

246:                                              ; preds = %244
  %247 = load %struct.bitmap*, %struct.bitmap** %3, align 8
  %248 = load i64, i64* %4, align 8
  %249 = load i32, i32* @BITMAP_PAGE_DIRTY, align 4
  %250 = call i64 @test_page_attr(%struct.bitmap* %247, i64 %248, i32 %249)
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %253

252:                                              ; preds = %246
  br label %273

253:                                              ; preds = %246
  %254 = load %struct.bitmap*, %struct.bitmap** %3, align 8
  %255 = load i64, i64* %4, align 8
  %256 = load i32, i32* @BITMAP_PAGE_NEEDWRITE, align 4
  %257 = call i64 @test_and_clear_page_attr(%struct.bitmap* %254, i64 %255, i32 %256)
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %259, label %269

259:                                              ; preds = %253
  %260 = load %struct.bitmap*, %struct.bitmap** %3, align 8
  %261 = load %struct.bitmap*, %struct.bitmap** %3, align 8
  %262 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %261, i32 0, i32 1
  %263 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %262, i32 0, i32 1
  %264 = load i32*, i32** %263, align 8
  %265 = load i64, i64* %4, align 8
  %266 = getelementptr inbounds i32, i32* %264, i64 %265
  %267 = load i32, i32* %266, align 4
  %268 = call i32 @write_page(%struct.bitmap* %260, i32 %267, i32 0)
  br label %269

269:                                              ; preds = %259, %253
  br label %270

270:                                              ; preds = %269
  %271 = load i64, i64* %4, align 8
  %272 = add i64 %271, 1
  store i64 %272, i64* %4, align 8
  br label %230

273:                                              ; preds = %252, %244
  br label %274

274:                                              ; preds = %273, %46, %37
  %275 = load %struct.bitmap*, %struct.bitmap** %3, align 8
  %276 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 8
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %279, label %288

279:                                              ; preds = %274
  %280 = load %struct.mddev*, %struct.mddev** %2, align 8
  %281 = getelementptr inbounds %struct.mddev, %struct.mddev* %280, i32 0, i32 0
  %282 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %281, i32 0, i32 2
  %283 = load i64, i64* %282, align 8
  %284 = load %struct.mddev*, %struct.mddev** %2, align 8
  %285 = getelementptr inbounds %struct.mddev, %struct.mddev* %284, i32 0, i32 1
  %286 = load %struct.TYPE_12__*, %struct.TYPE_12__** %285, align 8
  %287 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %286, i32 0, i32 0
  store i64 %283, i64* %287, align 8
  br label %288

288:                                              ; preds = %279, %274
  %289 = load %struct.mddev*, %struct.mddev** %2, align 8
  %290 = getelementptr inbounds %struct.mddev, %struct.mddev* %289, i32 0, i32 0
  %291 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %290, i32 0, i32 1
  %292 = call i32 @mutex_unlock(i32* %291)
  br label %293

293:                                              ; preds = %288, %20
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @blk_add_trace_msg(i64, i8*) #1

declare dso_local i64 @test_and_clear_page_attr(%struct.bitmap*, i64, i32) #1

declare dso_local i32 @set_page_attr(%struct.bitmap*, i64, i32) #1

declare dso_local %struct.TYPE_14__* @kmap_atomic(i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @kunmap_atomic(%struct.TYPE_14__*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32* @md_bitmap_get_counter(%struct.bitmap_counts*, i32, i32*, i32) #1

declare dso_local i32 @md_bitmap_count_page(%struct.bitmap_counts*, i32, i32) #1

declare dso_local i32 @md_bitmap_file_clear_bit(%struct.bitmap*, i32) #1

declare dso_local i32 @md_bitmap_set_pending(%struct.bitmap_counts*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @md_bitmap_wait_writes(%struct.bitmap*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i64 @test_page_attr(%struct.bitmap*, i64, i32) #1

declare dso_local i32 @write_page(%struct.bitmap*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
