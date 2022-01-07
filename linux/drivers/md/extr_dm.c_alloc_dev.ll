; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm.c_alloc_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm.c_alloc_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mapped_device = type { i32, i32, i32, i32, %struct.TYPE_10__*, i32, i32, i32, %struct.TYPE_9__*, %struct.TYPE_8__, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, %struct.mapped_device*, %struct.TYPE_9__*, i32*, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_7__*, %struct.mapped_device* }
%struct.TYPE_7__ = type { %struct.mapped_device* }
%struct.TYPE_8__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"unable to allocate device, out of memory.\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@DM_ANY_MINOR = common dso_local global i32 0, align 4
@DM_TYPE_NONE = common dso_local global i32 0, align 4
@dm_wq_work = common dso_local global i32 0, align 4
@_major = common dso_local global i32 0, align 4
@dm_blk_dops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"dm-%d\00", align 1
@CONFIG_DAX_DRIVER = common dso_local global i32 0, align 4
@dm_dax_ops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"kdmflush\00", align 1
@WQ_MEM_RECLAIM = common dso_local global i32 0, align 4
@_minor_lock = common dso_local global i32 0, align 4
@_minor_idr = common dso_local global i32 0, align 4
@MINOR_ALLOCED = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mapped_device* (i32)* @alloc_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mapped_device* @alloc_dev(i32 %0) #0 {
  %2 = alloca %struct.mapped_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.mapped_device*, align 8
  %7 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  %8 = call i32 (...) @dm_get_numa_node()
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.mapped_device* @kvzalloc_node(i32 120, i32 %9, i32 %10)
  store %struct.mapped_device* %11, %struct.mapped_device** %6, align 8
  %12 = load %struct.mapped_device*, %struct.mapped_device** %6, align 8
  %13 = icmp ne %struct.mapped_device* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %1
  %15 = call i32 @DMWARN(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  store %struct.mapped_device* null, %struct.mapped_device** %2, align 8
  br label %244

16:                                               ; preds = %1
  %17 = load i32, i32* @THIS_MODULE, align 4
  %18 = call i32 @try_module_get(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  br label %241

21:                                               ; preds = %16
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @DM_ANY_MINOR, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = call i32 @next_free_minor(i32* %3)
  store i32 %26, i32* %4, align 4
  br label %30

27:                                               ; preds = %21
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @specific_minor(i32 %28)
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %27, %25
  %31 = load i32, i32* %4, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  br label %238

34:                                               ; preds = %30
  %35 = load %struct.mapped_device*, %struct.mapped_device** %6, align 8
  %36 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %35, i32 0, i32 25
  %37 = call i32 @init_srcu_struct(i32* %36)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %235

41:                                               ; preds = %34
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.mapped_device*, %struct.mapped_device** %6, align 8
  %44 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load %struct.mapped_device*, %struct.mapped_device** %6, align 8
  %46 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %45, i32 0, i32 1
  store i32 0, i32* %46, align 4
  %47 = load i32, i32* @DM_TYPE_NONE, align 4
  %48 = load %struct.mapped_device*, %struct.mapped_device** %6, align 8
  %49 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %48, i32 0, i32 24
  store i32 %47, i32* %49, align 4
  %50 = load %struct.mapped_device*, %struct.mapped_device** %6, align 8
  %51 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %50, i32 0, i32 23
  %52 = call i32 @mutex_init(i32* %51)
  %53 = load %struct.mapped_device*, %struct.mapped_device** %6, align 8
  %54 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %53, i32 0, i32 22
  %55 = call i32 @mutex_init(i32* %54)
  %56 = load %struct.mapped_device*, %struct.mapped_device** %6, align 8
  %57 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %56, i32 0, i32 21
  %58 = call i32 @mutex_init(i32* %57)
  %59 = load %struct.mapped_device*, %struct.mapped_device** %6, align 8
  %60 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %59, i32 0, i32 20
  %61 = call i32 @spin_lock_init(i32* %60)
  %62 = load %struct.mapped_device*, %struct.mapped_device** %6, align 8
  %63 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %62, i32 0, i32 19
  %64 = call i32 @atomic_set(i32* %63, i32 1)
  %65 = load %struct.mapped_device*, %struct.mapped_device** %6, align 8
  %66 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %65, i32 0, i32 18
  %67 = call i32 @atomic_set(i32* %66, i32 0)
  %68 = load %struct.mapped_device*, %struct.mapped_device** %6, align 8
  %69 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %68, i32 0, i32 17
  %70 = call i32 @atomic_set(i32* %69, i32 0)
  %71 = load %struct.mapped_device*, %struct.mapped_device** %6, align 8
  %72 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %71, i32 0, i32 16
  %73 = call i32 @atomic_set(i32* %72, i32 0)
  %74 = load %struct.mapped_device*, %struct.mapped_device** %6, align 8
  %75 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %74, i32 0, i32 15
  %76 = call i32 @INIT_LIST_HEAD(i32* %75)
  %77 = load %struct.mapped_device*, %struct.mapped_device** %6, align 8
  %78 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %77, i32 0, i32 14
  %79 = call i32 @INIT_LIST_HEAD(i32* %78)
  %80 = load %struct.mapped_device*, %struct.mapped_device** %6, align 8
  %81 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %80, i32 0, i32 13
  %82 = call i32 @spin_lock_init(i32* %81)
  %83 = load i32, i32* @GFP_KERNEL, align 4
  %84 = load i32, i32* %5, align 4
  %85 = call %struct.TYPE_9__* @blk_alloc_queue_node(i32 %83, i32 %84)
  %86 = load %struct.mapped_device*, %struct.mapped_device** %6, align 8
  %87 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %86, i32 0, i32 8
  store %struct.TYPE_9__* %85, %struct.TYPE_9__** %87, align 8
  %88 = load %struct.mapped_device*, %struct.mapped_device** %6, align 8
  %89 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %88, i32 0, i32 8
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %89, align 8
  %91 = icmp ne %struct.TYPE_9__* %90, null
  br i1 %91, label %93, label %92

92:                                               ; preds = %41
  br label %232

93:                                               ; preds = %41
  %94 = load %struct.mapped_device*, %struct.mapped_device** %6, align 8
  %95 = load %struct.mapped_device*, %struct.mapped_device** %6, align 8
  %96 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %95, i32 0, i32 8
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 1
  store %struct.mapped_device* %94, %struct.mapped_device** %98, align 8
  %99 = load %struct.mapped_device*, %struct.mapped_device** %6, align 8
  %100 = load %struct.mapped_device*, %struct.mapped_device** %6, align 8
  %101 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %100, i32 0, i32 8
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 0
  store %struct.mapped_device* %99, %struct.mapped_device** %105, align 8
  %106 = load %struct.mapped_device*, %struct.mapped_device** %6, align 8
  %107 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = call %struct.TYPE_10__* @alloc_disk_node(i32 1, i32 %108)
  %110 = load %struct.mapped_device*, %struct.mapped_device** %6, align 8
  %111 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %110, i32 0, i32 4
  store %struct.TYPE_10__* %109, %struct.TYPE_10__** %111, align 8
  %112 = load %struct.mapped_device*, %struct.mapped_device** %6, align 8
  %113 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %112, i32 0, i32 4
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %113, align 8
  %115 = icmp ne %struct.TYPE_10__* %114, null
  br i1 %115, label %117, label %116

116:                                              ; preds = %93
  br label %232

117:                                              ; preds = %93
  %118 = load %struct.mapped_device*, %struct.mapped_device** %6, align 8
  %119 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %118, i32 0, i32 12
  %120 = call i32 @init_waitqueue_head(i32* %119)
  %121 = load %struct.mapped_device*, %struct.mapped_device** %6, align 8
  %122 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %121, i32 0, i32 11
  %123 = load i32, i32* @dm_wq_work, align 4
  %124 = call i32 @INIT_WORK(i32* %122, i32 %123)
  %125 = load %struct.mapped_device*, %struct.mapped_device** %6, align 8
  %126 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %125, i32 0, i32 10
  %127 = call i32 @init_waitqueue_head(i32* %126)
  %128 = load %struct.mapped_device*, %struct.mapped_device** %6, align 8
  %129 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %128, i32 0, i32 9
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 0
  %131 = call i32 @init_completion(i32* %130)
  %132 = load i32, i32* @_major, align 4
  %133 = load %struct.mapped_device*, %struct.mapped_device** %6, align 8
  %134 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %133, i32 0, i32 4
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 5
  store i32 %132, i32* %136, align 8
  %137 = load i32, i32* %3, align 4
  %138 = load %struct.mapped_device*, %struct.mapped_device** %6, align 8
  %139 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %138, i32 0, i32 4
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 0
  store i32 %137, i32* %141, align 8
  %142 = load %struct.mapped_device*, %struct.mapped_device** %6, align 8
  %143 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %142, i32 0, i32 4
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 4
  store i32* @dm_blk_dops, i32** %145, align 8
  %146 = load %struct.mapped_device*, %struct.mapped_device** %6, align 8
  %147 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %146, i32 0, i32 8
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %147, align 8
  %149 = load %struct.mapped_device*, %struct.mapped_device** %6, align 8
  %150 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %149, i32 0, i32 4
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 3
  store %struct.TYPE_9__* %148, %struct.TYPE_9__** %152, align 8
  %153 = load %struct.mapped_device*, %struct.mapped_device** %6, align 8
  %154 = load %struct.mapped_device*, %struct.mapped_device** %6, align 8
  %155 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %154, i32 0, i32 4
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 2
  store %struct.mapped_device* %153, %struct.mapped_device** %157, align 8
  %158 = load %struct.mapped_device*, %struct.mapped_device** %6, align 8
  %159 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %158, i32 0, i32 4
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* %3, align 4
  %164 = call i32 @sprintf(i32 %162, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %163)
  %165 = load i32, i32* @CONFIG_DAX_DRIVER, align 4
  %166 = call i64 @IS_ENABLED(i32 %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %184

168:                                              ; preds = %117
  %169 = load %struct.mapped_device*, %struct.mapped_device** %6, align 8
  %170 = load %struct.mapped_device*, %struct.mapped_device** %6, align 8
  %171 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %170, i32 0, i32 4
  %172 = load %struct.TYPE_10__*, %struct.TYPE_10__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @alloc_dax(%struct.mapped_device* %169, i32 %174, i32* @dm_dax_ops, i32 0)
  %176 = load %struct.mapped_device*, %struct.mapped_device** %6, align 8
  %177 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %176, i32 0, i32 7
  store i32 %175, i32* %177, align 8
  %178 = load %struct.mapped_device*, %struct.mapped_device** %6, align 8
  %179 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %178, i32 0, i32 7
  %180 = load i32, i32* %179, align 8
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %183, label %182

182:                                              ; preds = %168
  br label %232

183:                                              ; preds = %168
  br label %184

184:                                              ; preds = %183, %117
  %185 = load %struct.mapped_device*, %struct.mapped_device** %6, align 8
  %186 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %185, i32 0, i32 4
  %187 = load %struct.TYPE_10__*, %struct.TYPE_10__** %186, align 8
  %188 = call i32 @add_disk_no_queue_reg(%struct.TYPE_10__* %187)
  %189 = load %struct.mapped_device*, %struct.mapped_device** %6, align 8
  %190 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %189, i32 0, i32 6
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* @_major, align 4
  %193 = load i32, i32* %3, align 4
  %194 = call i32 @MKDEV(i32 %192, i32 %193)
  %195 = call i32 @format_dev_t(i32 %191, i32 %194)
  %196 = load i32, i32* @WQ_MEM_RECLAIM, align 4
  %197 = call i32 @alloc_workqueue(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %196, i32 0)
  %198 = load %struct.mapped_device*, %struct.mapped_device** %6, align 8
  %199 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %198, i32 0, i32 5
  store i32 %197, i32* %199, align 8
  %200 = load %struct.mapped_device*, %struct.mapped_device** %6, align 8
  %201 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %200, i32 0, i32 5
  %202 = load i32, i32* %201, align 8
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %205, label %204

204:                                              ; preds = %184
  br label %232

205:                                              ; preds = %184
  %206 = load %struct.mapped_device*, %struct.mapped_device** %6, align 8
  %207 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %206, i32 0, i32 4
  %208 = load %struct.TYPE_10__*, %struct.TYPE_10__** %207, align 8
  %209 = call i32 @bdget_disk(%struct.TYPE_10__* %208, i32 0)
  %210 = load %struct.mapped_device*, %struct.mapped_device** %6, align 8
  %211 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %210, i32 0, i32 3
  store i32 %209, i32* %211, align 4
  %212 = load %struct.mapped_device*, %struct.mapped_device** %6, align 8
  %213 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %212, i32 0, i32 3
  %214 = load i32, i32* %213, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %217, label %216

216:                                              ; preds = %205
  br label %232

217:                                              ; preds = %205
  %218 = load %struct.mapped_device*, %struct.mapped_device** %6, align 8
  %219 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %218, i32 0, i32 2
  %220 = call i32 @dm_stats_init(i32* %219)
  %221 = call i32 @spin_lock(i32* @_minor_lock)
  %222 = load %struct.mapped_device*, %struct.mapped_device** %6, align 8
  %223 = load i32, i32* %3, align 4
  %224 = call i8* @idr_replace(i32* @_minor_idr, %struct.mapped_device* %222, i32 %223)
  store i8* %224, i8** %7, align 8
  %225 = call i32 @spin_unlock(i32* @_minor_lock)
  %226 = load i8*, i8** %7, align 8
  %227 = load i8*, i8** @MINOR_ALLOCED, align 8
  %228 = icmp ne i8* %226, %227
  %229 = zext i1 %228 to i32
  %230 = call i32 @BUG_ON(i32 %229)
  %231 = load %struct.mapped_device*, %struct.mapped_device** %6, align 8
  store %struct.mapped_device* %231, %struct.mapped_device** %2, align 8
  br label %244

232:                                              ; preds = %216, %204, %182, %116, %92
  %233 = load %struct.mapped_device*, %struct.mapped_device** %6, align 8
  %234 = call i32 @cleanup_mapped_device(%struct.mapped_device* %233)
  br label %235

235:                                              ; preds = %232, %40
  %236 = load i32, i32* %3, align 4
  %237 = call i32 @free_minor(i32 %236)
  br label %238

238:                                              ; preds = %235, %33
  %239 = load i32, i32* @THIS_MODULE, align 4
  %240 = call i32 @module_put(i32 %239)
  br label %241

241:                                              ; preds = %238, %20
  %242 = load %struct.mapped_device*, %struct.mapped_device** %6, align 8
  %243 = call i32 @kvfree(%struct.mapped_device* %242)
  store %struct.mapped_device* null, %struct.mapped_device** %2, align 8
  br label %244

244:                                              ; preds = %241, %217, %14
  %245 = load %struct.mapped_device*, %struct.mapped_device** %2, align 8
  ret %struct.mapped_device* %245
}

declare dso_local i32 @dm_get_numa_node(...) #1

declare dso_local %struct.mapped_device* @kvzalloc_node(i32, i32, i32) #1

declare dso_local i32 @DMWARN(i8*) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @next_free_minor(i32*) #1

declare dso_local i32 @specific_minor(i32) #1

declare dso_local i32 @init_srcu_struct(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local %struct.TYPE_9__* @blk_alloc_queue_node(i32, i32) #1

declare dso_local %struct.TYPE_10__* @alloc_disk_node(i32, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @sprintf(i32, i8*, i32) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @alloc_dax(%struct.mapped_device*, i32, i32*, i32) #1

declare dso_local i32 @add_disk_no_queue_reg(%struct.TYPE_10__*) #1

declare dso_local i32 @format_dev_t(i32, i32) #1

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local i32 @alloc_workqueue(i8*, i32, i32) #1

declare dso_local i32 @bdget_disk(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @dm_stats_init(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i8* @idr_replace(i32*, %struct.mapped_device*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @cleanup_mapped_device(%struct.mapped_device*) #1

declare dso_local i32 @free_minor(i32) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @kvfree(%struct.mapped_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
