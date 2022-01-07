; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-snap.c_snapshot_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-snap.c_snapshot_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { %struct.dm_snapshot* }
%struct.dm_snapshot = type { i32, i32, %struct.TYPE_7__*, i64, %struct.TYPE_8__*, i32, i64, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_5__ = type { i32 }
%struct.bio = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.dm_exception = type { i32 }
%struct.dm_snap_pending_exception = type { i32, i32, %struct.dm_exception }
%struct.dm_exception_table_lock = type { i32 }

@DM_MAPIO_REMAPPED = common dso_local global i32 0, align 4
@REQ_PREFLUSH = common dso_local global i32 0, align 4
@DM_MAPIO_KILL = common dso_local global i32 0, align 4
@WRITE = common dso_local global i64 0, align 8
@REQ_OP_DISCARD = common dso_local global i64 0, align 8
@DM_MAPIO_SUBMITTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"Snapshot overflowed: Unable to allocate exception.\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_target*, %struct.bio*)* @snapshot_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snapshot_map(%struct.dm_target* %0, %struct.bio* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dm_target*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca %struct.dm_exception*, align 8
  %7 = alloca %struct.dm_snapshot*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.dm_snap_pending_exception*, align 8
  %11 = alloca %struct.dm_exception_table_lock, align 4
  store %struct.dm_target* %0, %struct.dm_target** %4, align 8
  store %struct.bio* %1, %struct.bio** %5, align 8
  %12 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %13 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %12, i32 0, i32 0
  %14 = load %struct.dm_snapshot*, %struct.dm_snapshot** %13, align 8
  store %struct.dm_snapshot* %14, %struct.dm_snapshot** %7, align 8
  %15 = load i32, i32* @DM_MAPIO_REMAPPED, align 4
  store i32 %15, i32* %8, align 4
  store %struct.dm_snap_pending_exception* null, %struct.dm_snap_pending_exception** %10, align 8
  %16 = load %struct.bio*, %struct.bio** %5, align 8
  %17 = call i32 @init_tracked_chunk(%struct.bio* %16)
  %18 = load %struct.bio*, %struct.bio** %5, align 8
  %19 = getelementptr inbounds %struct.bio, %struct.bio* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @REQ_PREFLUSH, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %2
  %25 = load %struct.bio*, %struct.bio** %5, align 8
  %26 = load %struct.dm_snapshot*, %struct.dm_snapshot** %7, align 8
  %27 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %26, i32 0, i32 7
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @bio_set_dev(%struct.bio* %25, i32 %30)
  %32 = load i32, i32* @DM_MAPIO_REMAPPED, align 4
  store i32 %32, i32* %3, align 4
  br label %311

33:                                               ; preds = %2
  %34 = load %struct.dm_snapshot*, %struct.dm_snapshot** %7, align 8
  %35 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %34, i32 0, i32 4
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = load %struct.bio*, %struct.bio** %5, align 8
  %38 = getelementptr inbounds %struct.bio, %struct.bio* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @sector_to_chunk(%struct.TYPE_8__* %36, i32 %40)
  store i32 %41, i32* %9, align 4
  %42 = load %struct.dm_snapshot*, %struct.dm_snapshot** %7, align 8
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @dm_exception_table_lock_init(%struct.dm_snapshot* %42, i32 %43, %struct.dm_exception_table_lock* %11)
  %45 = load %struct.dm_snapshot*, %struct.dm_snapshot** %7, align 8
  %46 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %33
  %50 = load i32, i32* @DM_MAPIO_KILL, align 4
  store i32 %50, i32* %3, align 4
  br label %311

51:                                               ; preds = %33
  %52 = load %struct.bio*, %struct.bio** %5, align 8
  %53 = call i64 @bio_data_dir(%struct.bio* %52)
  %54 = load i64, i64* @WRITE, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %67

56:                                               ; preds = %51
  br label %57

57:                                               ; preds = %65, %56
  %58 = load %struct.dm_snapshot*, %struct.dm_snapshot** %7, align 8
  %59 = call i32 @wait_for_in_progress(%struct.dm_snapshot* %58, i32 0)
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  %63 = call i64 @unlikely(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %57
  br label %57

66:                                               ; preds = %57
  br label %67

67:                                               ; preds = %66, %51
  %68 = load %struct.dm_snapshot*, %struct.dm_snapshot** %7, align 8
  %69 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %68, i32 0, i32 1
  %70 = call i32 @down_read(i32* %69)
  %71 = call i32 @dm_exception_table_lock(%struct.dm_exception_table_lock* %11)
  %72 = load %struct.dm_snapshot*, %struct.dm_snapshot** %7, align 8
  %73 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %87

76:                                               ; preds = %67
  %77 = load %struct.dm_snapshot*, %struct.dm_snapshot** %7, align 8
  %78 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i64 @unlikely(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %76
  %83 = load %struct.bio*, %struct.bio** %5, align 8
  %84 = call i64 @bio_data_dir(%struct.bio* %83)
  %85 = load i64, i64* @WRITE, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %82, %67
  %88 = load i32, i32* @DM_MAPIO_KILL, align 4
  store i32 %88, i32* %8, align 4
  br label %304

89:                                               ; preds = %82, %76
  %90 = load %struct.bio*, %struct.bio** %5, align 8
  %91 = call i64 @bio_op(%struct.bio* %90)
  %92 = load i64, i64* @REQ_OP_DISCARD, align 8
  %93 = icmp eq i64 %91, %92
  %94 = zext i1 %93 to i32
  %95 = call i64 @unlikely(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %119

97:                                               ; preds = %89
  %98 = load %struct.dm_snapshot*, %struct.dm_snapshot** %7, align 8
  %99 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %98, i32 0, i32 6
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %118

102:                                              ; preds = %97
  %103 = load %struct.bio*, %struct.bio** %5, align 8
  %104 = call i64 @dm_bio_get_target_bio_nr(%struct.bio* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %118

106:                                              ; preds = %102
  %107 = load %struct.bio*, %struct.bio** %5, align 8
  %108 = load %struct.dm_snapshot*, %struct.dm_snapshot** %7, align 8
  %109 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %108, i32 0, i32 2
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @bio_set_dev(%struct.bio* %107, i32 %112)
  %114 = load %struct.dm_snapshot*, %struct.dm_snapshot** %7, align 8
  %115 = load %struct.bio*, %struct.bio** %5, align 8
  %116 = load i32, i32* %9, align 4
  %117 = call i32 @track_chunk(%struct.dm_snapshot* %114, %struct.bio* %115, i32 %116)
  br label %304

118:                                              ; preds = %102, %97
  br label %119

119:                                              ; preds = %118, %89
  %120 = load %struct.dm_snapshot*, %struct.dm_snapshot** %7, align 8
  %121 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %120, i32 0, i32 5
  %122 = load i32, i32* %9, align 4
  %123 = call %struct.dm_exception* @dm_lookup_exception(i32* %121, i32 %122)
  store %struct.dm_exception* %123, %struct.dm_exception** %6, align 8
  %124 = load %struct.dm_exception*, %struct.dm_exception** %6, align 8
  %125 = icmp ne %struct.dm_exception* %124, null
  br i1 %125, label %126, label %156

126:                                              ; preds = %119
  %127 = load %struct.dm_snapshot*, %struct.dm_snapshot** %7, align 8
  %128 = load %struct.dm_exception*, %struct.dm_exception** %6, align 8
  %129 = load %struct.bio*, %struct.bio** %5, align 8
  %130 = load i32, i32* %9, align 4
  %131 = call i32 @remap_exception(%struct.dm_snapshot* %127, %struct.dm_exception* %128, %struct.bio* %129, i32 %130)
  %132 = load %struct.bio*, %struct.bio** %5, align 8
  %133 = call i64 @bio_op(%struct.bio* %132)
  %134 = load i64, i64* @REQ_OP_DISCARD, align 8
  %135 = icmp eq i64 %133, %134
  %136 = zext i1 %135 to i32
  %137 = call i64 @unlikely(i32 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %155

139:                                              ; preds = %126
  %140 = load %struct.dm_snapshot*, %struct.dm_snapshot** %7, align 8
  %141 = load %struct.bio*, %struct.bio** %5, align 8
  %142 = call i64 @io_overlaps_chunk(%struct.dm_snapshot* %140, %struct.bio* %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %155

144:                                              ; preds = %139
  %145 = call i32 @dm_exception_table_unlock(%struct.dm_exception_table_lock* %11)
  %146 = load %struct.dm_snapshot*, %struct.dm_snapshot** %7, align 8
  %147 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %146, i32 0, i32 1
  %148 = call i32 @up_read(i32* %147)
  %149 = load %struct.dm_snapshot*, %struct.dm_snapshot** %7, align 8
  %150 = load %struct.dm_exception*, %struct.dm_exception** %6, align 8
  %151 = load %struct.bio*, %struct.bio** %5, align 8
  %152 = load i32, i32* %9, align 4
  %153 = call i32 @zero_exception(%struct.dm_snapshot* %149, %struct.dm_exception* %150, %struct.bio* %151, i32 %152)
  %154 = load i32, i32* @DM_MAPIO_SUBMITTED, align 4
  store i32 %154, i32* %8, align 4
  br label %309

155:                                              ; preds = %139, %126
  br label %304

156:                                              ; preds = %119
  %157 = load %struct.bio*, %struct.bio** %5, align 8
  %158 = call i64 @bio_op(%struct.bio* %157)
  %159 = load i64, i64* @REQ_OP_DISCARD, align 8
  %160 = icmp eq i64 %158, %159
  %161 = zext i1 %160 to i32
  %162 = call i64 @unlikely(i32 %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %168

164:                                              ; preds = %156
  %165 = load %struct.bio*, %struct.bio** %5, align 8
  %166 = call i32 @bio_endio(%struct.bio* %165)
  %167 = load i32, i32* @DM_MAPIO_SUBMITTED, align 4
  store i32 %167, i32* %8, align 4
  br label %304

168:                                              ; preds = %156
  %169 = load %struct.bio*, %struct.bio** %5, align 8
  %170 = call i64 @bio_data_dir(%struct.bio* %169)
  %171 = load i64, i64* @WRITE, align 8
  %172 = icmp eq i64 %170, %171
  br i1 %172, label %173, label %291

173:                                              ; preds = %168
  %174 = load %struct.dm_snapshot*, %struct.dm_snapshot** %7, align 8
  %175 = load i32, i32* %9, align 4
  %176 = call %struct.dm_snap_pending_exception* @__lookup_pending_exception(%struct.dm_snapshot* %174, i32 %175)
  store %struct.dm_snap_pending_exception* %176, %struct.dm_snap_pending_exception** %10, align 8
  %177 = load %struct.dm_snap_pending_exception*, %struct.dm_snap_pending_exception** %10, align 8
  %178 = icmp ne %struct.dm_snap_pending_exception* %177, null
  br i1 %178, label %245, label %179

179:                                              ; preds = %173
  %180 = call i32 @dm_exception_table_unlock(%struct.dm_exception_table_lock* %11)
  %181 = load %struct.dm_snapshot*, %struct.dm_snapshot** %7, align 8
  %182 = call %struct.dm_snap_pending_exception* @alloc_pending_exception(%struct.dm_snapshot* %181)
  store %struct.dm_snap_pending_exception* %182, %struct.dm_snap_pending_exception** %10, align 8
  %183 = call i32 @dm_exception_table_lock(%struct.dm_exception_table_lock* %11)
  %184 = load %struct.dm_snapshot*, %struct.dm_snapshot** %7, align 8
  %185 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %184, i32 0, i32 5
  %186 = load i32, i32* %9, align 4
  %187 = call %struct.dm_exception* @dm_lookup_exception(i32* %185, i32 %186)
  store %struct.dm_exception* %187, %struct.dm_exception** %6, align 8
  %188 = load %struct.dm_exception*, %struct.dm_exception** %6, align 8
  %189 = icmp ne %struct.dm_exception* %188, null
  br i1 %189, label %190, label %198

190:                                              ; preds = %179
  %191 = load %struct.dm_snap_pending_exception*, %struct.dm_snap_pending_exception** %10, align 8
  %192 = call i32 @free_pending_exception(%struct.dm_snap_pending_exception* %191)
  %193 = load %struct.dm_snapshot*, %struct.dm_snapshot** %7, align 8
  %194 = load %struct.dm_exception*, %struct.dm_exception** %6, align 8
  %195 = load %struct.bio*, %struct.bio** %5, align 8
  %196 = load i32, i32* %9, align 4
  %197 = call i32 @remap_exception(%struct.dm_snapshot* %193, %struct.dm_exception* %194, %struct.bio* %195, i32 %196)
  br label %304

198:                                              ; preds = %179
  %199 = load %struct.dm_snapshot*, %struct.dm_snapshot** %7, align 8
  %200 = load %struct.dm_snap_pending_exception*, %struct.dm_snap_pending_exception** %10, align 8
  %201 = load i32, i32* %9, align 4
  %202 = call %struct.dm_snap_pending_exception* @__find_pending_exception(%struct.dm_snapshot* %199, %struct.dm_snap_pending_exception* %200, i32 %201)
  store %struct.dm_snap_pending_exception* %202, %struct.dm_snap_pending_exception** %10, align 8
  %203 = load %struct.dm_snap_pending_exception*, %struct.dm_snap_pending_exception** %10, align 8
  %204 = icmp ne %struct.dm_snap_pending_exception* %203, null
  br i1 %204, label %244, label %205

205:                                              ; preds = %198
  %206 = call i32 @dm_exception_table_unlock(%struct.dm_exception_table_lock* %11)
  %207 = load %struct.dm_snapshot*, %struct.dm_snapshot** %7, align 8
  %208 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %207, i32 0, i32 1
  %209 = call i32 @up_read(i32* %208)
  %210 = load %struct.dm_snapshot*, %struct.dm_snapshot** %7, align 8
  %211 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %210, i32 0, i32 1
  %212 = call i32 @down_write(i32* %211)
  %213 = load %struct.dm_snapshot*, %struct.dm_snapshot** %7, align 8
  %214 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %213, i32 0, i32 4
  %215 = load %struct.TYPE_8__*, %struct.TYPE_8__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %234

219:                                              ; preds = %205
  %220 = load %struct.dm_snapshot*, %struct.dm_snapshot** %7, align 8
  %221 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %220, i32 0, i32 3
  %222 = load i64, i64* %221, align 8
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %233

224:                                              ; preds = %219
  %225 = load %struct.dm_snapshot*, %struct.dm_snapshot** %7, align 8
  %226 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %233, label %229

229:                                              ; preds = %224
  %230 = load %struct.dm_snapshot*, %struct.dm_snapshot** %7, align 8
  %231 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %230, i32 0, i32 0
  store i32 1, i32* %231, align 8
  %232 = call i32 @DMERR(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  br label %233

233:                                              ; preds = %229, %224, %219
  br label %239

234:                                              ; preds = %205
  %235 = load %struct.dm_snapshot*, %struct.dm_snapshot** %7, align 8
  %236 = load i32, i32* @ENOMEM, align 4
  %237 = sub nsw i32 0, %236
  %238 = call i32 @__invalidate_snapshot(%struct.dm_snapshot* %235, i32 %237)
  br label %239

239:                                              ; preds = %234, %233
  %240 = load %struct.dm_snapshot*, %struct.dm_snapshot** %7, align 8
  %241 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %240, i32 0, i32 1
  %242 = call i32 @up_write(i32* %241)
  %243 = load i32, i32* @DM_MAPIO_KILL, align 4
  store i32 %243, i32* %8, align 4
  br label %309

244:                                              ; preds = %198
  br label %245

245:                                              ; preds = %244, %173
  %246 = load %struct.dm_snapshot*, %struct.dm_snapshot** %7, align 8
  %247 = load %struct.dm_snap_pending_exception*, %struct.dm_snap_pending_exception** %10, align 8
  %248 = getelementptr inbounds %struct.dm_snap_pending_exception, %struct.dm_snap_pending_exception* %247, i32 0, i32 2
  %249 = load %struct.bio*, %struct.bio** %5, align 8
  %250 = load i32, i32* %9, align 4
  %251 = call i32 @remap_exception(%struct.dm_snapshot* %246, %struct.dm_exception* %248, %struct.bio* %249, i32 %250)
  %252 = load i32, i32* @DM_MAPIO_SUBMITTED, align 4
  store i32 %252, i32* %8, align 4
  %253 = load %struct.dm_snap_pending_exception*, %struct.dm_snap_pending_exception** %10, align 8
  %254 = getelementptr inbounds %struct.dm_snap_pending_exception, %struct.dm_snap_pending_exception* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %272, label %257

257:                                              ; preds = %245
  %258 = load %struct.dm_snapshot*, %struct.dm_snapshot** %7, align 8
  %259 = load %struct.bio*, %struct.bio** %5, align 8
  %260 = call i64 @io_overlaps_chunk(%struct.dm_snapshot* %258, %struct.bio* %259)
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %272

262:                                              ; preds = %257
  %263 = load %struct.dm_snap_pending_exception*, %struct.dm_snap_pending_exception** %10, align 8
  %264 = getelementptr inbounds %struct.dm_snap_pending_exception, %struct.dm_snap_pending_exception* %263, i32 0, i32 0
  store i32 1, i32* %264, align 4
  %265 = call i32 @dm_exception_table_unlock(%struct.dm_exception_table_lock* %11)
  %266 = load %struct.dm_snapshot*, %struct.dm_snapshot** %7, align 8
  %267 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %266, i32 0, i32 1
  %268 = call i32 @up_read(i32* %267)
  %269 = load %struct.dm_snap_pending_exception*, %struct.dm_snap_pending_exception** %10, align 8
  %270 = load %struct.bio*, %struct.bio** %5, align 8
  %271 = call i32 @start_full_bio(%struct.dm_snap_pending_exception* %269, %struct.bio* %270)
  br label %309

272:                                              ; preds = %257, %245
  %273 = load %struct.dm_snap_pending_exception*, %struct.dm_snap_pending_exception** %10, align 8
  %274 = getelementptr inbounds %struct.dm_snap_pending_exception, %struct.dm_snap_pending_exception* %273, i32 0, i32 1
  %275 = load %struct.bio*, %struct.bio** %5, align 8
  %276 = call i32 @bio_list_add(i32* %274, %struct.bio* %275)
  %277 = load %struct.dm_snap_pending_exception*, %struct.dm_snap_pending_exception** %10, align 8
  %278 = getelementptr inbounds %struct.dm_snap_pending_exception, %struct.dm_snap_pending_exception* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %290, label %281

281:                                              ; preds = %272
  %282 = load %struct.dm_snap_pending_exception*, %struct.dm_snap_pending_exception** %10, align 8
  %283 = getelementptr inbounds %struct.dm_snap_pending_exception, %struct.dm_snap_pending_exception* %282, i32 0, i32 0
  store i32 1, i32* %283, align 4
  %284 = call i32 @dm_exception_table_unlock(%struct.dm_exception_table_lock* %11)
  %285 = load %struct.dm_snapshot*, %struct.dm_snapshot** %7, align 8
  %286 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %285, i32 0, i32 1
  %287 = call i32 @up_read(i32* %286)
  %288 = load %struct.dm_snap_pending_exception*, %struct.dm_snap_pending_exception** %10, align 8
  %289 = call i32 @start_copy(%struct.dm_snap_pending_exception* %288)
  br label %309

290:                                              ; preds = %272
  br label %303

291:                                              ; preds = %168
  %292 = load %struct.bio*, %struct.bio** %5, align 8
  %293 = load %struct.dm_snapshot*, %struct.dm_snapshot** %7, align 8
  %294 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %293, i32 0, i32 2
  %295 = load %struct.TYPE_7__*, %struct.TYPE_7__** %294, align 8
  %296 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 4
  %298 = call i32 @bio_set_dev(%struct.bio* %292, i32 %297)
  %299 = load %struct.dm_snapshot*, %struct.dm_snapshot** %7, align 8
  %300 = load %struct.bio*, %struct.bio** %5, align 8
  %301 = load i32, i32* %9, align 4
  %302 = call i32 @track_chunk(%struct.dm_snapshot* %299, %struct.bio* %300, i32 %301)
  br label %303

303:                                              ; preds = %291, %290
  br label %304

304:                                              ; preds = %303, %190, %164, %155, %106, %87
  %305 = call i32 @dm_exception_table_unlock(%struct.dm_exception_table_lock* %11)
  %306 = load %struct.dm_snapshot*, %struct.dm_snapshot** %7, align 8
  %307 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %306, i32 0, i32 1
  %308 = call i32 @up_read(i32* %307)
  br label %309

309:                                              ; preds = %304, %281, %262, %239, %144
  %310 = load i32, i32* %8, align 4
  store i32 %310, i32* %3, align 4
  br label %311

311:                                              ; preds = %309, %49, %24
  %312 = load i32, i32* %3, align 4
  ret i32 %312
}

declare dso_local i32 @init_tracked_chunk(%struct.bio*) #1

declare dso_local i32 @bio_set_dev(%struct.bio*, i32) #1

declare dso_local i32 @sector_to_chunk(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @dm_exception_table_lock_init(%struct.dm_snapshot*, i32, %struct.dm_exception_table_lock*) #1

declare dso_local i64 @bio_data_dir(%struct.bio*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @wait_for_in_progress(%struct.dm_snapshot*, i32) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @dm_exception_table_lock(%struct.dm_exception_table_lock*) #1

declare dso_local i64 @bio_op(%struct.bio*) #1

declare dso_local i64 @dm_bio_get_target_bio_nr(%struct.bio*) #1

declare dso_local i32 @track_chunk(%struct.dm_snapshot*, %struct.bio*, i32) #1

declare dso_local %struct.dm_exception* @dm_lookup_exception(i32*, i32) #1

declare dso_local i32 @remap_exception(%struct.dm_snapshot*, %struct.dm_exception*, %struct.bio*, i32) #1

declare dso_local i64 @io_overlaps_chunk(%struct.dm_snapshot*, %struct.bio*) #1

declare dso_local i32 @dm_exception_table_unlock(%struct.dm_exception_table_lock*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @zero_exception(%struct.dm_snapshot*, %struct.dm_exception*, %struct.bio*, i32) #1

declare dso_local i32 @bio_endio(%struct.bio*) #1

declare dso_local %struct.dm_snap_pending_exception* @__lookup_pending_exception(%struct.dm_snapshot*, i32) #1

declare dso_local %struct.dm_snap_pending_exception* @alloc_pending_exception(%struct.dm_snapshot*) #1

declare dso_local i32 @free_pending_exception(%struct.dm_snap_pending_exception*) #1

declare dso_local %struct.dm_snap_pending_exception* @__find_pending_exception(%struct.dm_snapshot*, %struct.dm_snap_pending_exception*, i32) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @DMERR(i8*) #1

declare dso_local i32 @__invalidate_snapshot(%struct.dm_snapshot*, i32) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @start_full_bio(%struct.dm_snap_pending_exception*, %struct.bio*) #1

declare dso_local i32 @bio_list_add(i32*, %struct.bio*) #1

declare dso_local i32 @start_copy(%struct.dm_snap_pending_exception*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
