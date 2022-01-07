; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-snap.c_snapshot_ctr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-snap.c_snapshot_ctr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { i8*, i32, i32, i32, %struct.dm_snapshot*, i32 }
%struct.dm_snapshot = type { i32, %struct.TYPE_11__*, %struct.TYPE_11__*, %struct.TYPE_10__*, i32, i32, i32, i32, i64, i64, i32, i32*, i32, i32, i64, i64, i64, i64, i32, i32, i32, i32, i64, i64, i32, i32, i64, i64, %struct.dm_target* }
%struct.TYPE_11__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_10__ = type { i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_10__*, i32, i8*)* }
%struct.dm_arg_set = type { i32, i8** }

@EINVAL = common dso_local global i32 0, align 4
@FMODE_READ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"requires 4 or more arguments\00", align 1
@FMODE_WRITE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Cannot allocate private snapshot structure\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Cannot get origin device\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"COW device cannot be the same as origin device\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"Cannot get COW device\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"Couldn't create exception store\00", align 1
@RB_ROOT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [36 x i8] c"Unable to allocate hash table space\00", align 1
@dm_kcopyd_throttle = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [31 x i8] c"Could not create kcopyd client\00", align 1
@MIN_IOS = common dso_local global i32 0, align 4
@pending_cache = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [50 x i8] c"Could not allocate mempool for pending exceptions\00", align 1
@DM_TRACKED_CHUNK_HASH_SIZE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [41 x i8] c"Snapshot origin struct allocation failed\00", align 1
@dm_add_exception = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [33 x i8] c"Failed to read snapshot metadata\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"Snapshot is marked invalid.\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"Chunk size not set\00", align 1
@exception_cache = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_target*, i32, i8**)* @snapshot_ctr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snapshot_ctr(%struct.dm_target* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dm_target*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca %struct.dm_snapshot*, align 8
  %9 = alloca %struct.dm_arg_set, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.dm_target* %0, %struct.dm_target** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %11, align 4
  store i32 1, i32* %17, align 4
  %21 = load i32, i32* @FMODE_READ, align 4
  store i32 %21, i32* %18, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ult i32 %22, 4
  br i1 %23, label %24, label %29

24:                                               ; preds = %3
  %25 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %26 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %25, i32 0, i32 0
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8** %26, align 8
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %11, align 4
  br label %378

29:                                               ; preds = %3
  %30 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %31 = call i64 @dm_target_is_snapshot_merge(%struct.dm_target* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  store i32 2, i32* %17, align 4
  %34 = load i32, i32* @FMODE_WRITE, align 4
  store i32 %34, i32* %18, align 4
  br label %35

35:                                               ; preds = %33, %29
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call %struct.dm_snapshot* @kzalloc(i32 184, i32 %36)
  store %struct.dm_snapshot* %37, %struct.dm_snapshot** %8, align 8
  %38 = load %struct.dm_snapshot*, %struct.dm_snapshot** %8, align 8
  %39 = icmp ne %struct.dm_snapshot* %38, null
  br i1 %39, label %45, label %40

40:                                               ; preds = %35
  %41 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %42 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %41, i32 0, i32 0
  store i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i8** %42, align 8
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %11, align 4
  br label %378

45:                                               ; preds = %35
  %46 = load i32, i32* %6, align 4
  %47 = getelementptr inbounds %struct.dm_arg_set, %struct.dm_arg_set* %9, i32 0, i32 0
  store i32 %46, i32* %47, align 8
  %48 = load i8**, i8*** %7, align 8
  %49 = getelementptr inbounds %struct.dm_arg_set, %struct.dm_arg_set* %9, i32 0, i32 1
  store i8** %48, i8*** %49, align 8
  %50 = call i32 @dm_consume_args(%struct.dm_arg_set* %9, i32 4)
  %51 = load %struct.dm_snapshot*, %struct.dm_snapshot** %8, align 8
  %52 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %53 = call i32 @parse_snapshot_features(%struct.dm_arg_set* %9, %struct.dm_snapshot* %51, %struct.dm_target* %52)
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %45
  br label %375

57:                                               ; preds = %45
  %58 = load i8**, i8*** %7, align 8
  %59 = getelementptr inbounds i8*, i8** %58, i64 0
  %60 = load i8*, i8** %59, align 8
  store i8* %60, i8** %12, align 8
  %61 = load i8**, i8*** %7, align 8
  %62 = getelementptr inbounds i8*, i8** %61, i32 1
  store i8** %62, i8*** %7, align 8
  %63 = load i32, i32* %6, align 4
  %64 = add i32 %63, -1
  store i32 %64, i32* %6, align 4
  %65 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %66 = load i8*, i8** %12, align 8
  %67 = load i32, i32* %18, align 4
  %68 = load %struct.dm_snapshot*, %struct.dm_snapshot** %8, align 8
  %69 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %68, i32 0, i32 1
  %70 = call i32 @dm_get_device(%struct.dm_target* %65, i8* %66, i32 %67, %struct.TYPE_11__** %69)
  store i32 %70, i32* %11, align 4
  %71 = load i32, i32* %11, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %57
  %74 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %75 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %74, i32 0, i32 0
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8** %75, align 8
  br label %374

76:                                               ; preds = %57
  %77 = load %struct.dm_snapshot*, %struct.dm_snapshot** %8, align 8
  %78 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %77, i32 0, i32 1
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  store i64 %83, i64* %14, align 8
  %84 = load i8**, i8*** %7, align 8
  %85 = getelementptr inbounds i8*, i8** %84, i64 0
  %86 = load i8*, i8** %85, align 8
  store i8* %86, i8** %13, align 8
  %87 = load i8**, i8*** %7, align 8
  %88 = getelementptr inbounds i8*, i8** %87, i32 1
  store i8** %88, i8*** %7, align 8
  %89 = load i32, i32* %6, align 4
  %90 = add i32 %89, -1
  store i32 %90, i32* %6, align 4
  %91 = load i8*, i8** %13, align 8
  %92 = call i64 @dm_get_dev_t(i8* %91)
  store i64 %92, i64* %15, align 8
  %93 = load i64, i64* %15, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %76
  %96 = load i64, i64* %15, align 8
  %97 = load i64, i64* %14, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %104

99:                                               ; preds = %95
  %100 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %101 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %100, i32 0, i32 0
  store i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i8** %101, align 8
  %102 = load i32, i32* @EINVAL, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %11, align 4
  br label %368

104:                                              ; preds = %95, %76
  %105 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %106 = load i8*, i8** %13, align 8
  %107 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %108 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %107, i32 0, i32 5
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @dm_table_get_mode(i32 %109)
  %111 = load %struct.dm_snapshot*, %struct.dm_snapshot** %8, align 8
  %112 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %111, i32 0, i32 2
  %113 = call i32 @dm_get_device(%struct.dm_target* %105, i8* %106, i32 %110, %struct.TYPE_11__** %112)
  store i32 %113, i32* %11, align 4
  %114 = load i32, i32* %11, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %104
  %117 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %118 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %117, i32 0, i32 0
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i8** %118, align 8
  br label %368

119:                                              ; preds = %104
  %120 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %121 = load i32, i32* %6, align 4
  %122 = load i8**, i8*** %7, align 8
  %123 = load %struct.dm_snapshot*, %struct.dm_snapshot** %8, align 8
  %124 = load %struct.dm_snapshot*, %struct.dm_snapshot** %8, align 8
  %125 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %124, i32 0, i32 3
  %126 = call i32 @dm_exception_store_create(%struct.dm_target* %120, i32 %121, i8** %122, %struct.dm_snapshot* %123, i32* %16, %struct.TYPE_10__** %125)
  store i32 %126, i32* %11, align 4
  %127 = load i32, i32* %11, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %119
  %130 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %131 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %130, i32 0, i32 0
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i8** %131, align 8
  %132 = load i32, i32* @EINVAL, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %11, align 4
  br label %362

134:                                              ; preds = %119
  %135 = load i32, i32* %16, align 4
  %136 = load i8**, i8*** %7, align 8
  %137 = zext i32 %135 to i64
  %138 = getelementptr inbounds i8*, i8** %136, i64 %137
  store i8** %138, i8*** %7, align 8
  %139 = load i32, i32* %16, align 4
  %140 = load i32, i32* %6, align 4
  %141 = sub i32 %140, %139
  store i32 %141, i32* %6, align 4
  %142 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %143 = load %struct.dm_snapshot*, %struct.dm_snapshot** %8, align 8
  %144 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %143, i32 0, i32 28
  store %struct.dm_target* %142, %struct.dm_target** %144, align 8
  %145 = load %struct.dm_snapshot*, %struct.dm_snapshot** %8, align 8
  %146 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %145, i32 0, i32 0
  store i32 1, i32* %146, align 8
  %147 = load %struct.dm_snapshot*, %struct.dm_snapshot** %8, align 8
  %148 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %147, i32 0, i32 27
  store i64 0, i64* %148, align 8
  %149 = load %struct.dm_snapshot*, %struct.dm_snapshot** %8, align 8
  %150 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %149, i32 0, i32 26
  store i64 0, i64* %150, align 8
  %151 = load %struct.dm_snapshot*, %struct.dm_snapshot** %8, align 8
  %152 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %151, i32 0, i32 25
  %153 = call i32 @atomic_set(i32* %152, i32 0)
  %154 = load %struct.dm_snapshot*, %struct.dm_snapshot** %8, align 8
  %155 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %154, i32 0, i32 24
  %156 = call i32 @spin_lock_init(i32* %155)
  %157 = load %struct.dm_snapshot*, %struct.dm_snapshot** %8, align 8
  %158 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %157, i32 0, i32 23
  store i64 0, i64* %158, align 8
  %159 = load %struct.dm_snapshot*, %struct.dm_snapshot** %8, align 8
  %160 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %159, i32 0, i32 22
  store i64 0, i64* %160, align 8
  %161 = load i32, i32* @RB_ROOT, align 4
  %162 = load %struct.dm_snapshot*, %struct.dm_snapshot** %8, align 8
  %163 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %162, i32 0, i32 21
  store i32 %161, i32* %163, align 4
  %164 = load %struct.dm_snapshot*, %struct.dm_snapshot** %8, align 8
  %165 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %164, i32 0, i32 20
  %166 = call i32 @init_rwsem(i32* %165)
  %167 = load %struct.dm_snapshot*, %struct.dm_snapshot** %8, align 8
  %168 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %167, i32 0, i32 19
  %169 = call i32 @INIT_LIST_HEAD(i32* %168)
  %170 = load %struct.dm_snapshot*, %struct.dm_snapshot** %8, align 8
  %171 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %170, i32 0, i32 18
  %172 = call i32 @spin_lock_init(i32* %171)
  %173 = load %struct.dm_snapshot*, %struct.dm_snapshot** %8, align 8
  %174 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %173, i32 0, i32 17
  store i64 0, i64* %174, align 8
  %175 = load %struct.dm_snapshot*, %struct.dm_snapshot** %8, align 8
  %176 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %175, i32 0, i32 16
  store i64 0, i64* %176, align 8
  %177 = load %struct.dm_snapshot*, %struct.dm_snapshot** %8, align 8
  %178 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %177, i32 0, i32 15
  store i64 0, i64* %178, align 8
  %179 = load %struct.dm_snapshot*, %struct.dm_snapshot** %8, align 8
  %180 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %179, i32 0, i32 14
  store i64 0, i64* %180, align 8
  %181 = load %struct.dm_snapshot*, %struct.dm_snapshot** %8, align 8
  %182 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %181, i32 0, i32 13
  %183 = call i32 @bio_list_init(i32* %182)
  %184 = load %struct.dm_snapshot*, %struct.dm_snapshot** %8, align 8
  %185 = call i64 @init_hash_tables(%struct.dm_snapshot* %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %192

187:                                              ; preds = %134
  %188 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %189 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %188, i32 0, i32 0
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i8** %189, align 8
  %190 = load i32, i32* @ENOMEM, align 4
  %191 = sub nsw i32 0, %190
  store i32 %191, i32* %11, align 4
  br label %357

192:                                              ; preds = %134
  %193 = load %struct.dm_snapshot*, %struct.dm_snapshot** %8, align 8
  %194 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %193, i32 0, i32 12
  %195 = call i32 @init_waitqueue_head(i32* %194)
  %196 = call i32 @dm_kcopyd_client_create(i32* @dm_kcopyd_throttle)
  %197 = load %struct.dm_snapshot*, %struct.dm_snapshot** %8, align 8
  %198 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %197, i32 0, i32 6
  store i32 %196, i32* %198, align 8
  %199 = load %struct.dm_snapshot*, %struct.dm_snapshot** %8, align 8
  %200 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %199, i32 0, i32 6
  %201 = load i32, i32* %200, align 8
  %202 = call i64 @IS_ERR(i32 %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %211

204:                                              ; preds = %192
  %205 = load %struct.dm_snapshot*, %struct.dm_snapshot** %8, align 8
  %206 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %205, i32 0, i32 6
  %207 = load i32, i32* %206, align 8
  %208 = call i32 @PTR_ERR(i32 %207)
  store i32 %208, i32* %11, align 4
  %209 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %210 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %209, i32 0, i32 0
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i8** %210, align 8
  br label %348

211:                                              ; preds = %192
  %212 = load %struct.dm_snapshot*, %struct.dm_snapshot** %8, align 8
  %213 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %212, i32 0, i32 7
  %214 = load i32, i32* @MIN_IOS, align 4
  %215 = load i32, i32* @pending_cache, align 4
  %216 = call i32 @mempool_init_slab_pool(i32* %213, i32 %214, i32 %215)
  store i32 %216, i32* %11, align 4
  %217 = load i32, i32* %11, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %222

219:                                              ; preds = %211
  %220 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %221 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %220, i32 0, i32 0
  store i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.8, i64 0, i64 0), i8** %221, align 8
  br label %343

222:                                              ; preds = %211
  store i32 0, i32* %10, align 4
  br label %223

223:                                              ; preds = %235, %222
  %224 = load i32, i32* %10, align 4
  %225 = load i32, i32* @DM_TRACKED_CHUNK_HASH_SIZE, align 4
  %226 = icmp slt i32 %224, %225
  br i1 %226, label %227, label %238

227:                                              ; preds = %223
  %228 = load %struct.dm_snapshot*, %struct.dm_snapshot** %8, align 8
  %229 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %228, i32 0, i32 11
  %230 = load i32*, i32** %229, align 8
  %231 = load i32, i32* %10, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i32, i32* %230, i64 %232
  %234 = call i32 @INIT_HLIST_HEAD(i32* %233)
  br label %235

235:                                              ; preds = %227
  %236 = load i32, i32* %10, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %10, align 4
  br label %223

238:                                              ; preds = %223
  %239 = load %struct.dm_snapshot*, %struct.dm_snapshot** %8, align 8
  %240 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %239, i32 0, i32 10
  %241 = call i32 @spin_lock_init(i32* %240)
  %242 = load %struct.dm_snapshot*, %struct.dm_snapshot** %8, align 8
  %243 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %244 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %243, i32 0, i32 4
  store %struct.dm_snapshot* %242, %struct.dm_snapshot** %244, align 8
  %245 = load i32, i32* %17, align 4
  %246 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %247 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %246, i32 0, i32 1
  store i32 %245, i32* %247, align 8
  %248 = load %struct.dm_snapshot*, %struct.dm_snapshot** %8, align 8
  %249 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %248, i32 0, i32 9
  %250 = load i64, i64* %249, align 8
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %261

252:                                              ; preds = %238
  %253 = load %struct.dm_snapshot*, %struct.dm_snapshot** %8, align 8
  %254 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %253, i32 0, i32 8
  %255 = load i64, i64* %254, align 8
  %256 = icmp ne i64 %255, 0
  %257 = zext i1 %256 to i64
  %258 = select i1 %256, i32 2, i32 1
  %259 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %260 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %259, i32 0, i32 2
  store i32 %258, i32* %260, align 4
  br label %261

261:                                              ; preds = %252, %238
  %262 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %263 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %262, i32 0, i32 3
  store i32 4, i32* %263, align 8
  %264 = load %struct.dm_snapshot*, %struct.dm_snapshot** %8, align 8
  %265 = call i32 @register_snapshot(%struct.dm_snapshot* %264)
  store i32 %265, i32* %11, align 4
  %266 = load i32, i32* %11, align 4
  %267 = load i32, i32* @ENOMEM, align 4
  %268 = sub nsw i32 0, %267
  %269 = icmp eq i32 %266, %268
  br i1 %269, label %270, label %273

270:                                              ; preds = %261
  %271 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %272 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %271, i32 0, i32 0
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0), i8** %272, align 8
  br label %339

273:                                              ; preds = %261
  %274 = load i32, i32* %11, align 4
  %275 = icmp slt i32 %274, 0
  br i1 %275, label %276, label %277

276:                                              ; preds = %273
  br label %339

277:                                              ; preds = %273
  br label %278

278:                                              ; preds = %277
  %279 = load i32, i32* %11, align 4
  %280 = icmp sgt i32 %279, 0
  br i1 %280, label %281, label %286

281:                                              ; preds = %278
  %282 = load %struct.dm_snapshot*, %struct.dm_snapshot** %8, align 8
  %283 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %282, i32 0, i32 3
  %284 = load %struct.TYPE_10__*, %struct.TYPE_10__** %283, align 8
  %285 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %284, i32 0, i32 0
  store i64 0, i64* %285, align 8
  store i32 0, i32* %4, align 4
  br label %380

286:                                              ; preds = %278
  %287 = load %struct.dm_snapshot*, %struct.dm_snapshot** %8, align 8
  %288 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %287, i32 0, i32 3
  %289 = load %struct.TYPE_10__*, %struct.TYPE_10__** %288, align 8
  %290 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %289, i32 0, i32 1
  %291 = load %struct.TYPE_8__*, %struct.TYPE_8__** %290, align 8
  %292 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %291, i32 0, i32 0
  %293 = load i32 (%struct.TYPE_10__*, i32, i8*)*, i32 (%struct.TYPE_10__*, i32, i8*)** %292, align 8
  %294 = load %struct.dm_snapshot*, %struct.dm_snapshot** %8, align 8
  %295 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %294, i32 0, i32 3
  %296 = load %struct.TYPE_10__*, %struct.TYPE_10__** %295, align 8
  %297 = load i32, i32* @dm_add_exception, align 4
  %298 = load %struct.dm_snapshot*, %struct.dm_snapshot** %8, align 8
  %299 = bitcast %struct.dm_snapshot* %298 to i8*
  %300 = call i32 %293(%struct.TYPE_10__* %296, i32 %297, i8* %299)
  store i32 %300, i32* %11, align 4
  %301 = load i32, i32* %11, align 4
  %302 = icmp slt i32 %301, 0
  br i1 %302, label %303, label %306

303:                                              ; preds = %286
  %304 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %305 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %304, i32 0, i32 0
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0), i8** %305, align 8
  br label %336

306:                                              ; preds = %286
  %307 = load i32, i32* %11, align 4
  %308 = icmp sgt i32 %307, 0
  br i1 %308, label %309, label %313

309:                                              ; preds = %306
  %310 = load %struct.dm_snapshot*, %struct.dm_snapshot** %8, align 8
  %311 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %310, i32 0, i32 0
  store i32 0, i32* %311, align 8
  %312 = call i32 @DMWARN(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0))
  br label %313

313:                                              ; preds = %309, %306
  br label %314

314:                                              ; preds = %313
  %315 = load %struct.dm_snapshot*, %struct.dm_snapshot** %8, align 8
  %316 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %315, i32 0, i32 3
  %317 = load %struct.TYPE_10__*, %struct.TYPE_10__** %316, align 8
  %318 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %317, i32 0, i32 0
  %319 = load i64, i64* %318, align 8
  %320 = icmp ne i64 %319, 0
  br i1 %320, label %324, label %321

321:                                              ; preds = %314
  %322 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %323 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %322, i32 0, i32 0
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0), i8** %323, align 8
  br label %336

324:                                              ; preds = %314
  %325 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %326 = load %struct.dm_snapshot*, %struct.dm_snapshot** %8, align 8
  %327 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %326, i32 0, i32 3
  %328 = load %struct.TYPE_10__*, %struct.TYPE_10__** %327, align 8
  %329 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %328, i32 0, i32 0
  %330 = load i64, i64* %329, align 8
  %331 = call i32 @dm_set_target_max_io_len(%struct.dm_target* %325, i64 %330)
  store i32 %331, i32* %11, align 4
  %332 = load i32, i32* %11, align 4
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %334, label %335

334:                                              ; preds = %324
  br label %336

335:                                              ; preds = %324
  store i32 0, i32* %4, align 4
  br label %380

336:                                              ; preds = %334, %321, %303
  %337 = load %struct.dm_snapshot*, %struct.dm_snapshot** %8, align 8
  %338 = call i32 @unregister_snapshot(%struct.dm_snapshot* %337)
  br label %339

339:                                              ; preds = %336, %276, %270
  %340 = load %struct.dm_snapshot*, %struct.dm_snapshot** %8, align 8
  %341 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %340, i32 0, i32 7
  %342 = call i32 @mempool_exit(i32* %341)
  br label %343

343:                                              ; preds = %339, %219
  %344 = load %struct.dm_snapshot*, %struct.dm_snapshot** %8, align 8
  %345 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %344, i32 0, i32 6
  %346 = load i32, i32* %345, align 8
  %347 = call i32 @dm_kcopyd_client_destroy(i32 %346)
  br label %348

348:                                              ; preds = %343, %204
  %349 = load %struct.dm_snapshot*, %struct.dm_snapshot** %8, align 8
  %350 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %349, i32 0, i32 5
  %351 = load i32, i32* @pending_cache, align 4
  %352 = call i32 @dm_exception_table_exit(i32* %350, i32 %351)
  %353 = load %struct.dm_snapshot*, %struct.dm_snapshot** %8, align 8
  %354 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %353, i32 0, i32 4
  %355 = load i32, i32* @exception_cache, align 4
  %356 = call i32 @dm_exception_table_exit(i32* %354, i32 %355)
  br label %357

357:                                              ; preds = %348, %187
  %358 = load %struct.dm_snapshot*, %struct.dm_snapshot** %8, align 8
  %359 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %358, i32 0, i32 3
  %360 = load %struct.TYPE_10__*, %struct.TYPE_10__** %359, align 8
  %361 = call i32 @dm_exception_store_destroy(%struct.TYPE_10__* %360)
  br label %362

362:                                              ; preds = %357, %129
  %363 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %364 = load %struct.dm_snapshot*, %struct.dm_snapshot** %8, align 8
  %365 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %364, i32 0, i32 2
  %366 = load %struct.TYPE_11__*, %struct.TYPE_11__** %365, align 8
  %367 = call i32 @dm_put_device(%struct.dm_target* %363, %struct.TYPE_11__* %366)
  br label %368

368:                                              ; preds = %362, %116, %99
  %369 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %370 = load %struct.dm_snapshot*, %struct.dm_snapshot** %8, align 8
  %371 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %370, i32 0, i32 1
  %372 = load %struct.TYPE_11__*, %struct.TYPE_11__** %371, align 8
  %373 = call i32 @dm_put_device(%struct.dm_target* %369, %struct.TYPE_11__* %372)
  br label %374

374:                                              ; preds = %368, %73
  br label %375

375:                                              ; preds = %374, %56
  %376 = load %struct.dm_snapshot*, %struct.dm_snapshot** %8, align 8
  %377 = call i32 @kfree(%struct.dm_snapshot* %376)
  br label %378

378:                                              ; preds = %375, %40, %24
  %379 = load i32, i32* %11, align 4
  store i32 %379, i32* %4, align 4
  br label %380

380:                                              ; preds = %378, %335, %281
  %381 = load i32, i32* %4, align 4
  ret i32 %381
}

declare dso_local i64 @dm_target_is_snapshot_merge(%struct.dm_target*) #1

declare dso_local %struct.dm_snapshot* @kzalloc(i32, i32) #1

declare dso_local i32 @dm_consume_args(%struct.dm_arg_set*, i32) #1

declare dso_local i32 @parse_snapshot_features(%struct.dm_arg_set*, %struct.dm_snapshot*, %struct.dm_target*) #1

declare dso_local i32 @dm_get_device(%struct.dm_target*, i8*, i32, %struct.TYPE_11__**) #1

declare dso_local i64 @dm_get_dev_t(i8*) #1

declare dso_local i32 @dm_table_get_mode(i32) #1

declare dso_local i32 @dm_exception_store_create(%struct.dm_target*, i32, i8**, %struct.dm_snapshot*, i32*, %struct.TYPE_10__**) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_rwsem(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @bio_list_init(i32*) #1

declare dso_local i64 @init_hash_tables(%struct.dm_snapshot*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @dm_kcopyd_client_create(i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @mempool_init_slab_pool(i32*, i32, i32) #1

declare dso_local i32 @INIT_HLIST_HEAD(i32*) #1

declare dso_local i32 @register_snapshot(%struct.dm_snapshot*) #1

declare dso_local i32 @DMWARN(i8*) #1

declare dso_local i32 @dm_set_target_max_io_len(%struct.dm_target*, i64) #1

declare dso_local i32 @unregister_snapshot(%struct.dm_snapshot*) #1

declare dso_local i32 @mempool_exit(i32*) #1

declare dso_local i32 @dm_kcopyd_client_destroy(i32) #1

declare dso_local i32 @dm_exception_table_exit(i32*, i32) #1

declare dso_local i32 @dm_exception_store_destroy(%struct.TYPE_10__*) #1

declare dso_local i32 @dm_put_device(%struct.dm_target*, %struct.TYPE_11__*) #1

declare dso_local i32 @kfree(%struct.dm_snapshot*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
