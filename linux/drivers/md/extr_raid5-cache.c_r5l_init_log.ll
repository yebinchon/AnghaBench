; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid5-cache.c_r5l_init_log.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid5-cache.c_r5l_init_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r5conf = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.md_rdev = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.request_queue = type { i32 }
%struct.r5l_log = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_5__*, %struct.md_rdev*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@BDEVNAME_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"md/raid:%s: using device %s as journal\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [70 x i8] c"md/raid:%s: write journal/cache doesn't work for array with %d disks\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@QUEUE_FLAG_WC = common dso_local global i32 0, align 4
@r5l_io_unit = common dso_local global i32 0, align 4
@R5L_POOL_SIZE = common dso_local global i32 0, align 4
@BIOSET_NEED_BVECS = common dso_local global i32 0, align 4
@GFP_NOWAIT = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@r5l_reclaim_thread = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"reclaim\00", align 1
@R5C_RECLAIM_WAKEUP_INTERVAL = common dso_local global i32 0, align 4
@r5l_submit_io_async = common dso_local global i32 0, align 4
@r5c_disable_writeback_async = common dso_local global i32 0, align 4
@R5C_JOURNAL_MODE_WRITE_THROUGH = common dso_local global i32 0, align 4
@MD_HAS_JOURNAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r5l_init_log(%struct.r5conf* %0, %struct.md_rdev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.r5conf*, align 8
  %5 = alloca %struct.md_rdev*, align 8
  %6 = alloca %struct.request_queue*, align 8
  %7 = alloca %struct.r5l_log*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.r5conf* %0, %struct.r5conf** %4, align 8
  store %struct.md_rdev* %1, %struct.md_rdev** %5, align 8
  %12 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %13 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.request_queue* @bdev_get_queue(i32 %14)
  store %struct.request_queue* %15, %struct.request_queue** %6, align 8
  %16 = load i32, i32* @BDEVNAME_SIZE, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %8, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %9, align 8
  %20 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %21 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %20, i32 0, i32 1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = call i32 @mdname(%struct.TYPE_4__* %22)
  %24 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %25 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @bdevname(i32 %26, i8* %19)
  %28 = call i32 @pr_debug(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %27)
  %29 = load i32, i32* @PAGE_SIZE, align 4
  %30 = icmp ne i32 %29, 4096
  br i1 %30, label %31, label %34

31:                                               ; preds = %2
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %236

34:                                               ; preds = %2
  %35 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %36 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = mul i64 8, %38
  %40 = add i64 4, %39
  %41 = load i32, i32* @PAGE_SIZE, align 4
  %42 = sext i32 %41 to i64
  %43 = icmp ugt i64 %40, %42
  br i1 %43, label %44, label %55

44:                                               ; preds = %34
  %45 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %46 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %45, i32 0, i32 1
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = call i32 @mdname(%struct.TYPE_4__* %47)
  %49 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %50 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @pr_err(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i32 %48, i32 %51)
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %236

55:                                               ; preds = %34
  %56 = load i32, i32* @GFP_KERNEL, align 4
  %57 = call %struct.r5l_log* @kzalloc(i32 120, i32 %56)
  store %struct.r5l_log* %57, %struct.r5l_log** %7, align 8
  %58 = load %struct.r5l_log*, %struct.r5l_log** %7, align 8
  %59 = icmp ne %struct.r5l_log* %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %55
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %236

63:                                               ; preds = %55
  %64 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %65 = load %struct.r5l_log*, %struct.r5l_log** %7, align 8
  %66 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %65, i32 0, i32 16
  store %struct.md_rdev* %64, %struct.md_rdev** %66, align 8
  %67 = load i32, i32* @QUEUE_FLAG_WC, align 4
  %68 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %69 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %68, i32 0, i32 0
  %70 = call i64 @test_bit(i32 %67, i32* %69)
  %71 = icmp ne i64 %70, 0
  %72 = zext i1 %71 to i32
  %73 = load %struct.r5l_log*, %struct.r5l_log** %7, align 8
  %74 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %76 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %75, i32 0, i32 0
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @crc32c_le(i32 -1, i32 %79, i32 4)
  %81 = load %struct.r5l_log*, %struct.r5l_log** %7, align 8
  %82 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %81, i32 0, i32 26
  store i32 %80, i32* %82, align 4
  %83 = load %struct.r5l_log*, %struct.r5l_log** %7, align 8
  %84 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %83, i32 0, i32 25
  %85 = call i32 @mutex_init(i32* %84)
  %86 = load %struct.r5l_log*, %struct.r5l_log** %7, align 8
  %87 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %86, i32 0, i32 24
  %88 = call i32 @spin_lock_init(i32* %87)
  %89 = load %struct.r5l_log*, %struct.r5l_log** %7, align 8
  %90 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %89, i32 0, i32 23
  %91 = call i32 @INIT_LIST_HEAD(i32* %90)
  %92 = load %struct.r5l_log*, %struct.r5l_log** %7, align 8
  %93 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %92, i32 0, i32 22
  %94 = call i32 @INIT_LIST_HEAD(i32* %93)
  %95 = load %struct.r5l_log*, %struct.r5l_log** %7, align 8
  %96 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %95, i32 0, i32 21
  %97 = call i32 @INIT_LIST_HEAD(i32* %96)
  %98 = load %struct.r5l_log*, %struct.r5l_log** %7, align 8
  %99 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %98, i32 0, i32 20
  %100 = call i32 @INIT_LIST_HEAD(i32* %99)
  %101 = load %struct.r5l_log*, %struct.r5l_log** %7, align 8
  %102 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %101, i32 0, i32 19
  %103 = call i32 @bio_init(i32* %102, i32* null, i32 0)
  %104 = load i32, i32* @r5l_io_unit, align 4
  %105 = call i32 @KMEM_CACHE(i32 %104, i32 0)
  %106 = load %struct.r5l_log*, %struct.r5l_log** %7, align 8
  %107 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %106, i32 0, i32 1
  store i32 %105, i32* %107, align 4
  %108 = load %struct.r5l_log*, %struct.r5l_log** %7, align 8
  %109 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %113, label %112

112:                                              ; preds = %63
  br label %231

113:                                              ; preds = %63
  %114 = load %struct.r5l_log*, %struct.r5l_log** %7, align 8
  %115 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %114, i32 0, i32 2
  %116 = load i32, i32* @R5L_POOL_SIZE, align 4
  %117 = load %struct.r5l_log*, %struct.r5l_log** %7, align 8
  %118 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @mempool_init_slab_pool(i32* %115, i32 %116, i32 %119)
  store i32 %120, i32* %10, align 4
  %121 = load i32, i32* %10, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %113
  br label %226

124:                                              ; preds = %113
  %125 = load %struct.r5l_log*, %struct.r5l_log** %7, align 8
  %126 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %125, i32 0, i32 3
  %127 = load i32, i32* @R5L_POOL_SIZE, align 4
  %128 = load i32, i32* @BIOSET_NEED_BVECS, align 4
  %129 = call i32 @bioset_init(i32* %126, i32 %127, i32 0, i32 %128)
  store i32 %129, i32* %10, align 4
  %130 = load i32, i32* %10, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %124
  br label %222

133:                                              ; preds = %124
  %134 = load %struct.r5l_log*, %struct.r5l_log** %7, align 8
  %135 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %134, i32 0, i32 4
  %136 = load i32, i32* @R5L_POOL_SIZE, align 4
  %137 = call i32 @mempool_init_page_pool(i32* %135, i32 %136, i32 0)
  store i32 %137, i32* %10, align 4
  %138 = load i32, i32* %10, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %133
  br label %218

141:                                              ; preds = %133
  %142 = load %struct.r5l_log*, %struct.r5l_log** %7, align 8
  %143 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %142, i32 0, i32 18
  %144 = call i32 @spin_lock_init(i32* %143)
  %145 = load %struct.r5l_log*, %struct.r5l_log** %7, align 8
  %146 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %145, i32 0, i32 17
  %147 = load i32, i32* @GFP_NOWAIT, align 4
  %148 = load i32, i32* @__GFP_NOWARN, align 4
  %149 = or i32 %147, %148
  %150 = call i32 @INIT_RADIX_TREE(i32* %146, i32 %149)
  %151 = load i32, i32* @r5l_reclaim_thread, align 4
  %152 = load %struct.r5l_log*, %struct.r5l_log** %7, align 8
  %153 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %152, i32 0, i32 16
  %154 = load %struct.md_rdev*, %struct.md_rdev** %153, align 8
  %155 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %154, i32 0, i32 0
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %155, align 8
  %157 = call %struct.TYPE_5__* @md_register_thread(i32 %151, %struct.TYPE_6__* %156, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %158 = load %struct.r5l_log*, %struct.r5l_log** %7, align 8
  %159 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %158, i32 0, i32 15
  store %struct.TYPE_5__* %157, %struct.TYPE_5__** %159, align 8
  %160 = load %struct.r5l_log*, %struct.r5l_log** %7, align 8
  %161 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %160, i32 0, i32 15
  %162 = load %struct.TYPE_5__*, %struct.TYPE_5__** %161, align 8
  %163 = icmp ne %struct.TYPE_5__* %162, null
  br i1 %163, label %165, label %164

164:                                              ; preds = %141
  br label %214

165:                                              ; preds = %141
  %166 = load i32, i32* @R5C_RECLAIM_WAKEUP_INTERVAL, align 4
  %167 = load %struct.r5l_log*, %struct.r5l_log** %7, align 8
  %168 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %167, i32 0, i32 15
  %169 = load %struct.TYPE_5__*, %struct.TYPE_5__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 0
  store i32 %166, i32* %170, align 4
  %171 = load %struct.r5l_log*, %struct.r5l_log** %7, align 8
  %172 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %171, i32 0, i32 14
  %173 = call i32 @init_waitqueue_head(i32* %172)
  %174 = load %struct.r5l_log*, %struct.r5l_log** %7, align 8
  %175 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %174, i32 0, i32 13
  %176 = call i32 @INIT_LIST_HEAD(i32* %175)
  %177 = load %struct.r5l_log*, %struct.r5l_log** %7, align 8
  %178 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %177, i32 0, i32 12
  %179 = call i32 @INIT_LIST_HEAD(i32* %178)
  %180 = load %struct.r5l_log*, %struct.r5l_log** %7, align 8
  %181 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %180, i32 0, i32 11
  %182 = call i32 @spin_lock_init(i32* %181)
  %183 = load %struct.r5l_log*, %struct.r5l_log** %7, align 8
  %184 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %183, i32 0, i32 10
  %185 = load i32, i32* @r5l_submit_io_async, align 4
  %186 = call i32 @INIT_WORK(i32* %184, i32 %185)
  %187 = load %struct.r5l_log*, %struct.r5l_log** %7, align 8
  %188 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %187, i32 0, i32 9
  %189 = load i32, i32* @r5c_disable_writeback_async, align 4
  %190 = call i32 @INIT_WORK(i32* %188, i32 %189)
  %191 = load i32, i32* @R5C_JOURNAL_MODE_WRITE_THROUGH, align 4
  %192 = load %struct.r5l_log*, %struct.r5l_log** %7, align 8
  %193 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %192, i32 0, i32 8
  store i32 %191, i32* %193, align 8
  %194 = load %struct.r5l_log*, %struct.r5l_log** %7, align 8
  %195 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %194, i32 0, i32 7
  %196 = call i32 @INIT_LIST_HEAD(i32* %195)
  %197 = load %struct.r5l_log*, %struct.r5l_log** %7, align 8
  %198 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %197, i32 0, i32 6
  %199 = call i32 @spin_lock_init(i32* %198)
  %200 = load %struct.r5l_log*, %struct.r5l_log** %7, align 8
  %201 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %200, i32 0, i32 5
  %202 = call i32 @atomic_set(i32* %201, i32 0)
  %203 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %204 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 8
  %206 = load %struct.r5l_log*, %struct.r5l_log** %7, align 8
  %207 = call i32 @rcu_assign_pointer(i32 %205, %struct.r5l_log* %206)
  %208 = load i32, i32* @MD_HAS_JOURNAL, align 4
  %209 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %210 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %209, i32 0, i32 1
  %211 = load %struct.TYPE_4__*, %struct.TYPE_4__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %211, i32 0, i32 0
  %213 = call i32 @set_bit(i32 %208, i32* %212)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %236

214:                                              ; preds = %164
  %215 = load %struct.r5l_log*, %struct.r5l_log** %7, align 8
  %216 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %215, i32 0, i32 4
  %217 = call i32 @mempool_exit(i32* %216)
  br label %218

218:                                              ; preds = %214, %140
  %219 = load %struct.r5l_log*, %struct.r5l_log** %7, align 8
  %220 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %219, i32 0, i32 3
  %221 = call i32 @bioset_exit(i32* %220)
  br label %222

222:                                              ; preds = %218, %132
  %223 = load %struct.r5l_log*, %struct.r5l_log** %7, align 8
  %224 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %223, i32 0, i32 2
  %225 = call i32 @mempool_exit(i32* %224)
  br label %226

226:                                              ; preds = %222, %123
  %227 = load %struct.r5l_log*, %struct.r5l_log** %7, align 8
  %228 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = call i32 @kmem_cache_destroy(i32 %229)
  br label %231

231:                                              ; preds = %226, %112
  %232 = load %struct.r5l_log*, %struct.r5l_log** %7, align 8
  %233 = call i32 @kfree(%struct.r5l_log* %232)
  %234 = load i32, i32* @EINVAL, align 4
  %235 = sub nsw i32 0, %234
  store i32 %235, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %236

236:                                              ; preds = %231, %165, %60, %44, %31
  %237 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %237)
  %238 = load i32, i32* %3, align 4
  ret i32 %238
}

declare dso_local %struct.request_queue* @bdev_get_queue(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @mdname(%struct.TYPE_4__*) #1

declare dso_local i32 @bdevname(i32, i8*) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local %struct.r5l_log* @kzalloc(i32, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @crc32c_le(i32, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @bio_init(i32*, i32*, i32) #1

declare dso_local i32 @KMEM_CACHE(i32, i32) #1

declare dso_local i32 @mempool_init_slab_pool(i32*, i32, i32) #1

declare dso_local i32 @bioset_init(i32*, i32, i32, i32) #1

declare dso_local i32 @mempool_init_page_pool(i32*, i32, i32) #1

declare dso_local i32 @INIT_RADIX_TREE(i32*, i32) #1

declare dso_local %struct.TYPE_5__* @md_register_thread(i32, %struct.TYPE_6__*, i8*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.r5l_log*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @mempool_exit(i32*) #1

declare dso_local i32 @bioset_exit(i32*) #1

declare dso_local i32 @kmem_cache_destroy(i32) #1

declare dso_local i32 @kfree(%struct.r5l_log*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
