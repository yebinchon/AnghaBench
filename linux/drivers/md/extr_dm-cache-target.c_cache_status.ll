; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-target.c_cache_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-target.c_cache_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { %struct.cache* }
%struct.cache = type { i32, i32*, %struct.TYPE_14__*, %struct.TYPE_12__*, %struct.TYPE_10__*, i32, i32, i64, i32, %struct.TYPE_8__, i32, i64 }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32 }

@BDEVNAME_SIZE = common dso_local global i32 0, align 4
@CM_FAIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"Fail\00", align 1
@DM_STATUS_NOFLUSH_FLAG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"%s: dm_cache_get_free_metadata_block_count returned %d\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"%s: dm_cache_get_metadata_dev_size returned %d\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"%u %llu/%llu %llu %llu/%llu %u %u %u %u %u %u %lu \00", align 1
@DM_CACHE_METADATA_BLOCK_SIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"2 migration_threshold %llu \00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"%s: policy_emit_config_values returned %d\00", align 1
@CM_READ_ONLY = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [4 x i8] c"ro \00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"rw \00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"needs_check \00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"- \00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"Error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_target*, i32, i32, i8*, i32)* @cache_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cache_status(%struct.dm_target* %0, i32 %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.dm_target*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.cache*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.dm_target* %0, %struct.dm_target** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %13, align 4
  store i64 0, i64* %14, align 8
  store i64 0, i64* %15, align 8
  %22 = load i32, i32* @BDEVNAME_SIZE, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %16, align 8
  %25 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %17, align 8
  %26 = load %struct.dm_target*, %struct.dm_target** %6, align 8
  %27 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %26, i32 0, i32 0
  %28 = load %struct.cache*, %struct.cache** %27, align 8
  store %struct.cache* %28, %struct.cache** %18, align 8
  %29 = load i32, i32* %7, align 4
  switch i32 %29, label %246 [
    i32 129, label %30
    i32 128, label %181
  ]

30:                                               ; preds = %5
  %31 = load %struct.cache*, %struct.cache** %18, align 8
  %32 = call i32 @get_cache_mode(%struct.cache* %31)
  %33 = load i32, i32* @CM_FAIL, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %246

37:                                               ; preds = %30
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @DM_STATUS_NOFLUSH_FLAG, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %49, label %42

42:                                               ; preds = %37
  %43 = load %struct.dm_target*, %struct.dm_target** %6, align 8
  %44 = call i32 @dm_suspended(%struct.dm_target* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %42
  %47 = load %struct.cache*, %struct.cache** %18, align 8
  %48 = call i32 @commit(%struct.cache* %47, i32 0)
  br label %49

49:                                               ; preds = %46, %42, %37
  %50 = load %struct.cache*, %struct.cache** %18, align 8
  %51 = getelementptr inbounds %struct.cache, %struct.cache* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @dm_cache_get_free_metadata_block_count(i32 %52, i64* %14)
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %49
  %57 = load %struct.cache*, %struct.cache** %18, align 8
  %58 = call i32 @cache_device_name(%struct.cache* %57)
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @DMERR(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %58, i32 %59)
  br label %247

61:                                               ; preds = %49
  %62 = load %struct.cache*, %struct.cache** %18, align 8
  %63 = getelementptr inbounds %struct.cache, %struct.cache* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @dm_cache_get_metadata_dev_size(i32 %64, i64* %15)
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %11, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %61
  %69 = load %struct.cache*, %struct.cache** %18, align 8
  %70 = call i32 @cache_device_name(%struct.cache* %69)
  %71 = load i32, i32* %11, align 4
  %72 = call i32 @DMERR(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %70, i32 %71)
  br label %247

73:                                               ; preds = %61
  %74 = load %struct.cache*, %struct.cache** %18, align 8
  %75 = getelementptr inbounds %struct.cache, %struct.cache* %74, i32 0, i32 6
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @policy_residency(i32 %76)
  store i32 %77, i32* %19, align 4
  %78 = load i32, i32* @DM_CACHE_METADATA_BLOCK_SIZE, align 4
  %79 = load i64, i64* %15, align 8
  %80 = load i64, i64* %14, align 8
  %81 = sub nsw i64 %79, %80
  %82 = load i64, i64* %15, align 8
  %83 = load %struct.cache*, %struct.cache** %18, align 8
  %84 = getelementptr inbounds %struct.cache, %struct.cache* %83, i32 0, i32 11
  %85 = load i64, i64* %84, align 8
  %86 = load i32, i32* %19, align 4
  %87 = call i64 @from_cblock(i32 %86)
  %88 = load %struct.cache*, %struct.cache** %18, align 8
  %89 = getelementptr inbounds %struct.cache, %struct.cache* %88, i32 0, i32 10
  %90 = load i32, i32* %89, align 4
  %91 = call i64 @from_cblock(i32 %90)
  %92 = load %struct.cache*, %struct.cache** %18, align 8
  %93 = getelementptr inbounds %struct.cache, %struct.cache* %92, i32 0, i32 9
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 5
  %95 = call i64 @atomic_read(i32* %94)
  %96 = trunc i64 %95 to i32
  %97 = load %struct.cache*, %struct.cache** %18, align 8
  %98 = getelementptr inbounds %struct.cache, %struct.cache* %97, i32 0, i32 9
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 4
  %100 = call i64 @atomic_read(i32* %99)
  %101 = trunc i64 %100 to i32
  %102 = load %struct.cache*, %struct.cache** %18, align 8
  %103 = getelementptr inbounds %struct.cache, %struct.cache* %102, i32 0, i32 9
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 3
  %105 = call i64 @atomic_read(i32* %104)
  %106 = trunc i64 %105 to i32
  %107 = load %struct.cache*, %struct.cache** %18, align 8
  %108 = getelementptr inbounds %struct.cache, %struct.cache* %107, i32 0, i32 9
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 2
  %110 = call i64 @atomic_read(i32* %109)
  %111 = trunc i64 %110 to i32
  %112 = load %struct.cache*, %struct.cache** %18, align 8
  %113 = getelementptr inbounds %struct.cache, %struct.cache* %112, i32 0, i32 9
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 1
  %115 = call i64 @atomic_read(i32* %114)
  %116 = trunc i64 %115 to i32
  %117 = load %struct.cache*, %struct.cache** %18, align 8
  %118 = getelementptr inbounds %struct.cache, %struct.cache* %117, i32 0, i32 9
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 0
  %120 = call i64 @atomic_read(i32* %119)
  %121 = trunc i64 %120 to i32
  %122 = load %struct.cache*, %struct.cache** %18, align 8
  %123 = getelementptr inbounds %struct.cache, %struct.cache* %122, i32 0, i32 8
  %124 = call i64 @atomic_read(i32* %123)
  %125 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i32 %78, i64 %81, i64 %82, i64 %85, i64 %87, i64 %91, i32 %96, i32 %101, i32 %106, i32 %111, i32 %116, i32 %121, i64 %124)
  %126 = load %struct.cache*, %struct.cache** %18, align 8
  %127 = load i8*, i8** %9, align 8
  %128 = load i32, i32* %10, align 4
  %129 = call i32 @emit_flags(%struct.cache* %126, i8* %127, i32 %128, i32* %13)
  %130 = load %struct.cache*, %struct.cache** %18, align 8
  %131 = getelementptr inbounds %struct.cache, %struct.cache* %130, i32 0, i32 7
  %132 = load i64, i64* %131, align 8
  %133 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i64 %132)
  %134 = load %struct.cache*, %struct.cache** %18, align 8
  %135 = getelementptr inbounds %struct.cache, %struct.cache* %134, i32 0, i32 6
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @dm_cache_policy_get_name(i32 %136)
  %138 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %137)
  %139 = load i32, i32* %13, align 4
  %140 = load i32, i32* %10, align 4
  %141 = icmp ult i32 %139, %140
  br i1 %141, label %142, label %157

142:                                              ; preds = %73
  %143 = load %struct.cache*, %struct.cache** %18, align 8
  %144 = getelementptr inbounds %struct.cache, %struct.cache* %143, i32 0, i32 6
  %145 = load i32, i32* %144, align 4
  %146 = load i8*, i8** %9, align 8
  %147 = load i32, i32* %10, align 4
  %148 = call i32 @policy_emit_config_values(i32 %145, i8* %146, i32 %147, i32* %13)
  store i32 %148, i32* %11, align 4
  %149 = load i32, i32* %11, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %156

151:                                              ; preds = %142
  %152 = load %struct.cache*, %struct.cache** %18, align 8
  %153 = call i32 @cache_device_name(%struct.cache* %152)
  %154 = load i32, i32* %11, align 4
  %155 = call i32 @DMERR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0), i32 %153, i32 %154)
  br label %156

156:                                              ; preds = %151, %142
  br label %157

157:                                              ; preds = %156, %73
  %158 = load %struct.cache*, %struct.cache** %18, align 8
  %159 = call i32 @get_cache_mode(%struct.cache* %158)
  %160 = load i32, i32* @CM_READ_ONLY, align 4
  %161 = icmp eq i32 %159, %160
  br i1 %161, label %162, label %164

162:                                              ; preds = %157
  %163 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  br label %166

164:                                              ; preds = %157
  %165 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  br label %166

166:                                              ; preds = %164, %162
  %167 = load %struct.cache*, %struct.cache** %18, align 8
  %168 = getelementptr inbounds %struct.cache, %struct.cache* %167, i32 0, i32 5
  %169 = load i32, i32* %168, align 8
  %170 = call i32 @dm_cache_metadata_needs_check(i32 %169, i32* %20)
  store i32 %170, i32* %11, align 4
  %171 = load i32, i32* %11, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %176, label %173

173:                                              ; preds = %166
  %174 = load i32, i32* %20, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %178

176:                                              ; preds = %173, %166
  %177 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  br label %180

178:                                              ; preds = %173
  %179 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  br label %180

180:                                              ; preds = %178, %176
  br label %246

181:                                              ; preds = %5
  %182 = load %struct.cache*, %struct.cache** %18, align 8
  %183 = getelementptr inbounds %struct.cache, %struct.cache* %182, i32 0, i32 4
  %184 = load %struct.TYPE_10__*, %struct.TYPE_10__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %184, i32 0, i32 0
  %186 = load %struct.TYPE_9__*, %struct.TYPE_9__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @format_dev_t(i8* %25, i32 %188)
  %190 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %25)
  %191 = load %struct.cache*, %struct.cache** %18, align 8
  %192 = getelementptr inbounds %struct.cache, %struct.cache* %191, i32 0, i32 3
  %193 = load %struct.TYPE_12__*, %struct.TYPE_12__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %193, i32 0, i32 0
  %195 = load %struct.TYPE_11__*, %struct.TYPE_11__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @format_dev_t(i8* %25, i32 %197)
  %199 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %25)
  %200 = load %struct.cache*, %struct.cache** %18, align 8
  %201 = getelementptr inbounds %struct.cache, %struct.cache* %200, i32 0, i32 2
  %202 = load %struct.TYPE_14__*, %struct.TYPE_14__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %202, i32 0, i32 0
  %204 = load %struct.TYPE_13__*, %struct.TYPE_13__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = call i32 @format_dev_t(i8* %25, i32 %206)
  %208 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i8* %25)
  store i32 0, i32* %12, align 4
  br label %209

209:                                              ; preds = %225, %181
  %210 = load i32, i32* %12, align 4
  %211 = load %struct.cache*, %struct.cache** %18, align 8
  %212 = getelementptr inbounds %struct.cache, %struct.cache* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = sub nsw i32 %213, 1
  %215 = icmp ult i32 %210, %214
  br i1 %215, label %216, label %228

216:                                              ; preds = %209
  %217 = load %struct.cache*, %struct.cache** %18, align 8
  %218 = getelementptr inbounds %struct.cache, %struct.cache* %217, i32 0, i32 1
  %219 = load i32*, i32** %218, align 8
  %220 = load i32, i32* %12, align 4
  %221 = zext i32 %220 to i64
  %222 = getelementptr inbounds i32, i32* %219, i64 %221
  %223 = load i32, i32* %222, align 4
  %224 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i32 %223)
  br label %225

225:                                              ; preds = %216
  %226 = load i32, i32* %12, align 4
  %227 = add i32 %226, 1
  store i32 %227, i32* %12, align 4
  br label %209

228:                                              ; preds = %209
  %229 = load %struct.cache*, %struct.cache** %18, align 8
  %230 = getelementptr inbounds %struct.cache, %struct.cache* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %245

233:                                              ; preds = %228
  %234 = load %struct.cache*, %struct.cache** %18, align 8
  %235 = getelementptr inbounds %struct.cache, %struct.cache* %234, i32 0, i32 1
  %236 = load i32*, i32** %235, align 8
  %237 = load %struct.cache*, %struct.cache** %18, align 8
  %238 = getelementptr inbounds %struct.cache, %struct.cache* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = sub nsw i32 %239, 1
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i32, i32* %236, i64 %241
  %243 = load i32, i32* %242, align 4
  %244 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i32 %243)
  br label %245

245:                                              ; preds = %233, %228
  br label %246

246:                                              ; preds = %245, %5, %180, %35
  store i32 1, i32* %21, align 4
  br label %249

247:                                              ; preds = %68, %56
  %248 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0))
  store i32 0, i32* %21, align 4
  br label %249

249:                                              ; preds = %247, %246
  %250 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %250)
  %251 = load i32, i32* %21, align 4
  switch i32 %251, label %253 [
    i32 0, label %252
    i32 1, label %252
  ]

252:                                              ; preds = %249, %249
  ret void

253:                                              ; preds = %249
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @get_cache_mode(%struct.cache*) #2

declare dso_local i32 @DMEMIT(i8*, ...) #2

declare dso_local i32 @dm_suspended(%struct.dm_target*) #2

declare dso_local i32 @commit(%struct.cache*, i32) #2

declare dso_local i32 @dm_cache_get_free_metadata_block_count(i32, i64*) #2

declare dso_local i32 @DMERR(i8*, i32, i32) #2

declare dso_local i32 @cache_device_name(%struct.cache*) #2

declare dso_local i32 @dm_cache_get_metadata_dev_size(i32, i64*) #2

declare dso_local i32 @policy_residency(i32) #2

declare dso_local i64 @from_cblock(i32) #2

declare dso_local i64 @atomic_read(i32*) #2

declare dso_local i32 @emit_flags(%struct.cache*, i8*, i32, i32*) #2

declare dso_local i32 @dm_cache_policy_get_name(i32) #2

declare dso_local i32 @policy_emit_config_values(i32, i8*, i32, i32*) #2

declare dso_local i32 @dm_cache_metadata_needs_check(i32, i32*) #2

declare dso_local i32 @format_dev_t(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
