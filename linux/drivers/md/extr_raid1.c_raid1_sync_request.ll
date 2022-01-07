; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid1.c_raid1_sync_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid1.c_raid1_sync_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 (%struct.mddev*, i64, i64)* }
%struct.mddev = type { i64, i64, i64, i64, i64, i64, i32*, i32, i64, %struct.r1conf* }
%struct.r1conf = type { i64, i64, i64, i32, i32, %struct.TYPE_5__*, i32*, i32 }
%struct.TYPE_5__ = type { %struct.md_rdev* }
%struct.md_rdev = type { i64, i64, i32, i32 }
%struct.r1bio = type { i32, %struct.bio**, i32, i64, i64, i64, %struct.mddev* }
%struct.bio = type { i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.page = type { i32 }
%struct.resync_pages = type { i32 }

@RESYNC_SECTORS = common dso_local global i32 0, align 4
@MaxSector = common dso_local global i64 0, align 8
@MD_RECOVERY_REQUESTED = common dso_local global i32 0, align 4
@R1BIO_IsSync = common dso_local global i32 0, align 4
@Faulty = common dso_local global i32 0, align 4
@In_sync = common dso_local global i32 0, align 4
@REQ_OP_WRITE = common dso_local global i32 0, align 4
@end_sync_write = common dso_local global i64 0, align 8
@WriteMostly = common dso_local global i32 0, align 4
@REQ_OP_READ = common dso_local global i32 0, align 4
@end_sync_read = common dso_local global i64 0, align 8
@WriteErrorSeen = common dso_local global i32 0, align 4
@MD_RECOVERY_SYNC = common dso_local global i32 0, align 4
@MD_RECOVERY_CHECK = common dso_local global i32 0, align 4
@FailFast = common dso_local global i32 0, align 4
@MD_FAILFAST = common dso_local global i32 0, align 4
@MD_SB_CHANGE_DEVS = common dso_local global i32 0, align 4
@MD_RECOVERY_INTR = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@RESYNC_PAGES = common dso_local global i32 0, align 4
@CLUSTER_RESYNC_WINDOW_SECTORS = common dso_local global i64 0, align 8
@md_cluster_ops = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.mddev*, i64, i32*)* @raid1_sync_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @raid1_sync_request(%struct.mddev* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.mddev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.r1conf*, align 8
  %9 = alloca %struct.r1bio*, align 8
  %10 = alloca %struct.bio*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.md_rdev*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca %struct.md_rdev*, align 8
  %29 = alloca i64, align 8
  %30 = alloca %struct.page*, align 8
  %31 = alloca i32, align 4
  %32 = alloca %struct.resync_pages*, align 8
  store %struct.mddev* %0, %struct.mddev** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %33 = load %struct.mddev*, %struct.mddev** %5, align 8
  %34 = getelementptr inbounds %struct.mddev, %struct.mddev* %33, i32 0, i32 9
  %35 = load %struct.r1conf*, %struct.r1conf** %34, align 8
  store %struct.r1conf* %35, %struct.r1conf** %8, align 8
  store i32 -1, i32* %13, align 4
  store i32 -1, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %19, align 4
  %36 = load i32, i32* @RESYNC_SECTORS, align 4
  store i32 %36, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %37 = load i64, i64* %6, align 8
  %38 = call i32 @sector_to_idx(i64 %37)
  store i32 %38, i32* %22, align 4
  store i32 0, i32* %23, align 4
  %39 = load %struct.r1conf*, %struct.r1conf** %8, align 8
  %40 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %39, i32 0, i32 7
  %41 = call i32 @mempool_initialized(i32* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %3
  %44 = load %struct.r1conf*, %struct.r1conf** %8, align 8
  %45 = call i64 @init_resync(%struct.r1conf* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  store i64 0, i64* %4, align 8
  br label %768

48:                                               ; preds = %43
  br label %49

49:                                               ; preds = %48, %3
  %50 = load %struct.mddev*, %struct.mddev** %5, align 8
  %51 = getelementptr inbounds %struct.mddev, %struct.mddev* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %11, align 8
  %53 = load i64, i64* %6, align 8
  %54 = load i64, i64* %11, align 8
  %55 = icmp sge i64 %53, %54
  br i1 %55, label %56, label %89

56:                                               ; preds = %49
  %57 = load %struct.mddev*, %struct.mddev** %5, align 8
  %58 = getelementptr inbounds %struct.mddev, %struct.mddev* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* %11, align 8
  %61 = icmp slt i64 %59, %60
  br i1 %61, label %62, label %70

62:                                               ; preds = %56
  %63 = load %struct.mddev*, %struct.mddev** %5, align 8
  %64 = getelementptr inbounds %struct.mddev, %struct.mddev* %63, i32 0, i32 6
  %65 = load i32*, i32** %64, align 8
  %66 = load %struct.mddev*, %struct.mddev** %5, align 8
  %67 = getelementptr inbounds %struct.mddev, %struct.mddev* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @md_bitmap_end_sync(i32* %65, i64 %68, i64* %18, i32 1)
  br label %73

70:                                               ; preds = %56
  %71 = load %struct.r1conf*, %struct.r1conf** %8, align 8
  %72 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %71, i32 0, i32 0
  store i64 0, i64* %72, align 8
  br label %73

73:                                               ; preds = %70, %62
  %74 = load %struct.mddev*, %struct.mddev** %5, align 8
  %75 = getelementptr inbounds %struct.mddev, %struct.mddev* %74, i32 0, i32 6
  %76 = load i32*, i32** %75, align 8
  %77 = call i32 @md_bitmap_close_sync(i32* %76)
  %78 = load %struct.r1conf*, %struct.r1conf** %8, align 8
  %79 = call i32 @close_sync(%struct.r1conf* %78)
  %80 = load %struct.mddev*, %struct.mddev** %5, align 8
  %81 = call i64 @mddev_is_clustered(%struct.mddev* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %73
  %84 = load %struct.r1conf*, %struct.r1conf** %8, align 8
  %85 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %84, i32 0, i32 1
  store i64 0, i64* %85, align 8
  %86 = load %struct.r1conf*, %struct.r1conf** %8, align 8
  %87 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %86, i32 0, i32 2
  store i64 0, i64* %87, align 8
  br label %88

88:                                               ; preds = %83, %73
  store i64 0, i64* %4, align 8
  br label %768

89:                                               ; preds = %49
  %90 = load %struct.mddev*, %struct.mddev** %5, align 8
  %91 = getelementptr inbounds %struct.mddev, %struct.mddev* %90, i32 0, i32 6
  %92 = load i32*, i32** %91, align 8
  %93 = icmp eq i32* %92, null
  br i1 %93, label %94, label %116

94:                                               ; preds = %89
  %95 = load %struct.mddev*, %struct.mddev** %5, align 8
  %96 = getelementptr inbounds %struct.mddev, %struct.mddev* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @MaxSector, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %116

100:                                              ; preds = %94
  %101 = load i32, i32* @MD_RECOVERY_REQUESTED, align 4
  %102 = load %struct.mddev*, %struct.mddev** %5, align 8
  %103 = getelementptr inbounds %struct.mddev, %struct.mddev* %102, i32 0, i32 5
  %104 = call i64 @test_bit(i32 %101, i64* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %116, label %106

106:                                              ; preds = %100
  %107 = load %struct.r1conf*, %struct.r1conf** %8, align 8
  %108 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %106
  %112 = load i32*, i32** %7, align 8
  store i32 1, i32* %112, align 4
  %113 = load i64, i64* %11, align 8
  %114 = load i64, i64* %6, align 8
  %115 = sub nsw i64 %113, %114
  store i64 %115, i64* %4, align 8
  br label %768

116:                                              ; preds = %106, %100, %94, %89
  %117 = load %struct.mddev*, %struct.mddev** %5, align 8
  %118 = getelementptr inbounds %struct.mddev, %struct.mddev* %117, i32 0, i32 6
  %119 = load i32*, i32** %118, align 8
  %120 = load i64, i64* %6, align 8
  %121 = call i32 @md_bitmap_start_sync(i32* %119, i64 %120, i64* %18, i32 1)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %137, label %123

123:                                              ; preds = %116
  %124 = load %struct.r1conf*, %struct.r1conf** %8, align 8
  %125 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %137, label %128

128:                                              ; preds = %123
  %129 = load i32, i32* @MD_RECOVERY_REQUESTED, align 4
  %130 = load %struct.mddev*, %struct.mddev** %5, align 8
  %131 = getelementptr inbounds %struct.mddev, %struct.mddev* %130, i32 0, i32 5
  %132 = call i64 @test_bit(i32 %129, i64* %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %137, label %134

134:                                              ; preds = %128
  %135 = load i32*, i32** %7, align 8
  store i32 1, i32* %135, align 4
  %136 = load i64, i64* %18, align 8
  store i64 %136, i64* %4, align 8
  br label %768

137:                                              ; preds = %128, %123, %116
  %138 = load %struct.r1conf*, %struct.r1conf** %8, align 8
  %139 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %138, i32 0, i32 6
  %140 = load i32*, i32** %139, align 8
  %141 = load i32, i32* %22, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  %144 = call i64 @atomic_read(i32* %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %137
  %147 = call i32 @schedule_timeout_uninterruptible(i32 1)
  br label %148

148:                                              ; preds = %146, %137
  %149 = load %struct.mddev*, %struct.mddev** %5, align 8
  %150 = getelementptr inbounds %struct.mddev, %struct.mddev* %149, i32 0, i32 6
  %151 = load i32*, i32** %150, align 8
  %152 = load i64, i64* %6, align 8
  %153 = load %struct.mddev*, %struct.mddev** %5, align 8
  %154 = call i64 @mddev_is_clustered(%struct.mddev* %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %166

156:                                              ; preds = %148
  %157 = load i64, i64* %6, align 8
  %158 = load i32, i32* @RESYNC_SECTORS, align 4
  %159 = mul nsw i32 2, %158
  %160 = sext i32 %159 to i64
  %161 = add nsw i64 %157, %160
  %162 = load %struct.r1conf*, %struct.r1conf** %8, align 8
  %163 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %162, i32 0, i32 2
  %164 = load i64, i64* %163, align 8
  %165 = icmp sgt i64 %161, %164
  br label %166

166:                                              ; preds = %156, %148
  %167 = phi i1 [ false, %148 ], [ %165, %156 ]
  %168 = zext i1 %167 to i32
  %169 = call i32 @md_bitmap_cond_end_sync(i32* %151, i64 %152, i32 %168)
  %170 = load %struct.r1conf*, %struct.r1conf** %8, align 8
  %171 = load i64, i64* %6, align 8
  %172 = call i64 @raise_barrier(%struct.r1conf* %170, i64 %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %166
  store i64 0, i64* %4, align 8
  br label %768

175:                                              ; preds = %166
  %176 = load %struct.r1conf*, %struct.r1conf** %8, align 8
  %177 = call %struct.r1bio* @raid1_alloc_init_r1buf(%struct.r1conf* %176)
  store %struct.r1bio* %177, %struct.r1bio** %9, align 8
  %178 = call i32 (...) @rcu_read_lock()
  %179 = load %struct.mddev*, %struct.mddev** %5, align 8
  %180 = load %struct.r1bio*, %struct.r1bio** %9, align 8
  %181 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %180, i32 0, i32 6
  store %struct.mddev* %179, %struct.mddev** %181, align 8
  %182 = load i64, i64* %6, align 8
  %183 = load %struct.r1bio*, %struct.r1bio** %9, align 8
  %184 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %183, i32 0, i32 5
  store i64 %182, i64* %184, align 8
  %185 = load %struct.r1bio*, %struct.r1bio** %9, align 8
  %186 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %185, i32 0, i32 4
  store i64 0, i64* %186, align 8
  %187 = load i32, i32* @R1BIO_IsSync, align 4
  %188 = load %struct.r1bio*, %struct.r1bio** %9, align 8
  %189 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %188, i32 0, i32 4
  %190 = call i32 @set_bit(i32 %187, i64* %189)
  %191 = load i64, i64* %6, align 8
  %192 = load i32, i32* %20, align 4
  %193 = call i32 @align_to_barrier_unit_end(i64 %191, i32 %192)
  store i32 %193, i32* %20, align 4
  store i32 0, i32* %14, align 4
  br label %194

194:                                              ; preds = %379, %175
  %195 = load i32, i32* %14, align 4
  %196 = load %struct.r1conf*, %struct.r1conf** %8, align 8
  %197 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %196, i32 0, i32 3
  %198 = load i32, i32* %197, align 8
  %199 = mul nsw i32 %198, 2
  %200 = icmp slt i32 %195, %199
  br i1 %200, label %201, label %382

201:                                              ; preds = %194
  %202 = load %struct.r1bio*, %struct.r1bio** %9, align 8
  %203 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %202, i32 0, i32 1
  %204 = load %struct.bio**, %struct.bio*** %203, align 8
  %205 = load i32, i32* %14, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.bio*, %struct.bio** %204, i64 %206
  %208 = load %struct.bio*, %struct.bio** %207, align 8
  store %struct.bio* %208, %struct.bio** %10, align 8
  %209 = load %struct.r1conf*, %struct.r1conf** %8, align 8
  %210 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %209, i32 0, i32 5
  %211 = load %struct.TYPE_5__*, %struct.TYPE_5__** %210, align 8
  %212 = load i32, i32* %14, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %211, i64 %213
  %215 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %214, i32 0, i32 0
  %216 = load %struct.md_rdev*, %struct.md_rdev** %215, align 8
  %217 = call %struct.md_rdev* @rcu_dereference(%struct.md_rdev* %216)
  store %struct.md_rdev* %217, %struct.md_rdev** %24, align 8
  %218 = load %struct.md_rdev*, %struct.md_rdev** %24, align 8
  %219 = icmp eq %struct.md_rdev* %218, null
  br i1 %219, label %226, label %220

220:                                              ; preds = %201
  %221 = load i32, i32* @Faulty, align 4
  %222 = load %struct.md_rdev*, %struct.md_rdev** %24, align 8
  %223 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %222, i32 0, i32 1
  %224 = call i64 @test_bit(i32 %221, i64* %223)
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %234

226:                                              ; preds = %220, %201
  %227 = load i32, i32* %14, align 4
  %228 = load %struct.r1conf*, %struct.r1conf** %8, align 8
  %229 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %228, i32 0, i32 3
  %230 = load i32, i32* %229, align 8
  %231 = icmp slt i32 %227, %230
  br i1 %231, label %232, label %233

232:                                              ; preds = %226
  store i32 1, i32* %19, align 4
  br label %233

233:                                              ; preds = %232, %226
  br label %344

234:                                              ; preds = %220
  %235 = load i32, i32* @In_sync, align 4
  %236 = load %struct.md_rdev*, %struct.md_rdev** %24, align 8
  %237 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %236, i32 0, i32 1
  %238 = call i64 @test_bit(i32 %235, i64* %237)
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %249, label %240

240:                                              ; preds = %234
  %241 = load %struct.bio*, %struct.bio** %10, align 8
  %242 = load i32, i32* @REQ_OP_WRITE, align 4
  %243 = call i32 @bio_set_op_attrs(%struct.bio* %241, i32 %242, i32 0)
  %244 = load i64, i64* @end_sync_write, align 8
  %245 = load %struct.bio*, %struct.bio** %10, align 8
  %246 = getelementptr inbounds %struct.bio, %struct.bio* %245, i32 0, i32 0
  store i64 %244, i64* %246, align 8
  %247 = load i32, i32* %16, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %16, align 4
  br label %343

249:                                              ; preds = %234
  %250 = load i64, i64* @MaxSector, align 8
  store i64 %250, i64* %25, align 8
  %251 = load %struct.md_rdev*, %struct.md_rdev** %24, align 8
  %252 = load i64, i64* %6, align 8
  %253 = load i32, i32* %20, align 4
  %254 = call i64 @is_badblock(%struct.md_rdev* %251, i64 %252, i32 %253, i64* %25, i32* %26)
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %283

256:                                              ; preds = %249
  %257 = load i64, i64* %25, align 8
  %258 = load i64, i64* %6, align 8
  %259 = icmp sgt i64 %257, %258
  br i1 %259, label %260, label %265

260:                                              ; preds = %256
  %261 = load i64, i64* %25, align 8
  %262 = load i64, i64* %6, align 8
  %263 = sub nsw i64 %261, %262
  %264 = trunc i64 %263 to i32
  store i32 %264, i32* %20, align 4
  br label %282

265:                                              ; preds = %256
  %266 = load i64, i64* %6, align 8
  %267 = load i64, i64* %25, align 8
  %268 = sub nsw i64 %266, %267
  %269 = load i32, i32* %26, align 4
  %270 = sext i32 %269 to i64
  %271 = sub nsw i64 %270, %268
  %272 = trunc i64 %271 to i32
  store i32 %272, i32* %26, align 4
  %273 = load i32, i32* %21, align 4
  %274 = icmp eq i32 %273, 0
  br i1 %274, label %279, label %275

275:                                              ; preds = %265
  %276 = load i32, i32* %21, align 4
  %277 = load i32, i32* %26, align 4
  %278 = icmp sgt i32 %276, %277
  br i1 %278, label %279, label %281

279:                                              ; preds = %275, %265
  %280 = load i32, i32* %26, align 4
  store i32 %280, i32* %21, align 4
  br label %281

281:                                              ; preds = %279, %275
  br label %282

282:                                              ; preds = %281, %260
  br label %283

283:                                              ; preds = %282, %249
  %284 = load i64, i64* %6, align 8
  %285 = load i64, i64* %25, align 8
  %286 = icmp slt i64 %284, %285
  br i1 %286, label %287, label %314

287:                                              ; preds = %283
  %288 = load i32, i32* @WriteMostly, align 4
  %289 = load %struct.md_rdev*, %struct.md_rdev** %24, align 8
  %290 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %289, i32 0, i32 1
  %291 = call i64 @test_bit(i32 %288, i64* %290)
  %292 = icmp ne i64 %291, 0
  br i1 %292, label %293, label %299

293:                                              ; preds = %287
  %294 = load i32, i32* %15, align 4
  %295 = icmp slt i32 %294, 0
  br i1 %295, label %296, label %298

296:                                              ; preds = %293
  %297 = load i32, i32* %14, align 4
  store i32 %297, i32* %15, align 4
  br label %298

298:                                              ; preds = %296, %293
  br label %305

299:                                              ; preds = %287
  %300 = load i32, i32* %13, align 4
  %301 = icmp slt i32 %300, 0
  br i1 %301, label %302, label %304

302:                                              ; preds = %299
  %303 = load i32, i32* %14, align 4
  store i32 %303, i32* %13, align 4
  br label %304

304:                                              ; preds = %302, %299
  br label %305

305:                                              ; preds = %304, %298
  %306 = load %struct.bio*, %struct.bio** %10, align 8
  %307 = load i32, i32* @REQ_OP_READ, align 4
  %308 = call i32 @bio_set_op_attrs(%struct.bio* %306, i32 %307, i32 0)
  %309 = load i64, i64* @end_sync_read, align 8
  %310 = load %struct.bio*, %struct.bio** %10, align 8
  %311 = getelementptr inbounds %struct.bio, %struct.bio* %310, i32 0, i32 0
  store i64 %309, i64* %311, align 8
  %312 = load i32, i32* %17, align 4
  %313 = add nsw i32 %312, 1
  store i32 %313, i32* %17, align 4
  br label %342

314:                                              ; preds = %283
  %315 = load i32, i32* @WriteErrorSeen, align 4
  %316 = load %struct.md_rdev*, %struct.md_rdev** %24, align 8
  %317 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %316, i32 0, i32 1
  %318 = call i64 @test_bit(i32 %315, i64* %317)
  %319 = icmp ne i64 %318, 0
  br i1 %319, label %341, label %320

320:                                              ; preds = %314
  %321 = load i32, i32* @MD_RECOVERY_SYNC, align 4
  %322 = load %struct.mddev*, %struct.mddev** %5, align 8
  %323 = getelementptr inbounds %struct.mddev, %struct.mddev* %322, i32 0, i32 5
  %324 = call i64 @test_bit(i32 %321, i64* %323)
  %325 = icmp ne i64 %324, 0
  br i1 %325, label %326, label %341

326:                                              ; preds = %320
  %327 = load i32, i32* @MD_RECOVERY_CHECK, align 4
  %328 = load %struct.mddev*, %struct.mddev** %5, align 8
  %329 = getelementptr inbounds %struct.mddev, %struct.mddev* %328, i32 0, i32 5
  %330 = call i64 @test_bit(i32 %327, i64* %329)
  %331 = icmp ne i64 %330, 0
  br i1 %331, label %341, label %332

332:                                              ; preds = %326
  %333 = load %struct.bio*, %struct.bio** %10, align 8
  %334 = load i32, i32* @REQ_OP_WRITE, align 4
  %335 = call i32 @bio_set_op_attrs(%struct.bio* %333, i32 %334, i32 0)
  %336 = load i64, i64* @end_sync_write, align 8
  %337 = load %struct.bio*, %struct.bio** %10, align 8
  %338 = getelementptr inbounds %struct.bio, %struct.bio* %337, i32 0, i32 0
  store i64 %336, i64* %338, align 8
  %339 = load i32, i32* %16, align 4
  %340 = add nsw i32 %339, 1
  store i32 %340, i32* %16, align 4
  br label %341

341:                                              ; preds = %332, %326, %320, %314
  br label %342

342:                                              ; preds = %341, %305
  br label %343

343:                                              ; preds = %342, %240
  br label %344

344:                                              ; preds = %343, %233
  %345 = load %struct.bio*, %struct.bio** %10, align 8
  %346 = getelementptr inbounds %struct.bio, %struct.bio* %345, i32 0, i32 0
  %347 = load i64, i64* %346, align 8
  %348 = icmp ne i64 %347, 0
  br i1 %348, label %349, label %378

349:                                              ; preds = %344
  %350 = load %struct.md_rdev*, %struct.md_rdev** %24, align 8
  %351 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %350, i32 0, i32 3
  %352 = call i32 @atomic_inc(i32* %351)
  %353 = load i64, i64* %6, align 8
  %354 = load %struct.md_rdev*, %struct.md_rdev** %24, align 8
  %355 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %354, i32 0, i32 0
  %356 = load i64, i64* %355, align 8
  %357 = add nsw i64 %353, %356
  %358 = load %struct.bio*, %struct.bio** %10, align 8
  %359 = getelementptr inbounds %struct.bio, %struct.bio* %358, i32 0, i32 2
  %360 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %359, i32 0, i32 0
  store i64 %357, i64* %360, align 8
  %361 = load %struct.bio*, %struct.bio** %10, align 8
  %362 = load %struct.md_rdev*, %struct.md_rdev** %24, align 8
  %363 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %362, i32 0, i32 2
  %364 = load i32, i32* %363, align 8
  %365 = call i32 @bio_set_dev(%struct.bio* %361, i32 %364)
  %366 = load i32, i32* @FailFast, align 4
  %367 = load %struct.md_rdev*, %struct.md_rdev** %24, align 8
  %368 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %367, i32 0, i32 1
  %369 = call i64 @test_bit(i32 %366, i64* %368)
  %370 = icmp ne i64 %369, 0
  br i1 %370, label %371, label %377

371:                                              ; preds = %349
  %372 = load i32, i32* @MD_FAILFAST, align 4
  %373 = load %struct.bio*, %struct.bio** %10, align 8
  %374 = getelementptr inbounds %struct.bio, %struct.bio* %373, i32 0, i32 1
  %375 = load i32, i32* %374, align 8
  %376 = or i32 %375, %372
  store i32 %376, i32* %374, align 8
  br label %377

377:                                              ; preds = %371, %349
  br label %378

378:                                              ; preds = %377, %344
  br label %379

379:                                              ; preds = %378
  %380 = load i32, i32* %14, align 4
  %381 = add nsw i32 %380, 1
  store i32 %381, i32* %14, align 4
  br label %194

382:                                              ; preds = %194
  %383 = call i32 (...) @rcu_read_unlock()
  %384 = load i32, i32* %13, align 4
  %385 = icmp slt i32 %384, 0
  br i1 %385, label %386, label %388

386:                                              ; preds = %382
  %387 = load i32, i32* %15, align 4
  store i32 %387, i32* %13, align 4
  br label %388

388:                                              ; preds = %386, %382
  %389 = load i32, i32* %13, align 4
  %390 = load %struct.r1bio*, %struct.r1bio** %9, align 8
  %391 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %390, i32 0, i32 0
  store i32 %389, i32* %391, align 8
  %392 = load i32, i32* %17, align 4
  %393 = icmp eq i32 %392, 0
  br i1 %393, label %394, label %464

394:                                              ; preds = %388
  %395 = load i32, i32* %21, align 4
  %396 = icmp sgt i32 %395, 0
  br i1 %396, label %397, label %464

397:                                              ; preds = %394
  store i32 1, i32* %27, align 4
  store i32 0, i32* %14, align 4
  br label %398

398:                                              ; preds = %438, %397
  %399 = load i32, i32* %14, align 4
  %400 = load %struct.r1conf*, %struct.r1conf** %8, align 8
  %401 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %400, i32 0, i32 3
  %402 = load i32, i32* %401, align 8
  %403 = mul nsw i32 %402, 2
  %404 = icmp slt i32 %399, %403
  br i1 %404, label %405, label %441

405:                                              ; preds = %398
  %406 = load %struct.r1bio*, %struct.r1bio** %9, align 8
  %407 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %406, i32 0, i32 1
  %408 = load %struct.bio**, %struct.bio*** %407, align 8
  %409 = load i32, i32* %14, align 4
  %410 = sext i32 %409 to i64
  %411 = getelementptr inbounds %struct.bio*, %struct.bio** %408, i64 %410
  %412 = load %struct.bio*, %struct.bio** %411, align 8
  %413 = getelementptr inbounds %struct.bio, %struct.bio* %412, i32 0, i32 0
  %414 = load i64, i64* %413, align 8
  %415 = load i64, i64* @end_sync_write, align 8
  %416 = icmp eq i64 %414, %415
  br i1 %416, label %417, label %437

417:                                              ; preds = %405
  %418 = load %struct.r1conf*, %struct.r1conf** %8, align 8
  %419 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %418, i32 0, i32 5
  %420 = load %struct.TYPE_5__*, %struct.TYPE_5__** %419, align 8
  %421 = load i32, i32* %14, align 4
  %422 = sext i32 %421 to i64
  %423 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %420, i64 %422
  %424 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %423, i32 0, i32 0
  %425 = load %struct.md_rdev*, %struct.md_rdev** %424, align 8
  store %struct.md_rdev* %425, %struct.md_rdev** %28, align 8
  %426 = load %struct.md_rdev*, %struct.md_rdev** %28, align 8
  %427 = load i64, i64* %6, align 8
  %428 = load i32, i32* %21, align 4
  %429 = call i64 @rdev_set_badblocks(%struct.md_rdev* %426, i64 %427, i32 %428, i32 0)
  %430 = icmp ne i64 %429, 0
  br i1 %430, label %431, label %434

431:                                              ; preds = %417
  %432 = load i32, i32* %27, align 4
  %433 = icmp ne i32 %432, 0
  br label %434

434:                                              ; preds = %431, %417
  %435 = phi i1 [ false, %417 ], [ %433, %431 ]
  %436 = zext i1 %435 to i32
  store i32 %436, i32* %27, align 4
  br label %437

437:                                              ; preds = %434, %405
  br label %438

438:                                              ; preds = %437
  %439 = load i32, i32* %14, align 4
  %440 = add nsw i32 %439, 1
  store i32 %440, i32* %14, align 4
  br label %398

441:                                              ; preds = %398
  %442 = load i32, i32* @MD_SB_CHANGE_DEVS, align 4
  %443 = load %struct.mddev*, %struct.mddev** %5, align 8
  %444 = getelementptr inbounds %struct.mddev, %struct.mddev* %443, i32 0, i32 8
  %445 = call i32 @set_bit(i32 %442, i64* %444)
  %446 = load i32*, i32** %7, align 8
  store i32 1, i32* %446, align 4
  %447 = load %struct.r1bio*, %struct.r1bio** %9, align 8
  %448 = call i32 @put_buf(%struct.r1bio* %447)
  %449 = load i32, i32* %27, align 4
  %450 = icmp ne i32 %449, 0
  br i1 %450, label %461, label %451

451:                                              ; preds = %441
  %452 = load %struct.mddev*, %struct.mddev** %5, align 8
  %453 = getelementptr inbounds %struct.mddev, %struct.mddev* %452, i32 0, i32 7
  %454 = load i32, i32* %453, align 8
  %455 = load %struct.r1conf*, %struct.r1conf** %8, align 8
  %456 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %455, i32 0, i32 4
  store i32 %454, i32* %456, align 4
  %457 = load i32, i32* @MD_RECOVERY_INTR, align 4
  %458 = load %struct.mddev*, %struct.mddev** %5, align 8
  %459 = getelementptr inbounds %struct.mddev, %struct.mddev* %458, i32 0, i32 5
  %460 = call i32 @set_bit(i32 %457, i64* %459)
  store i64 0, i64* %4, align 8
  br label %768

461:                                              ; preds = %441
  %462 = load i32, i32* %21, align 4
  %463 = sext i32 %462 to i64
  store i64 %463, i64* %4, align 8
  br label %768

464:                                              ; preds = %394, %388
  %465 = load i32, i32* %21, align 4
  %466 = icmp sgt i32 %465, 0
  br i1 %466, label %467, label %473

467:                                              ; preds = %464
  %468 = load i32, i32* %21, align 4
  %469 = load i32, i32* %20, align 4
  %470 = icmp slt i32 %468, %469
  br i1 %470, label %471, label %473

471:                                              ; preds = %467
  %472 = load i32, i32* %21, align 4
  store i32 %472, i32* %20, align 4
  br label %473

473:                                              ; preds = %471, %467, %464
  %474 = load i32, i32* @MD_RECOVERY_SYNC, align 4
  %475 = load %struct.mddev*, %struct.mddev** %5, align 8
  %476 = getelementptr inbounds %struct.mddev, %struct.mddev* %475, i32 0, i32 5
  %477 = call i64 @test_bit(i32 %474, i64* %476)
  %478 = icmp ne i64 %477, 0
  br i1 %478, label %479, label %487

479:                                              ; preds = %473
  %480 = load i32, i32* %17, align 4
  %481 = icmp sgt i32 %480, 0
  br i1 %481, label %482, label %487

482:                                              ; preds = %479
  %483 = load i32, i32* %17, align 4
  %484 = sub nsw i32 %483, 1
  %485 = load i32, i32* %16, align 4
  %486 = add nsw i32 %485, %484
  store i32 %486, i32* %16, align 4
  br label %487

487:                                              ; preds = %482, %479, %473
  %488 = load i32, i32* %16, align 4
  %489 = icmp eq i32 %488, 0
  br i1 %489, label %493, label %490

490:                                              ; preds = %487
  %491 = load i32, i32* %17, align 4
  %492 = icmp eq i32 %491, 0
  br i1 %492, label %493, label %509

493:                                              ; preds = %490, %487
  %494 = load i32, i32* %21, align 4
  %495 = icmp sgt i32 %494, 0
  br i1 %495, label %496, label %501

496:                                              ; preds = %493
  %497 = load i64, i64* %6, align 8
  %498 = load i32, i32* %21, align 4
  %499 = sext i32 %498 to i64
  %500 = add nsw i64 %497, %499
  store i64 %500, i64* %11, align 8
  br label %501

501:                                              ; preds = %496, %493
  %502 = load i64, i64* %11, align 8
  %503 = load i64, i64* %6, align 8
  %504 = sub nsw i64 %502, %503
  store i64 %504, i64* %29, align 8
  %505 = load i32*, i32** %7, align 8
  store i32 1, i32* %505, align 4
  %506 = load %struct.r1bio*, %struct.r1bio** %9, align 8
  %507 = call i32 @put_buf(%struct.r1bio* %506)
  %508 = load i64, i64* %29, align 8
  store i64 %508, i64* %4, align 8
  br label %768

509:                                              ; preds = %490
  %510 = load i64, i64* %11, align 8
  %511 = load %struct.mddev*, %struct.mddev** %5, align 8
  %512 = getelementptr inbounds %struct.mddev, %struct.mddev* %511, i32 0, i32 3
  %513 = load i64, i64* %512, align 8
  %514 = icmp sgt i64 %510, %513
  br i1 %514, label %515, label %519

515:                                              ; preds = %509
  %516 = load %struct.mddev*, %struct.mddev** %5, align 8
  %517 = getelementptr inbounds %struct.mddev, %struct.mddev* %516, i32 0, i32 3
  %518 = load i64, i64* %517, align 8
  store i64 %518, i64* %11, align 8
  br label %519

519:                                              ; preds = %515, %509
  %520 = load i64, i64* %11, align 8
  %521 = load i64, i64* %6, align 8
  %522 = load i32, i32* %20, align 4
  %523 = sext i32 %522 to i64
  %524 = add nsw i64 %521, %523
  %525 = icmp sgt i64 %520, %524
  br i1 %525, label %526, label %531

526:                                              ; preds = %519
  %527 = load i64, i64* %6, align 8
  %528 = load i32, i32* %20, align 4
  %529 = sext i32 %528 to i64
  %530 = add nsw i64 %527, %529
  store i64 %530, i64* %11, align 8
  br label %531

531:                                              ; preds = %526, %519
  store i64 0, i64* %12, align 8
  store i64 0, i64* %18, align 8
  br label %532

532:                                              ; preds = %635, %531
  %533 = load i32, i32* @PAGE_SIZE, align 4
  store i32 %533, i32* %31, align 4
  %534 = load i64, i64* %6, align 8
  %535 = load i32, i32* %31, align 4
  %536 = ashr i32 %535, 9
  %537 = sext i32 %536 to i64
  %538 = add nsw i64 %534, %537
  %539 = load i64, i64* %11, align 8
  %540 = icmp sgt i64 %538, %539
  br i1 %540, label %541, label %547

541:                                              ; preds = %532
  %542 = load i64, i64* %11, align 8
  %543 = load i64, i64* %6, align 8
  %544 = sub nsw i64 %542, %543
  %545 = shl i64 %544, 9
  %546 = trunc i64 %545 to i32
  store i32 %546, i32* %31, align 4
  br label %547

547:                                              ; preds = %541, %532
  %548 = load i32, i32* %31, align 4
  %549 = icmp eq i32 %548, 0
  br i1 %549, label %550, label %551

550:                                              ; preds = %547
  br label %640

551:                                              ; preds = %547
  %552 = load i64, i64* %18, align 8
  %553 = icmp eq i64 %552, 0
  br i1 %553, label %554, label %585

554:                                              ; preds = %551
  %555 = load %struct.mddev*, %struct.mddev** %5, align 8
  %556 = getelementptr inbounds %struct.mddev, %struct.mddev* %555, i32 0, i32 6
  %557 = load i32*, i32** %556, align 8
  %558 = load i64, i64* %6, align 8
  %559 = load i32, i32* %19, align 4
  %560 = call i32 @md_bitmap_start_sync(i32* %557, i64 %558, i64* %18, i32 %559)
  %561 = icmp ne i32 %560, 0
  br i1 %561, label %574, label %562

562:                                              ; preds = %554
  %563 = load %struct.r1conf*, %struct.r1conf** %8, align 8
  %564 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %563, i32 0, i32 0
  %565 = load i64, i64* %564, align 8
  %566 = icmp ne i64 %565, 0
  br i1 %566, label %574, label %567

567:                                              ; preds = %562
  %568 = load i32, i32* @MD_RECOVERY_REQUESTED, align 4
  %569 = load %struct.mddev*, %struct.mddev** %5, align 8
  %570 = getelementptr inbounds %struct.mddev, %struct.mddev* %569, i32 0, i32 5
  %571 = call i64 @test_bit(i32 %568, i64* %570)
  %572 = icmp ne i64 %571, 0
  br i1 %572, label %574, label %573

573:                                              ; preds = %567
  br label %640

574:                                              ; preds = %567, %562, %554
  %575 = load i32, i32* %31, align 4
  %576 = ashr i32 %575, 9
  %577 = sext i32 %576 to i64
  %578 = load i64, i64* %18, align 8
  %579 = icmp sgt i64 %577, %578
  br i1 %579, label %580, label %584

580:                                              ; preds = %574
  %581 = load i64, i64* %18, align 8
  %582 = shl i64 %581, 9
  %583 = trunc i64 %582 to i32
  store i32 %583, i32* %31, align 4
  br label %584

584:                                              ; preds = %580, %574
  br label %585

585:                                              ; preds = %584, %551
  store i32 0, i32* %14, align 4
  br label %586

586:                                              ; preds = %616, %585
  %587 = load i32, i32* %14, align 4
  %588 = load %struct.r1conf*, %struct.r1conf** %8, align 8
  %589 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %588, i32 0, i32 3
  %590 = load i32, i32* %589, align 8
  %591 = mul nsw i32 %590, 2
  %592 = icmp slt i32 %587, %591
  br i1 %592, label %593, label %619

593:                                              ; preds = %586
  %594 = load %struct.r1bio*, %struct.r1bio** %9, align 8
  %595 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %594, i32 0, i32 1
  %596 = load %struct.bio**, %struct.bio*** %595, align 8
  %597 = load i32, i32* %14, align 4
  %598 = sext i32 %597 to i64
  %599 = getelementptr inbounds %struct.bio*, %struct.bio** %596, i64 %598
  %600 = load %struct.bio*, %struct.bio** %599, align 8
  store %struct.bio* %600, %struct.bio** %10, align 8
  %601 = load %struct.bio*, %struct.bio** %10, align 8
  %602 = call %struct.resync_pages* @get_resync_pages(%struct.bio* %601)
  store %struct.resync_pages* %602, %struct.resync_pages** %32, align 8
  %603 = load %struct.bio*, %struct.bio** %10, align 8
  %604 = getelementptr inbounds %struct.bio, %struct.bio* %603, i32 0, i32 0
  %605 = load i64, i64* %604, align 8
  %606 = icmp ne i64 %605, 0
  br i1 %606, label %607, label %615

607:                                              ; preds = %593
  %608 = load %struct.resync_pages*, %struct.resync_pages** %32, align 8
  %609 = load i32, i32* %23, align 4
  %610 = call %struct.page* @resync_fetch_page(%struct.resync_pages* %608, i32 %609)
  store %struct.page* %610, %struct.page** %30, align 8
  %611 = load %struct.bio*, %struct.bio** %10, align 8
  %612 = load %struct.page*, %struct.page** %30, align 8
  %613 = load i32, i32* %31, align 4
  %614 = call i32 @bio_add_page(%struct.bio* %611, %struct.page* %612, i32 %613, i32 0)
  br label %615

615:                                              ; preds = %607, %593
  br label %616

616:                                              ; preds = %615
  %617 = load i32, i32* %14, align 4
  %618 = add nsw i32 %617, 1
  store i32 %618, i32* %14, align 4
  br label %586

619:                                              ; preds = %586
  %620 = load i32, i32* %31, align 4
  %621 = ashr i32 %620, 9
  %622 = sext i32 %621 to i64
  %623 = load i64, i64* %12, align 8
  %624 = add nsw i64 %623, %622
  store i64 %624, i64* %12, align 8
  %625 = load i32, i32* %31, align 4
  %626 = ashr i32 %625, 9
  %627 = sext i32 %626 to i64
  %628 = load i64, i64* %6, align 8
  %629 = add nsw i64 %628, %627
  store i64 %629, i64* %6, align 8
  %630 = load i32, i32* %31, align 4
  %631 = ashr i32 %630, 9
  %632 = sext i32 %631 to i64
  %633 = load i64, i64* %18, align 8
  %634 = sub nsw i64 %633, %632
  store i64 %634, i64* %18, align 8
  br label %635

635:                                              ; preds = %619
  %636 = load i32, i32* %23, align 4
  %637 = add nsw i32 %636, 1
  store i32 %637, i32* %23, align 4
  %638 = load i32, i32* @RESYNC_PAGES, align 4
  %639 = icmp slt i32 %637, %638
  br i1 %639, label %532, label %640

640:                                              ; preds = %635, %573, %550
  %641 = load i64, i64* %12, align 8
  %642 = load %struct.r1bio*, %struct.r1bio** %9, align 8
  %643 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %642, i32 0, i32 3
  store i64 %641, i64* %643, align 8
  %644 = load %struct.mddev*, %struct.mddev** %5, align 8
  %645 = call i64 @mddev_is_clustered(%struct.mddev* %644)
  %646 = icmp ne i64 %645, 0
  br i1 %646, label %647, label %679

647:                                              ; preds = %640
  %648 = load %struct.r1conf*, %struct.r1conf** %8, align 8
  %649 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %648, i32 0, i32 2
  %650 = load i64, i64* %649, align 8
  %651 = load i64, i64* %6, align 8
  %652 = load i64, i64* %12, align 8
  %653 = add nsw i64 %651, %652
  %654 = icmp slt i64 %650, %653
  br i1 %654, label %655, label %679

655:                                              ; preds = %647
  %656 = load %struct.mddev*, %struct.mddev** %5, align 8
  %657 = getelementptr inbounds %struct.mddev, %struct.mddev* %656, i32 0, i32 4
  %658 = load i64, i64* %657, align 8
  %659 = load %struct.r1conf*, %struct.r1conf** %8, align 8
  %660 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %659, i32 0, i32 1
  store i64 %658, i64* %660, align 8
  %661 = load %struct.r1conf*, %struct.r1conf** %8, align 8
  %662 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %661, i32 0, i32 1
  %663 = load i64, i64* %662, align 8
  %664 = load i64, i64* @CLUSTER_RESYNC_WINDOW_SECTORS, align 8
  %665 = add nsw i64 %663, %664
  %666 = load %struct.r1conf*, %struct.r1conf** %8, align 8
  %667 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %666, i32 0, i32 2
  store i64 %665, i64* %667, align 8
  %668 = load %struct.TYPE_6__*, %struct.TYPE_6__** @md_cluster_ops, align 8
  %669 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %668, i32 0, i32 0
  %670 = load i32 (%struct.mddev*, i64, i64)*, i32 (%struct.mddev*, i64, i64)** %669, align 8
  %671 = load %struct.mddev*, %struct.mddev** %5, align 8
  %672 = load %struct.r1conf*, %struct.r1conf** %8, align 8
  %673 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %672, i32 0, i32 1
  %674 = load i64, i64* %673, align 8
  %675 = load %struct.r1conf*, %struct.r1conf** %8, align 8
  %676 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %675, i32 0, i32 2
  %677 = load i64, i64* %676, align 8
  %678 = call i32 %670(%struct.mddev* %671, i64 %674, i64 %677)
  br label %679

679:                                              ; preds = %655, %647, %640
  %680 = load i32, i32* @MD_RECOVERY_REQUESTED, align 4
  %681 = load %struct.mddev*, %struct.mddev** %5, align 8
  %682 = getelementptr inbounds %struct.mddev, %struct.mddev* %681, i32 0, i32 5
  %683 = call i64 @test_bit(i32 %680, i64* %682)
  %684 = icmp ne i64 %683, 0
  br i1 %684, label %685, label %738

685:                                              ; preds = %679
  %686 = load %struct.r1bio*, %struct.r1bio** %9, align 8
  %687 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %686, i32 0, i32 2
  %688 = load i32, i32* %17, align 4
  %689 = call i32 @atomic_set(i32* %687, i32 %688)
  store i32 0, i32* %14, align 4
  br label %690

690:                                              ; preds = %734, %685
  %691 = load i32, i32* %14, align 4
  %692 = load %struct.r1conf*, %struct.r1conf** %8, align 8
  %693 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %692, i32 0, i32 3
  %694 = load i32, i32* %693, align 8
  %695 = mul nsw i32 %694, 2
  %696 = icmp slt i32 %691, %695
  br i1 %696, label %697, label %700

697:                                              ; preds = %690
  %698 = load i32, i32* %17, align 4
  %699 = icmp ne i32 %698, 0
  br label %700

700:                                              ; preds = %697, %690
  %701 = phi i1 [ false, %690 ], [ %699, %697 ]
  br i1 %701, label %702, label %737

702:                                              ; preds = %700
  %703 = load %struct.r1bio*, %struct.r1bio** %9, align 8
  %704 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %703, i32 0, i32 1
  %705 = load %struct.bio**, %struct.bio*** %704, align 8
  %706 = load i32, i32* %14, align 4
  %707 = sext i32 %706 to i64
  %708 = getelementptr inbounds %struct.bio*, %struct.bio** %705, i64 %707
  %709 = load %struct.bio*, %struct.bio** %708, align 8
  store %struct.bio* %709, %struct.bio** %10, align 8
  %710 = load %struct.bio*, %struct.bio** %10, align 8
  %711 = getelementptr inbounds %struct.bio, %struct.bio* %710, i32 0, i32 0
  %712 = load i64, i64* %711, align 8
  %713 = load i64, i64* @end_sync_read, align 8
  %714 = icmp eq i64 %712, %713
  br i1 %714, label %715, label %733

715:                                              ; preds = %702
  %716 = load i32, i32* %17, align 4
  %717 = add nsw i32 %716, -1
  store i32 %717, i32* %17, align 4
  %718 = load %struct.bio*, %struct.bio** %10, align 8
  %719 = load i64, i64* %12, align 8
  %720 = call i32 @md_sync_acct_bio(%struct.bio* %718, i64 %719)
  %721 = load i32, i32* %17, align 4
  %722 = icmp eq i32 %721, 1
  br i1 %722, label %723, label %730

723:                                              ; preds = %715
  %724 = load i32, i32* @MD_FAILFAST, align 4
  %725 = xor i32 %724, -1
  %726 = load %struct.bio*, %struct.bio** %10, align 8
  %727 = getelementptr inbounds %struct.bio, %struct.bio* %726, i32 0, i32 1
  %728 = load i32, i32* %727, align 8
  %729 = and i32 %728, %725
  store i32 %729, i32* %727, align 8
  br label %730

730:                                              ; preds = %723, %715
  %731 = load %struct.bio*, %struct.bio** %10, align 8
  %732 = call i32 @generic_make_request(%struct.bio* %731)
  br label %733

733:                                              ; preds = %730, %702
  br label %734

734:                                              ; preds = %733
  %735 = load i32, i32* %14, align 4
  %736 = add nsw i32 %735, 1
  store i32 %736, i32* %14, align 4
  br label %690

737:                                              ; preds = %700
  br label %766

738:                                              ; preds = %679
  %739 = load %struct.r1bio*, %struct.r1bio** %9, align 8
  %740 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %739, i32 0, i32 2
  %741 = call i32 @atomic_set(i32* %740, i32 1)
  %742 = load %struct.r1bio*, %struct.r1bio** %9, align 8
  %743 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %742, i32 0, i32 1
  %744 = load %struct.bio**, %struct.bio*** %743, align 8
  %745 = load %struct.r1bio*, %struct.r1bio** %9, align 8
  %746 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %745, i32 0, i32 0
  %747 = load i32, i32* %746, align 8
  %748 = sext i32 %747 to i64
  %749 = getelementptr inbounds %struct.bio*, %struct.bio** %744, i64 %748
  %750 = load %struct.bio*, %struct.bio** %749, align 8
  store %struct.bio* %750, %struct.bio** %10, align 8
  %751 = load %struct.bio*, %struct.bio** %10, align 8
  %752 = load i64, i64* %12, align 8
  %753 = call i32 @md_sync_acct_bio(%struct.bio* %751, i64 %752)
  %754 = load i32, i32* %17, align 4
  %755 = icmp eq i32 %754, 1
  br i1 %755, label %756, label %763

756:                                              ; preds = %738
  %757 = load i32, i32* @MD_FAILFAST, align 4
  %758 = xor i32 %757, -1
  %759 = load %struct.bio*, %struct.bio** %10, align 8
  %760 = getelementptr inbounds %struct.bio, %struct.bio* %759, i32 0, i32 1
  %761 = load i32, i32* %760, align 8
  %762 = and i32 %761, %758
  store i32 %762, i32* %760, align 8
  br label %763

763:                                              ; preds = %756, %738
  %764 = load %struct.bio*, %struct.bio** %10, align 8
  %765 = call i32 @generic_make_request(%struct.bio* %764)
  br label %766

766:                                              ; preds = %763, %737
  %767 = load i64, i64* %12, align 8
  store i64 %767, i64* %4, align 8
  br label %768

768:                                              ; preds = %766, %501, %461, %451, %174, %134, %111, %88, %47
  %769 = load i64, i64* %4, align 8
  ret i64 %769
}

declare dso_local i32 @sector_to_idx(i64) #1

declare dso_local i32 @mempool_initialized(i32*) #1

declare dso_local i64 @init_resync(%struct.r1conf*) #1

declare dso_local i32 @md_bitmap_end_sync(i32*, i64, i64*, i32) #1

declare dso_local i32 @md_bitmap_close_sync(i32*) #1

declare dso_local i32 @close_sync(%struct.r1conf*) #1

declare dso_local i64 @mddev_is_clustered(%struct.mddev*) #1

declare dso_local i64 @test_bit(i32, i64*) #1

declare dso_local i32 @md_bitmap_start_sync(i32*, i64, i64*, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @schedule_timeout_uninterruptible(i32) #1

declare dso_local i32 @md_bitmap_cond_end_sync(i32*, i64, i32) #1

declare dso_local i64 @raise_barrier(%struct.r1conf*, i64) #1

declare dso_local %struct.r1bio* @raid1_alloc_init_r1buf(%struct.r1conf*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @set_bit(i32, i64*) #1

declare dso_local i32 @align_to_barrier_unit_end(i64, i32) #1

declare dso_local %struct.md_rdev* @rcu_dereference(%struct.md_rdev*) #1

declare dso_local i32 @bio_set_op_attrs(%struct.bio*, i32, i32) #1

declare dso_local i64 @is_badblock(%struct.md_rdev*, i64, i32, i64*, i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @bio_set_dev(%struct.bio*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i64 @rdev_set_badblocks(%struct.md_rdev*, i64, i32, i32) #1

declare dso_local i32 @put_buf(%struct.r1bio*) #1

declare dso_local %struct.resync_pages* @get_resync_pages(%struct.bio*) #1

declare dso_local %struct.page* @resync_fetch_page(%struct.resync_pages*, i32) #1

declare dso_local i32 @bio_add_page(%struct.bio*, %struct.page*, i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @md_sync_acct_bio(%struct.bio*, i64) #1

declare dso_local i32 @generic_make_request(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
