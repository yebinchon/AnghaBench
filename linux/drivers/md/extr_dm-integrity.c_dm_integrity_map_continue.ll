; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-integrity.c_dm_integrity_map_continue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-integrity.c_dm_integrity_map_continue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_integrity_io = type { i32, %struct.TYPE_12__, i32, i32, i32, i32, %struct.TYPE_9__, %struct.completion*, i64, i64, %struct.dm_integrity_c* }
%struct.TYPE_12__ = type { i32, i64 }
%struct.TYPE_9__ = type { i32 }
%struct.completion = type { i32 }
%struct.dm_integrity_c = type { i8, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_11__*, %struct.TYPE_8__*, i32, i32, %struct.TYPE_10__, i32, i32*, i64, i64 }
%struct.TYPE_11__ = type { i64, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.bio = type { i32, %struct.TYPE_9__, i32, i32, i32*, i32, i32 }
%struct.journal_entry = type { i32 }
%struct.bitmap_block_status = type { i32, i32, i32 }

@NOT_FOUND = common dso_local global i32 0, align 4
@BITMAP_OP_TEST_ALL_SET = common dso_local global i32 0, align 4
@REQ_INTEGRITY = common dso_local global i32 0, align 4
@integrity_end_io = common dso_local global i32 0, align 4
@SECTOR_SHIFT = common dso_local global i32 0, align 4
@SB_FLAG_RECALCULATING = common dso_local global i32 0, align 4
@BITMAP_OP_TEST_ALL_CLEAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_integrity_io*, i32)* @dm_integrity_map_continue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dm_integrity_map_continue(%struct.dm_integrity_io* %0, i32 %1) #0 {
  %3 = alloca %struct.dm_integrity_io*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dm_integrity_c*, align 8
  %6 = alloca %struct.bio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.completion, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.journal_entry*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca %struct.bitmap_block_status*, align 8
  store %struct.dm_integrity_io* %0, %struct.dm_integrity_io** %3, align 8
  store i32 %1, i32* %4, align 4
  %25 = load %struct.dm_integrity_io*, %struct.dm_integrity_io** %3, align 8
  %26 = getelementptr inbounds %struct.dm_integrity_io, %struct.dm_integrity_io* %25, i32 0, i32 10
  %27 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %26, align 8
  store %struct.dm_integrity_c* %27, %struct.dm_integrity_c** %5, align 8
  %28 = load %struct.dm_integrity_io*, %struct.dm_integrity_io** %3, align 8
  %29 = call %struct.bio* @dm_bio_from_per_bio_data(%struct.dm_integrity_io* %28, i32 80)
  store %struct.bio* %29, %struct.bio** %6, align 8
  %30 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %5, align 8
  %31 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %30, i32 0, i32 17
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %2
  %35 = load %struct.dm_integrity_io*, %struct.dm_integrity_io** %3, align 8
  %36 = getelementptr inbounds %struct.dm_integrity_io, %struct.dm_integrity_io* %35, i32 0, i32 9
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  %39 = xor i1 %38, true
  br label %40

40:                                               ; preds = %34, %2
  %41 = phi i1 [ false, %2 ], [ %39, %34 ]
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %58

45:                                               ; preds = %40
  %46 = load i32, i32* %4, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %45
  %49 = load %struct.dm_integrity_io*, %struct.dm_integrity_io** %3, align 8
  %50 = getelementptr inbounds %struct.dm_integrity_io, %struct.dm_integrity_io* %49, i32 0, i32 0
  %51 = call i32 @INIT_WORK(i32* %50, i32 (i32*)* @integrity_bio_wait)
  %52 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %5, align 8
  %53 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %52, i32 0, i32 7
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.dm_integrity_io*, %struct.dm_integrity_io** %3, align 8
  %56 = getelementptr inbounds %struct.dm_integrity_io, %struct.dm_integrity_io* %55, i32 0, i32 0
  %57 = call i32 @queue_work(i32 %54, i32* %56)
  br label %659

58:                                               ; preds = %45, %40
  br label %59

59:                                               ; preds = %654, %58
  %60 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %5, align 8
  %61 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %60, i32 0, i32 13
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = call i32 @spin_lock_irq(i32* %62)
  br label %64

64:                                               ; preds = %413, %128, %59
  %65 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %5, align 8
  %66 = call i32 @dm_integrity_failed(%struct.dm_integrity_c* %65)
  %67 = call i64 @unlikely(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %64
  %70 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %5, align 8
  %71 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %70, i32 0, i32 13
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = call i32 @spin_unlock_irq(i32* %72)
  %74 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %5, align 8
  %75 = load %struct.bio*, %struct.bio** %6, align 8
  %76 = call i32 @do_endio(%struct.dm_integrity_c* %74, %struct.bio* %75)
  br label %659

77:                                               ; preds = %64
  %78 = load %struct.bio*, %struct.bio** %6, align 8
  %79 = call i32 @bio_sectors(%struct.bio* %78)
  %80 = load %struct.dm_integrity_io*, %struct.dm_integrity_io** %3, align 8
  %81 = getelementptr inbounds %struct.dm_integrity_io, %struct.dm_integrity_io* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 0
  store i32 %79, i32* %82, align 8
  %83 = load i32, i32* @NOT_FOUND, align 4
  store i32 %83, i32* %9, align 4
  %84 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %5, align 8
  %85 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %84, i32 0, i32 0
  %86 = load i8, i8* %85, align 8
  %87 = sext i8 %86 to i32
  %88 = icmp eq i32 %87, 74
  %89 = zext i1 %88 to i32
  %90 = call i64 @likely(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %353

92:                                               ; preds = %77
  %93 = load %struct.dm_integrity_io*, %struct.dm_integrity_io** %3, align 8
  %94 = getelementptr inbounds %struct.dm_integrity_io, %struct.dm_integrity_io* %93, i32 0, i32 9
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %270

97:                                               ; preds = %92
  %98 = load %struct.dm_integrity_io*, %struct.dm_integrity_io** %3, align 8
  %99 = getelementptr inbounds %struct.dm_integrity_io, %struct.dm_integrity_io* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %5, align 8
  %103 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %102, i32 0, i32 16
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %5, align 8
  %106 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %105, i32 0, i32 9
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = shl i64 %104, %109
  %111 = call i32 @min(i32 %101, i64 %110)
  %112 = load %struct.dm_integrity_io*, %struct.dm_integrity_io** %3, align 8
  %113 = getelementptr inbounds %struct.dm_integrity_io, %struct.dm_integrity_io* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 0
  store i32 %111, i32* %114, align 8
  %115 = load %struct.dm_integrity_io*, %struct.dm_integrity_io** %3, align 8
  %116 = getelementptr inbounds %struct.dm_integrity_io, %struct.dm_integrity_io* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = icmp ne i32 %118, 0
  %120 = xor i1 %119, true
  %121 = zext i1 %120 to i32
  %122 = call i64 @unlikely(i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %131

124:                                              ; preds = %97
  %125 = load i32, i32* %4, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %124
  br label %367

128:                                              ; preds = %124
  %129 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %5, align 8
  %130 = call i32 @sleep_on_endio_wait(%struct.dm_integrity_c* %129)
  br label %64

131:                                              ; preds = %97
  %132 = load %struct.dm_integrity_io*, %struct.dm_integrity_io** %3, align 8
  %133 = getelementptr inbounds %struct.dm_integrity_io, %struct.dm_integrity_io* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %5, align 8
  %137 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %136, i32 0, i32 9
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = trunc i64 %140 to i32
  %142 = lshr i32 %135, %141
  store i32 %142, i32* %17, align 4
  %143 = load i32, i32* %17, align 4
  %144 = zext i32 %143 to i64
  %145 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %5, align 8
  %146 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %145, i32 0, i32 16
  %147 = load i64, i64* %146, align 8
  %148 = sub nsw i64 %147, %144
  store i64 %148, i64* %146, align 8
  %149 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %5, align 8
  %150 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  store i32 %151, i32* %7, align 4
  %152 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %5, align 8
  %153 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  store i32 %154, i32* %8, align 4
  %155 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %5, align 8
  %156 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* %17, align 4
  %159 = add i32 %157, %158
  store i32 %159, i32* %12, align 4
  %160 = load i32, i32* %12, align 4
  %161 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %5, align 8
  %162 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 4
  %164 = urem i32 %160, %163
  %165 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %5, align 8
  %166 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %165, i32 0, i32 2
  store i32 %164, i32* %166, align 8
  %167 = load i32, i32* %12, align 4
  %168 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %5, align 8
  %169 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 4
  %171 = udiv i32 %167, %170
  %172 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %5, align 8
  %173 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = add i32 %174, %171
  store i32 %175, i32* %173, align 4
  %176 = load i32, i32* %12, align 4
  %177 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %5, align 8
  %178 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %177, i32 0, i32 3
  %179 = load i32, i32* %178, align 4
  %180 = udiv i32 %176, %179
  %181 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %5, align 8
  %182 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %181, i32 0, i32 4
  %183 = load i32, i32* %182, align 8
  %184 = add i32 %183, %180
  store i32 %184, i32* %182, align 8
  %185 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %5, align 8
  %186 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %5, align 8
  %187 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %186, i32 0, i32 1
  %188 = call i32 @wraparound_section(%struct.dm_integrity_c* %185, i32* %187)
  %189 = load i32, i32* %7, align 4
  %190 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %5, align 8
  %191 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %190, i32 0, i32 3
  %192 = load i32, i32* %191, align 4
  %193 = mul i32 %189, %192
  %194 = load i32, i32* %8, align 4
  %195 = add i32 %193, %194
  store i32 %195, i32* %14, align 4
  %196 = load i32, i32* %7, align 4
  store i32 %196, i32* %15, align 4
  %197 = load i32, i32* %8, align 4
  store i32 %197, i32* %16, align 4
  store i32 0, i32* %13, align 4
  br label %198

198:                                              ; preds = %254, %131
  %199 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %5, align 8
  %200 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %5, align 8
  %201 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %200, i32 0, i32 15
  %202 = load i32*, i32** %201, align 8
  %203 = load i32, i32* %14, align 4
  %204 = zext i32 %203 to i64
  %205 = getelementptr inbounds i32, i32* %202, i64 %204
  %206 = load %struct.dm_integrity_io*, %struct.dm_integrity_io** %3, align 8
  %207 = getelementptr inbounds %struct.dm_integrity_io, %struct.dm_integrity_io* %206, i32 0, i32 1
  %208 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %207, i32 0, i32 1
  %209 = load i64, i64* %208, align 8
  %210 = load i32, i32* %13, align 4
  %211 = zext i32 %210 to i64
  %212 = add nsw i64 %209, %211
  %213 = call i32 @add_journal_node(%struct.dm_integrity_c* %199, i32* %205, i64 %212)
  %214 = load i32, i32* %14, align 4
  %215 = add i32 %214, 1
  store i32 %215, i32* %14, align 4
  %216 = load i32, i32* %14, align 4
  %217 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %5, align 8
  %218 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %217, i32 0, i32 6
  %219 = load i32, i32* %218, align 8
  %220 = icmp uge i32 %216, %219
  %221 = zext i1 %220 to i32
  %222 = call i64 @unlikely(i32 %221)
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %225

224:                                              ; preds = %198
  store i32 0, i32* %14, align 4
  br label %225

225:                                              ; preds = %224, %198
  %226 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %5, align 8
  %227 = load i32, i32* %15, align 4
  %228 = load i32, i32* %16, align 4
  %229 = call %struct.journal_entry* @access_journal_entry(%struct.dm_integrity_c* %226, i32 %227, i32 %228)
  store %struct.journal_entry* %229, %struct.journal_entry** %18, align 8
  %230 = load %struct.journal_entry*, %struct.journal_entry** %18, align 8
  %231 = call i32 @journal_entry_is_unused(%struct.journal_entry* %230)
  %232 = icmp ne i32 %231, 0
  %233 = xor i1 %232, true
  %234 = zext i1 %233 to i32
  %235 = call i32 @BUG_ON(i32 %234)
  %236 = load %struct.journal_entry*, %struct.journal_entry** %18, align 8
  %237 = call i32 @journal_entry_set_inprogress(%struct.journal_entry* %236)
  %238 = load i32, i32* %16, align 4
  %239 = add i32 %238, 1
  store i32 %239, i32* %16, align 4
  %240 = load i32, i32* %16, align 4
  %241 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %5, align 8
  %242 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %241, i32 0, i32 3
  %243 = load i32, i32* %242, align 4
  %244 = icmp eq i32 %240, %243
  %245 = zext i1 %244 to i32
  %246 = call i64 @unlikely(i32 %245)
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %253

248:                                              ; preds = %225
  store i32 0, i32* %16, align 4
  %249 = load i32, i32* %15, align 4
  %250 = add i32 %249, 1
  store i32 %250, i32* %15, align 4
  %251 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %5, align 8
  %252 = call i32 @wraparound_section(%struct.dm_integrity_c* %251, i32* %15)
  br label %253

253:                                              ; preds = %248, %225
  br label %254

254:                                              ; preds = %253
  %255 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %5, align 8
  %256 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %255, i32 0, i32 5
  %257 = load i32, i32* %256, align 4
  %258 = load i32, i32* %13, align 4
  %259 = add i32 %258, %257
  store i32 %259, i32* %13, align 4
  %260 = load %struct.dm_integrity_io*, %struct.dm_integrity_io** %3, align 8
  %261 = getelementptr inbounds %struct.dm_integrity_io, %struct.dm_integrity_io* %260, i32 0, i32 1
  %262 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = icmp ult i32 %259, %263
  br i1 %264, label %198, label %265

265:                                              ; preds = %254
  %266 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %5, align 8
  %267 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %266, i32 0, i32 13
  %268 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %267, i32 0, i32 0
  %269 = call i32 @spin_unlock_irq(i32* %268)
  br label %646

270:                                              ; preds = %92
  %271 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %5, align 8
  %272 = load %struct.dm_integrity_io*, %struct.dm_integrity_io** %3, align 8
  %273 = getelementptr inbounds %struct.dm_integrity_io, %struct.dm_integrity_io* %272, i32 0, i32 1
  %274 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %273, i32 0, i32 1
  %275 = load i64, i64* %274, align 8
  %276 = call i32 @find_journal_node(%struct.dm_integrity_c* %271, i64 %275, i64* %19)
  store i32 %276, i32* %9, align 4
  %277 = load i32, i32* %9, align 4
  %278 = load i32, i32* @NOT_FOUND, align 4
  %279 = icmp eq i32 %277, %278
  %280 = zext i1 %279 to i32
  %281 = call i64 @likely(i32 %280)
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %311

283:                                              ; preds = %270
  %284 = load %struct.dm_integrity_io*, %struct.dm_integrity_io** %3, align 8
  %285 = getelementptr inbounds %struct.dm_integrity_io, %struct.dm_integrity_io* %284, i32 0, i32 1
  %286 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 8
  %288 = zext i32 %287 to i64
  %289 = load i64, i64* %19, align 8
  %290 = load %struct.dm_integrity_io*, %struct.dm_integrity_io** %3, align 8
  %291 = getelementptr inbounds %struct.dm_integrity_io, %struct.dm_integrity_io* %290, i32 0, i32 1
  %292 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %291, i32 0, i32 1
  %293 = load i64, i64* %292, align 8
  %294 = sub nsw i64 %289, %293
  %295 = icmp sgt i64 %288, %294
  %296 = zext i1 %295 to i32
  %297 = call i64 @unlikely(i32 %296)
  %298 = icmp ne i64 %297, 0
  br i1 %298, label %299, label %310

299:                                              ; preds = %283
  %300 = load i64, i64* %19, align 8
  %301 = load %struct.dm_integrity_io*, %struct.dm_integrity_io** %3, align 8
  %302 = getelementptr inbounds %struct.dm_integrity_io, %struct.dm_integrity_io* %301, i32 0, i32 1
  %303 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %302, i32 0, i32 1
  %304 = load i64, i64* %303, align 8
  %305 = sub nsw i64 %300, %304
  %306 = trunc i64 %305 to i32
  %307 = load %struct.dm_integrity_io*, %struct.dm_integrity_io** %3, align 8
  %308 = getelementptr inbounds %struct.dm_integrity_io, %struct.dm_integrity_io* %307, i32 0, i32 1
  %309 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %308, i32 0, i32 0
  store i32 %306, i32* %309, align 8
  br label %310

310:                                              ; preds = %299, %283
  br label %351

311:                                              ; preds = %270
  %312 = load i32, i32* %9, align 4
  %313 = add i32 %312, 1
  store i32 %313, i32* %21, align 4
  %314 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %5, align 8
  %315 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %314, i32 0, i32 5
  %316 = load i32, i32* %315, align 4
  store i32 %316, i32* %20, align 4
  br label %317

317:                                              ; preds = %338, %311
  %318 = load i32, i32* %20, align 4
  %319 = load %struct.dm_integrity_io*, %struct.dm_integrity_io** %3, align 8
  %320 = getelementptr inbounds %struct.dm_integrity_io, %struct.dm_integrity_io* %319, i32 0, i32 1
  %321 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 8
  %323 = icmp ult i32 %318, %322
  br i1 %323, label %324, label %346

324:                                              ; preds = %317
  %325 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %5, align 8
  %326 = load i32, i32* %21, align 4
  %327 = load %struct.dm_integrity_io*, %struct.dm_integrity_io** %3, align 8
  %328 = getelementptr inbounds %struct.dm_integrity_io, %struct.dm_integrity_io* %327, i32 0, i32 1
  %329 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %328, i32 0, i32 1
  %330 = load i64, i64* %329, align 8
  %331 = load i32, i32* %20, align 4
  %332 = zext i32 %331 to i64
  %333 = add nsw i64 %330, %332
  %334 = call i32 @test_journal_node(%struct.dm_integrity_c* %325, i32 %326, i64 %333)
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %337, label %336

336:                                              ; preds = %324
  br label %346

337:                                              ; preds = %324
  br label %338

338:                                              ; preds = %337
  %339 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %5, align 8
  %340 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %339, i32 0, i32 5
  %341 = load i32, i32* %340, align 4
  %342 = load i32, i32* %20, align 4
  %343 = add i32 %342, %341
  store i32 %343, i32* %20, align 4
  %344 = load i32, i32* %21, align 4
  %345 = add i32 %344, 1
  store i32 %345, i32* %21, align 4
  br label %317

346:                                              ; preds = %336, %317
  %347 = load i32, i32* %20, align 4
  %348 = load %struct.dm_integrity_io*, %struct.dm_integrity_io** %3, align 8
  %349 = getelementptr inbounds %struct.dm_integrity_io, %struct.dm_integrity_io* %348, i32 0, i32 1
  %350 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %349, i32 0, i32 0
  store i32 %347, i32* %350, align 8
  br label %351

351:                                              ; preds = %346, %310
  br label %352

352:                                              ; preds = %351
  br label %353

353:                                              ; preds = %352, %77
  %354 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %5, align 8
  %355 = load %struct.dm_integrity_io*, %struct.dm_integrity_io** %3, align 8
  %356 = getelementptr inbounds %struct.dm_integrity_io, %struct.dm_integrity_io* %355, i32 0, i32 1
  %357 = call i32 @add_new_range(%struct.dm_integrity_c* %354, %struct.TYPE_12__* %356, i32 1)
  %358 = icmp ne i32 %357, 0
  %359 = xor i1 %358, true
  %360 = zext i1 %359 to i32
  %361 = call i64 @unlikely(i32 %360)
  %362 = icmp ne i64 %361, 0
  br i1 %362, label %363, label %420

363:                                              ; preds = %353
  %364 = load i32, i32* %4, align 4
  %365 = icmp ne i32 %364, 0
  br i1 %365, label %366, label %381

366:                                              ; preds = %363
  br label %367

367:                                              ; preds = %366, %127
  %368 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %5, align 8
  %369 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %368, i32 0, i32 13
  %370 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %369, i32 0, i32 0
  %371 = call i32 @spin_unlock_irq(i32* %370)
  %372 = load %struct.dm_integrity_io*, %struct.dm_integrity_io** %3, align 8
  %373 = getelementptr inbounds %struct.dm_integrity_io, %struct.dm_integrity_io* %372, i32 0, i32 0
  %374 = call i32 @INIT_WORK(i32* %373, i32 (i32*)* @integrity_bio_wait)
  %375 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %5, align 8
  %376 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %375, i32 0, i32 14
  %377 = load i32, i32* %376, align 4
  %378 = load %struct.dm_integrity_io*, %struct.dm_integrity_io** %3, align 8
  %379 = getelementptr inbounds %struct.dm_integrity_io, %struct.dm_integrity_io* %378, i32 0, i32 0
  %380 = call i32 @queue_work(i32 %377, i32* %379)
  br label %659

381:                                              ; preds = %363
  %382 = load i32, i32* %9, align 4
  %383 = load i32, i32* @NOT_FOUND, align 4
  %384 = icmp ne i32 %382, %383
  br i1 %384, label %385, label %392

385:                                              ; preds = %381
  %386 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %5, align 8
  %387 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %386, i32 0, i32 5
  %388 = load i32, i32* %387, align 4
  %389 = load %struct.dm_integrity_io*, %struct.dm_integrity_io** %3, align 8
  %390 = getelementptr inbounds %struct.dm_integrity_io, %struct.dm_integrity_io* %389, i32 0, i32 1
  %391 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %390, i32 0, i32 0
  store i32 %388, i32* %391, align 8
  br label %392

392:                                              ; preds = %385, %381
  %393 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %5, align 8
  %394 = load %struct.dm_integrity_io*, %struct.dm_integrity_io** %3, align 8
  %395 = getelementptr inbounds %struct.dm_integrity_io, %struct.dm_integrity_io* %394, i32 0, i32 1
  %396 = call i32 @wait_and_add_new_range(%struct.dm_integrity_c* %393, %struct.TYPE_12__* %395)
  %397 = load i32, i32* %9, align 4
  %398 = load i32, i32* @NOT_FOUND, align 4
  %399 = icmp ne i32 %397, %398
  br i1 %399, label %400, label %419

400:                                              ; preds = %392
  %401 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %5, align 8
  %402 = load %struct.dm_integrity_io*, %struct.dm_integrity_io** %3, align 8
  %403 = getelementptr inbounds %struct.dm_integrity_io, %struct.dm_integrity_io* %402, i32 0, i32 1
  %404 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %403, i32 0, i32 1
  %405 = load i64, i64* %404, align 8
  %406 = call i32 @find_journal_node(%struct.dm_integrity_c* %401, i64 %405, i64* %22)
  store i32 %406, i32* %23, align 4
  %407 = load i32, i32* %23, align 4
  %408 = load i32, i32* %9, align 4
  %409 = icmp ne i32 %407, %408
  %410 = zext i1 %409 to i32
  %411 = call i64 @unlikely(i32 %410)
  %412 = icmp ne i64 %411, 0
  br i1 %412, label %413, label %418

413:                                              ; preds = %400
  %414 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %5, align 8
  %415 = load %struct.dm_integrity_io*, %struct.dm_integrity_io** %3, align 8
  %416 = getelementptr inbounds %struct.dm_integrity_io, %struct.dm_integrity_io* %415, i32 0, i32 1
  %417 = call i32 @remove_range_unlocked(%struct.dm_integrity_c* %414, %struct.TYPE_12__* %416)
  br label %64

418:                                              ; preds = %400
  br label %419

419:                                              ; preds = %418, %392
  br label %420

420:                                              ; preds = %419, %353
  %421 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %5, align 8
  %422 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %421, i32 0, i32 13
  %423 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %422, i32 0, i32 0
  %424 = call i32 @spin_unlock_irq(i32* %423)
  %425 = load i32, i32* %9, align 4
  %426 = load i32, i32* @NOT_FOUND, align 4
  %427 = icmp ne i32 %425, %426
  %428 = zext i1 %427 to i32
  %429 = call i64 @unlikely(i32 %428)
  %430 = icmp ne i64 %429, 0
  br i1 %430, label %431, label %442

431:                                              ; preds = %420
  %432 = load i32, i32* %9, align 4
  %433 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %5, align 8
  %434 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %433, i32 0, i32 3
  %435 = load i32, i32* %434, align 4
  %436 = udiv i32 %432, %435
  store i32 %436, i32* %7, align 4
  %437 = load i32, i32* %9, align 4
  %438 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %5, align 8
  %439 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %438, i32 0, i32 3
  %440 = load i32, i32* %439, align 4
  %441 = urem i32 %437, %440
  store i32 %441, i32* %8, align 4
  br label %646

442:                                              ; preds = %420
  %443 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %5, align 8
  %444 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %443, i32 0, i32 0
  %445 = load i8, i8* %444, align 8
  %446 = sext i8 %445 to i32
  %447 = icmp eq i32 %446, 66
  br i1 %447, label %448, label %493

448:                                              ; preds = %442
  %449 = load %struct.dm_integrity_io*, %struct.dm_integrity_io** %3, align 8
  %450 = getelementptr inbounds %struct.dm_integrity_io, %struct.dm_integrity_io* %449, i32 0, i32 9
  %451 = load i64, i64* %450, align 8
  %452 = icmp ne i64 %451, 0
  br i1 %452, label %453, label %493

453:                                              ; preds = %448
  %454 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %5, align 8
  %455 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %5, align 8
  %456 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %455, i32 0, i32 12
  %457 = load i32, i32* %456, align 4
  %458 = load %struct.dm_integrity_io*, %struct.dm_integrity_io** %3, align 8
  %459 = getelementptr inbounds %struct.dm_integrity_io, %struct.dm_integrity_io* %458, i32 0, i32 1
  %460 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %459, i32 0, i32 1
  %461 = load i64, i64* %460, align 8
  %462 = load %struct.dm_integrity_io*, %struct.dm_integrity_io** %3, align 8
  %463 = getelementptr inbounds %struct.dm_integrity_io, %struct.dm_integrity_io* %462, i32 0, i32 1
  %464 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %463, i32 0, i32 0
  %465 = load i32, i32* %464, align 8
  %466 = load i32, i32* @BITMAP_OP_TEST_ALL_SET, align 4
  %467 = call i32 @block_bitmap_op(%struct.dm_integrity_c* %454, i32 %457, i64 %461, i32 %465, i32 %466)
  %468 = icmp ne i32 %467, 0
  br i1 %468, label %492, label %469

469:                                              ; preds = %453
  %470 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %5, align 8
  %471 = load %struct.dm_integrity_io*, %struct.dm_integrity_io** %3, align 8
  %472 = getelementptr inbounds %struct.dm_integrity_io, %struct.dm_integrity_io* %471, i32 0, i32 1
  %473 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %472, i32 0, i32 1
  %474 = load i64, i64* %473, align 8
  %475 = call %struct.bitmap_block_status* @sector_to_bitmap_block(%struct.dm_integrity_c* %470, i64 %474)
  store %struct.bitmap_block_status* %475, %struct.bitmap_block_status** %24, align 8
  %476 = load %struct.bitmap_block_status*, %struct.bitmap_block_status** %24, align 8
  %477 = getelementptr inbounds %struct.bitmap_block_status, %struct.bitmap_block_status* %476, i32 0, i32 1
  %478 = call i32 @spin_lock(i32* %477)
  %479 = load %struct.bitmap_block_status*, %struct.bitmap_block_status** %24, align 8
  %480 = getelementptr inbounds %struct.bitmap_block_status, %struct.bitmap_block_status* %479, i32 0, i32 2
  %481 = load %struct.bio*, %struct.bio** %6, align 8
  %482 = call i32 @bio_list_add(i32* %480, %struct.bio* %481)
  %483 = load %struct.bitmap_block_status*, %struct.bitmap_block_status** %24, align 8
  %484 = getelementptr inbounds %struct.bitmap_block_status, %struct.bitmap_block_status* %483, i32 0, i32 1
  %485 = call i32 @spin_unlock(i32* %484)
  %486 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %5, align 8
  %487 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %486, i32 0, i32 11
  %488 = load i32, i32* %487, align 8
  %489 = load %struct.bitmap_block_status*, %struct.bitmap_block_status** %24, align 8
  %490 = getelementptr inbounds %struct.bitmap_block_status, %struct.bitmap_block_status* %489, i32 0, i32 0
  %491 = call i32 @queue_work(i32 %488, i32* %490)
  br label %659

492:                                              ; preds = %453
  br label %493

493:                                              ; preds = %492, %448, %442
  %494 = call i64 @ATOMIC_INIT(i32 2)
  %495 = load %struct.dm_integrity_io*, %struct.dm_integrity_io** %3, align 8
  %496 = getelementptr inbounds %struct.dm_integrity_io, %struct.dm_integrity_io* %495, i32 0, i32 8
  store i64 %494, i64* %496, align 8
  %497 = load i32, i32* %11, align 4
  %498 = icmp ne i32 %497, 0
  br i1 %498, label %499, label %503

499:                                              ; preds = %493
  %500 = call i32 @init_completion(%struct.completion* %10)
  %501 = load %struct.dm_integrity_io*, %struct.dm_integrity_io** %3, align 8
  %502 = getelementptr inbounds %struct.dm_integrity_io, %struct.dm_integrity_io* %501, i32 0, i32 7
  store %struct.completion* %10, %struct.completion** %502, align 8
  br label %506

503:                                              ; preds = %493
  %504 = load %struct.dm_integrity_io*, %struct.dm_integrity_io** %3, align 8
  %505 = getelementptr inbounds %struct.dm_integrity_io, %struct.dm_integrity_io* %504, i32 0, i32 7
  store %struct.completion* null, %struct.completion** %505, align 8
  br label %506

506:                                              ; preds = %503, %499
  %507 = load %struct.dm_integrity_io*, %struct.dm_integrity_io** %3, align 8
  %508 = getelementptr inbounds %struct.dm_integrity_io, %struct.dm_integrity_io* %507, i32 0, i32 6
  %509 = load %struct.bio*, %struct.bio** %6, align 8
  %510 = getelementptr inbounds %struct.bio, %struct.bio* %509, i32 0, i32 1
  %511 = bitcast %struct.TYPE_9__* %508 to i8*
  %512 = bitcast %struct.TYPE_9__* %510 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %511, i8* align 4 %512, i64 4, i1 false)
  %513 = load %struct.bio*, %struct.bio** %6, align 8
  %514 = getelementptr inbounds %struct.bio, %struct.bio* %513, i32 0, i32 6
  %515 = load i32, i32* %514, align 4
  %516 = load %struct.dm_integrity_io*, %struct.dm_integrity_io** %3, align 8
  %517 = getelementptr inbounds %struct.dm_integrity_io, %struct.dm_integrity_io* %516, i32 0, i32 5
  store i32 %515, i32* %517, align 4
  %518 = load %struct.bio*, %struct.bio** %6, align 8
  %519 = getelementptr inbounds %struct.bio, %struct.bio* %518, i32 0, i32 5
  %520 = load i32, i32* %519, align 8
  %521 = load %struct.dm_integrity_io*, %struct.dm_integrity_io** %3, align 8
  %522 = getelementptr inbounds %struct.dm_integrity_io, %struct.dm_integrity_io* %521, i32 0, i32 4
  store i32 %520, i32* %522, align 8
  %523 = load %struct.bio*, %struct.bio** %6, align 8
  %524 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %5, align 8
  %525 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %524, i32 0, i32 10
  %526 = load %struct.TYPE_8__*, %struct.TYPE_8__** %525, align 8
  %527 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %526, i32 0, i32 0
  %528 = load i32, i32* %527, align 4
  %529 = call i32 @bio_set_dev(%struct.bio* %523, i32 %528)
  %530 = load %struct.bio*, %struct.bio** %6, align 8
  %531 = call i32 @bio_integrity(%struct.bio* %530)
  %532 = load %struct.dm_integrity_io*, %struct.dm_integrity_io** %3, align 8
  %533 = getelementptr inbounds %struct.dm_integrity_io, %struct.dm_integrity_io* %532, i32 0, i32 3
  store i32 %531, i32* %533, align 4
  %534 = load %struct.bio*, %struct.bio** %6, align 8
  %535 = getelementptr inbounds %struct.bio, %struct.bio* %534, i32 0, i32 4
  store i32* null, i32** %535, align 8
  %536 = load i32, i32* @REQ_INTEGRITY, align 4
  %537 = xor i32 %536, -1
  %538 = load %struct.bio*, %struct.bio** %6, align 8
  %539 = getelementptr inbounds %struct.bio, %struct.bio* %538, i32 0, i32 3
  %540 = load i32, i32* %539, align 4
  %541 = and i32 %540, %537
  store i32 %541, i32* %539, align 4
  %542 = load %struct.bio*, %struct.bio** %6, align 8
  %543 = getelementptr inbounds %struct.bio, %struct.bio* %542, i32 0, i32 2
  %544 = load i32, i32* %543, align 8
  %545 = load %struct.dm_integrity_io*, %struct.dm_integrity_io** %3, align 8
  %546 = getelementptr inbounds %struct.dm_integrity_io, %struct.dm_integrity_io* %545, i32 0, i32 2
  store i32 %544, i32* %546, align 8
  %547 = load i32, i32* @integrity_end_io, align 4
  %548 = load %struct.bio*, %struct.bio** %6, align 8
  %549 = getelementptr inbounds %struct.bio, %struct.bio* %548, i32 0, i32 2
  store i32 %547, i32* %549, align 8
  %550 = load %struct.dm_integrity_io*, %struct.dm_integrity_io** %3, align 8
  %551 = getelementptr inbounds %struct.dm_integrity_io, %struct.dm_integrity_io* %550, i32 0, i32 1
  %552 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %551, i32 0, i32 0
  %553 = load i32, i32* %552, align 8
  %554 = load i32, i32* @SECTOR_SHIFT, align 4
  %555 = shl i32 %553, %554
  %556 = load %struct.bio*, %struct.bio** %6, align 8
  %557 = getelementptr inbounds %struct.bio, %struct.bio* %556, i32 0, i32 1
  %558 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %557, i32 0, i32 0
  store i32 %555, i32* %558, align 4
  %559 = load %struct.bio*, %struct.bio** %6, align 8
  %560 = call i32 @generic_make_request(%struct.bio* %559)
  %561 = load i32, i32* %11, align 4
  %562 = icmp ne i32 %561, 0
  br i1 %562, label %563, label %635

563:                                              ; preds = %506
  %564 = call i32 @wait_for_completion_io(%struct.completion* %10)
  %565 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %5, align 8
  %566 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %565, i32 0, i32 9
  %567 = load %struct.TYPE_11__*, %struct.TYPE_11__** %566, align 8
  %568 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %567, i32 0, i32 1
  %569 = load i32, i32* %568, align 8
  %570 = load i32, i32* @SB_FLAG_RECALCULATING, align 4
  %571 = call i32 @cpu_to_le32(i32 %570)
  %572 = and i32 %569, %571
  %573 = icmp ne i32 %572, 0
  br i1 %573, label %574, label %593

574:                                              ; preds = %563
  %575 = load %struct.dm_integrity_io*, %struct.dm_integrity_io** %3, align 8
  %576 = getelementptr inbounds %struct.dm_integrity_io, %struct.dm_integrity_io* %575, i32 0, i32 1
  %577 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %576, i32 0, i32 1
  %578 = load i64, i64* %577, align 8
  %579 = load %struct.dm_integrity_io*, %struct.dm_integrity_io** %3, align 8
  %580 = getelementptr inbounds %struct.dm_integrity_io, %struct.dm_integrity_io* %579, i32 0, i32 1
  %581 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %580, i32 0, i32 0
  %582 = load i32, i32* %581, align 8
  %583 = zext i32 %582 to i64
  %584 = add nsw i64 %578, %583
  %585 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %5, align 8
  %586 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %585, i32 0, i32 9
  %587 = load %struct.TYPE_11__*, %struct.TYPE_11__** %586, align 8
  %588 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %587, i32 0, i32 2
  %589 = load i32, i32* %588, align 4
  %590 = call i64 @le64_to_cpu(i32 %589)
  %591 = icmp sgt i64 %584, %590
  br i1 %591, label %592, label %593

592:                                              ; preds = %574
  br label %631

593:                                              ; preds = %574, %563
  %594 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %5, align 8
  %595 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %594, i32 0, i32 0
  %596 = load i8, i8* %595, align 8
  %597 = sext i8 %596 to i32
  %598 = icmp eq i32 %597, 66
  br i1 %598, label %599, label %617

599:                                              ; preds = %593
  %600 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %5, align 8
  %601 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %5, align 8
  %602 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %601, i32 0, i32 8
  %603 = load i32, i32* %602, align 8
  %604 = load %struct.dm_integrity_io*, %struct.dm_integrity_io** %3, align 8
  %605 = getelementptr inbounds %struct.dm_integrity_io, %struct.dm_integrity_io* %604, i32 0, i32 1
  %606 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %605, i32 0, i32 1
  %607 = load i64, i64* %606, align 8
  %608 = load %struct.dm_integrity_io*, %struct.dm_integrity_io** %3, align 8
  %609 = getelementptr inbounds %struct.dm_integrity_io, %struct.dm_integrity_io* %608, i32 0, i32 1
  %610 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %609, i32 0, i32 0
  %611 = load i32, i32* %610, align 8
  %612 = load i32, i32* @BITMAP_OP_TEST_ALL_CLEAR, align 4
  %613 = call i32 @block_bitmap_op(%struct.dm_integrity_c* %600, i32 %603, i64 %607, i32 %611, i32 %612)
  %614 = icmp ne i32 %613, 0
  br i1 %614, label %616, label %615

615:                                              ; preds = %599
  br label %631

616:                                              ; preds = %599
  br label %617

617:                                              ; preds = %616, %593
  %618 = load %struct.bio*, %struct.bio** %6, align 8
  %619 = getelementptr inbounds %struct.bio, %struct.bio* %618, i32 0, i32 0
  %620 = load i32, i32* %619, align 8
  %621 = icmp ne i32 %620, 0
  %622 = xor i1 %621, true
  %623 = zext i1 %622 to i32
  %624 = call i64 @likely(i32 %623)
  %625 = icmp ne i64 %624, 0
  br i1 %625, label %626, label %630

626:                                              ; preds = %617
  %627 = load %struct.dm_integrity_io*, %struct.dm_integrity_io** %3, align 8
  %628 = getelementptr inbounds %struct.dm_integrity_io, %struct.dm_integrity_io* %627, i32 0, i32 0
  %629 = call i32 @integrity_metadata(i32* %628)
  br label %634

630:                                              ; preds = %617
  br label %631

631:                                              ; preds = %630, %615, %592
  %632 = load %struct.dm_integrity_io*, %struct.dm_integrity_io** %3, align 8
  %633 = call i32 @dec_in_flight(%struct.dm_integrity_io* %632)
  br label %634

634:                                              ; preds = %631, %626
  br label %645

635:                                              ; preds = %506
  %636 = load %struct.dm_integrity_io*, %struct.dm_integrity_io** %3, align 8
  %637 = getelementptr inbounds %struct.dm_integrity_io, %struct.dm_integrity_io* %636, i32 0, i32 0
  %638 = call i32 @INIT_WORK(i32* %637, i32 (i32*)* @integrity_metadata)
  %639 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %5, align 8
  %640 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %639, i32 0, i32 7
  %641 = load i32, i32* %640, align 4
  %642 = load %struct.dm_integrity_io*, %struct.dm_integrity_io** %3, align 8
  %643 = getelementptr inbounds %struct.dm_integrity_io, %struct.dm_integrity_io* %642, i32 0, i32 0
  %644 = call i32 @queue_work(i32 %641, i32* %643)
  br label %645

645:                                              ; preds = %635, %634
  br label %659

646:                                              ; preds = %431, %265
  %647 = load %struct.dm_integrity_io*, %struct.dm_integrity_io** %3, align 8
  %648 = load %struct.bio*, %struct.bio** %6, align 8
  %649 = load i32, i32* %7, align 4
  %650 = load i32, i32* %8, align 4
  %651 = call i32 @__journal_read_write(%struct.dm_integrity_io* %647, %struct.bio* %648, i32 %649, i32 %650)
  %652 = call i64 @unlikely(i32 %651)
  %653 = icmp ne i64 %652, 0
  br i1 %653, label %654, label %655

654:                                              ; preds = %646
  br label %59

655:                                              ; preds = %646
  %656 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %5, align 8
  %657 = load %struct.dm_integrity_io*, %struct.dm_integrity_io** %3, align 8
  %658 = call i32 @do_endio_flush(%struct.dm_integrity_c* %656, %struct.dm_integrity_io* %657)
  br label %659

659:                                              ; preds = %655, %645, %469, %367, %69, %48
  ret void
}

declare dso_local %struct.bio* @dm_bio_from_per_bio_data(%struct.dm_integrity_io*, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32 (i32*)*) #1

declare dso_local i32 @integrity_bio_wait(i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dm_integrity_failed(%struct.dm_integrity_c*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @do_endio(%struct.dm_integrity_c*, %struct.bio*) #1

declare dso_local i32 @bio_sectors(%struct.bio*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @min(i32, i64) #1

declare dso_local i32 @sleep_on_endio_wait(%struct.dm_integrity_c*) #1

declare dso_local i32 @wraparound_section(%struct.dm_integrity_c*, i32*) #1

declare dso_local i32 @add_journal_node(%struct.dm_integrity_c*, i32*, i64) #1

declare dso_local %struct.journal_entry* @access_journal_entry(%struct.dm_integrity_c*, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @journal_entry_is_unused(%struct.journal_entry*) #1

declare dso_local i32 @journal_entry_set_inprogress(%struct.journal_entry*) #1

declare dso_local i32 @find_journal_node(%struct.dm_integrity_c*, i64, i64*) #1

declare dso_local i32 @test_journal_node(%struct.dm_integrity_c*, i32, i64) #1

declare dso_local i32 @add_new_range(%struct.dm_integrity_c*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @wait_and_add_new_range(%struct.dm_integrity_c*, %struct.TYPE_12__*) #1

declare dso_local i32 @remove_range_unlocked(%struct.dm_integrity_c*, %struct.TYPE_12__*) #1

declare dso_local i32 @block_bitmap_op(%struct.dm_integrity_c*, i32, i64, i32, i32) #1

declare dso_local %struct.bitmap_block_status* @sector_to_bitmap_block(%struct.dm_integrity_c*, i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @bio_list_add(i32*, %struct.bio*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @ATOMIC_INIT(i32) #1

declare dso_local i32 @init_completion(%struct.completion*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @bio_set_dev(%struct.bio*, i32) #1

declare dso_local i32 @bio_integrity(%struct.bio*) #1

declare dso_local i32 @generic_make_request(%struct.bio*) #1

declare dso_local i32 @wait_for_completion_io(%struct.completion*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i32 @integrity_metadata(i32*) #1

declare dso_local i32 @dec_in_flight(%struct.dm_integrity_io*) #1

declare dso_local i32 @__journal_read_write(%struct.dm_integrity_io*, %struct.bio*, i32, i32) #1

declare dso_local i32 @do_endio_flush(%struct.dm_integrity_c*, %struct.dm_integrity_io*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
