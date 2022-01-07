; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-thin.c_pool_ctr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-thin.c_pool_ctr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.dm_target = type { i8*, i32, i32, i32, i32, %struct.pool_c* }
%struct.pool_c = type { %struct.TYPE_6__, %struct.pool*, %struct.pool_features, %struct.pool_features, i64, %struct.dm_dev*, %struct.dm_dev*, %struct.dm_target* }
%struct.TYPE_6__ = type { i32 }
%struct.pool = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.pool_features = type { i64, i64, i64 }
%struct.dm_dev = type { i32 }
%struct.dm_arg_set = type { i32, i8** }

@dm_thin_pool_table = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@.str = private unnamed_addr constant [23 x i8] c"Invalid argument count\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Error setting metadata or data device\00", align 1
@FMODE_READ = common dso_local global i32 0, align 4
@PM_READ_ONLY = common dso_local global i64 0, align 8
@FMODE_WRITE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Error opening metadata block device\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Error getting data device\00", align 1
@DATA_DEV_BLOCK_SIZE_MIN_SECTORS = common dso_local global i64 0, align 8
@DATA_DEV_BLOCK_SIZE_MAX_SECTORS = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [19 x i8] c"Invalid block size\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"Invalid low water mark\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [48 x i8] c"Discard support cannot be disabled once enabled\00", align 1
@metadata_low_callback = common dso_local global i32 0, align 4
@pool_is_congested = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_target*, i32, i8**)* @pool_ctr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pool_ctr(%struct.dm_target* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dm_target*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.pool_c*, align 8
  %11 = alloca %struct.pool*, align 8
  %12 = alloca %struct.pool_features, align 8
  %13 = alloca %struct.dm_arg_set, align 8
  %14 = alloca %struct.dm_dev*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.dm_dev*, align 8
  %18 = alloca i32, align 4
  store %struct.dm_target* %0, %struct.dm_target** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  store i32 0, i32* %9, align 4
  %19 = call i32 @mutex_lock(i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @dm_thin_pool_table, i32 0, i32 0))
  %20 = load i32, i32* %6, align 4
  %21 = icmp ult i32 %20, 4
  br i1 %21, label %22, label %27

22:                                               ; preds = %3
  %23 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %24 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %23, i32 0, i32 0
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8** %24, align 8
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %8, align 4
  br label %261

27:                                               ; preds = %3
  %28 = load i32, i32* %6, align 4
  %29 = getelementptr inbounds %struct.dm_arg_set, %struct.dm_arg_set* %13, i32 0, i32 0
  store i32 %28, i32* %29, align 8
  %30 = load i8**, i8*** %7, align 8
  %31 = getelementptr inbounds %struct.dm_arg_set, %struct.dm_arg_set* %13, i32 0, i32 1
  store i8** %30, i8*** %31, align 8
  %32 = load i8**, i8*** %7, align 8
  %33 = getelementptr inbounds i8*, i8** %32, i64 0
  %34 = load i8*, i8** %33, align 8
  %35 = load i8**, i8*** %7, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 1
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @strcmp(i8* %34, i8* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %27
  %41 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %42 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %41, i32 0, i32 0
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i8** %42, align 8
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %8, align 4
  br label %261

45:                                               ; preds = %27
  %46 = call i32 @pool_features_init(%struct.pool_features* %12)
  %47 = call i32 @dm_consume_args(%struct.dm_arg_set* %13, i32 4)
  %48 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %49 = call i32 @parse_pool_features(%struct.dm_arg_set* %13, %struct.pool_features* %12, %struct.dm_target* %48)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  br label %261

53:                                               ; preds = %45
  %54 = load i32, i32* @FMODE_READ, align 4
  %55 = getelementptr inbounds %struct.pool_features, %struct.pool_features* %12, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @PM_READ_ONLY, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  br label %62

60:                                               ; preds = %53
  %61 = load i32, i32* @FMODE_WRITE, align 4
  br label %62

62:                                               ; preds = %60, %59
  %63 = phi i32 [ 0, %59 ], [ %61, %60 ]
  %64 = or i32 %54, %63
  store i32 %64, i32* %18, align 4
  %65 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %66 = load i8**, i8*** %7, align 8
  %67 = getelementptr inbounds i8*, i8** %66, i64 0
  %68 = load i8*, i8** %67, align 8
  %69 = load i32, i32* %18, align 4
  %70 = call i32 @dm_get_device(%struct.dm_target* %65, i8* %68, i32 %69, %struct.dm_dev** %17)
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %8, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %62
  %74 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %75 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %74, i32 0, i32 0
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i8** %75, align 8
  br label %261

76:                                               ; preds = %62
  %77 = load %struct.dm_dev*, %struct.dm_dev** %17, align 8
  %78 = getelementptr inbounds %struct.dm_dev, %struct.dm_dev* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @warn_if_metadata_device_too_big(i32 %79)
  %81 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %82 = load i8**, i8*** %7, align 8
  %83 = getelementptr inbounds i8*, i8** %82, i64 1
  %84 = load i8*, i8** %83, align 8
  %85 = load i32, i32* @FMODE_READ, align 4
  %86 = load i32, i32* @FMODE_WRITE, align 4
  %87 = or i32 %85, %86
  %88 = call i32 @dm_get_device(%struct.dm_target* %81, i8* %84, i32 %87, %struct.dm_dev** %14)
  store i32 %88, i32* %8, align 4
  %89 = load i32, i32* %8, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %76
  %92 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %93 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %92, i32 0, i32 0
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8** %93, align 8
  br label %257

94:                                               ; preds = %76
  %95 = load i8**, i8*** %7, align 8
  %96 = getelementptr inbounds i8*, i8** %95, i64 2
  %97 = load i8*, i8** %96, align 8
  %98 = call i64 @kstrtoul(i8* %97, i32 10, i64* %15)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %117, label %100

100:                                              ; preds = %94
  %101 = load i64, i64* %15, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %117

103:                                              ; preds = %100
  %104 = load i64, i64* %15, align 8
  %105 = load i64, i64* @DATA_DEV_BLOCK_SIZE_MIN_SECTORS, align 8
  %106 = icmp ult i64 %104, %105
  br i1 %106, label %117, label %107

107:                                              ; preds = %103
  %108 = load i64, i64* %15, align 8
  %109 = load i64, i64* @DATA_DEV_BLOCK_SIZE_MAX_SECTORS, align 8
  %110 = icmp ugt i64 %108, %109
  br i1 %110, label %117, label %111

111:                                              ; preds = %107
  %112 = load i64, i64* %15, align 8
  %113 = load i64, i64* @DATA_DEV_BLOCK_SIZE_MIN_SECTORS, align 8
  %114 = sub i64 %113, 1
  %115 = and i64 %112, %114
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %111, %107, %103, %100, %94
  %118 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %119 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %118, i32 0, i32 0
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8** %119, align 8
  %120 = load i32, i32* @EINVAL, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %8, align 4
  br label %253

122:                                              ; preds = %111
  %123 = load i8**, i8*** %7, align 8
  %124 = getelementptr inbounds i8*, i8** %123, i64 3
  %125 = load i8*, i8** %124, align 8
  %126 = call i64 @kstrtoull(i8* %125, i32 10, i64* %16)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %122
  %129 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %130 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %129, i32 0, i32 0
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i8** %130, align 8
  %131 = load i32, i32* @EINVAL, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %8, align 4
  br label %253

133:                                              ; preds = %122
  %134 = load i32, i32* @GFP_KERNEL, align 4
  %135 = call %struct.pool_c* @kzalloc(i32 96, i32 %134)
  store %struct.pool_c* %135, %struct.pool_c** %10, align 8
  %136 = load %struct.pool_c*, %struct.pool_c** %10, align 8
  %137 = icmp ne %struct.pool_c* %136, null
  br i1 %137, label %141, label %138

138:                                              ; preds = %133
  %139 = load i32, i32* @ENOMEM, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %8, align 4
  br label %253

141:                                              ; preds = %133
  %142 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %143 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %142, i32 0, i32 4
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @dm_table_get_md(i32 %144)
  %146 = load %struct.dm_dev*, %struct.dm_dev** %17, align 8
  %147 = getelementptr inbounds %struct.dm_dev, %struct.dm_dev* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load i64, i64* %15, align 8
  %150 = getelementptr inbounds %struct.pool_features, %struct.pool_features* %12, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @PM_READ_ONLY, align 8
  %153 = icmp eq i64 %151, %152
  %154 = zext i1 %153 to i32
  %155 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %156 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %155, i32 0, i32 0
  %157 = call %struct.pool* @__pool_find(i32 %145, i32 %148, i64 %149, i32 %154, i8** %156, i32* %9)
  store %struct.pool* %157, %struct.pool** %11, align 8
  %158 = load %struct.pool*, %struct.pool** %11, align 8
  %159 = call i64 @IS_ERR(%struct.pool* %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %141
  %162 = load %struct.pool*, %struct.pool** %11, align 8
  %163 = call i32 @PTR_ERR(%struct.pool* %162)
  store i32 %163, i32* %8, align 4
  br label %250

164:                                              ; preds = %141
  %165 = load i32, i32* %9, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %180, label %167

167:                                              ; preds = %164
  %168 = getelementptr inbounds %struct.pool_features, %struct.pool_features* %12, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = load %struct.pool*, %struct.pool** %11, align 8
  %171 = getelementptr inbounds %struct.pool, %struct.pool* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = icmp ne i64 %169, %173
  br i1 %174, label %175, label %180

175:                                              ; preds = %167
  %176 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %177 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %176, i32 0, i32 0
  store i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0), i8** %177, align 8
  %178 = load i32, i32* @EINVAL, align 4
  %179 = sub nsw i32 0, %178
  store i32 %179, i32* %8, align 4
  br label %247

180:                                              ; preds = %167, %164
  %181 = load %struct.pool*, %struct.pool** %11, align 8
  %182 = load %struct.pool_c*, %struct.pool_c** %10, align 8
  %183 = getelementptr inbounds %struct.pool_c, %struct.pool_c* %182, i32 0, i32 1
  store %struct.pool* %181, %struct.pool** %183, align 8
  %184 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %185 = load %struct.pool_c*, %struct.pool_c** %10, align 8
  %186 = getelementptr inbounds %struct.pool_c, %struct.pool_c* %185, i32 0, i32 7
  store %struct.dm_target* %184, %struct.dm_target** %186, align 8
  %187 = load %struct.dm_dev*, %struct.dm_dev** %17, align 8
  %188 = load %struct.pool_c*, %struct.pool_c** %10, align 8
  %189 = getelementptr inbounds %struct.pool_c, %struct.pool_c* %188, i32 0, i32 6
  store %struct.dm_dev* %187, %struct.dm_dev** %189, align 8
  %190 = load %struct.dm_dev*, %struct.dm_dev** %14, align 8
  %191 = load %struct.pool_c*, %struct.pool_c** %10, align 8
  %192 = getelementptr inbounds %struct.pool_c, %struct.pool_c* %191, i32 0, i32 5
  store %struct.dm_dev* %190, %struct.dm_dev** %192, align 8
  %193 = load i64, i64* %16, align 8
  %194 = load %struct.pool_c*, %struct.pool_c** %10, align 8
  %195 = getelementptr inbounds %struct.pool_c, %struct.pool_c* %194, i32 0, i32 4
  store i64 %193, i64* %195, align 8
  %196 = load %struct.pool_c*, %struct.pool_c** %10, align 8
  %197 = getelementptr inbounds %struct.pool_c, %struct.pool_c* %196, i32 0, i32 3
  %198 = load %struct.pool_c*, %struct.pool_c** %10, align 8
  %199 = getelementptr inbounds %struct.pool_c, %struct.pool_c* %198, i32 0, i32 2
  %200 = bitcast %struct.pool_features* %199 to i8*
  %201 = bitcast %struct.pool_features* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %200, i8* align 8 %201, i64 24, i1 false)
  %202 = bitcast %struct.pool_features* %197 to i8*
  %203 = bitcast %struct.pool_features* %199 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %202, i8* align 8 %203, i64 24, i1 false)
  %204 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %205 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %204, i32 0, i32 1
  store i32 1, i32* %205, align 8
  %206 = getelementptr inbounds %struct.pool_features, %struct.pool_features* %12, i32 0, i32 1
  %207 = load i64, i64* %206, align 8
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %218

209:                                              ; preds = %180
  %210 = getelementptr inbounds %struct.pool_features, %struct.pool_features* %12, i32 0, i32 2
  %211 = load i64, i64* %210, align 8
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %218

213:                                              ; preds = %209
  %214 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %215 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %214, i32 0, i32 2
  store i32 1, i32* %215, align 4
  %216 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %217 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %216, i32 0, i32 3
  store i32 1, i32* %217, align 8
  br label %218

218:                                              ; preds = %213, %209, %180
  %219 = load %struct.pool_c*, %struct.pool_c** %10, align 8
  %220 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %221 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %220, i32 0, i32 5
  store %struct.pool_c* %219, %struct.pool_c** %221, align 8
  %222 = load %struct.pool_c*, %struct.pool_c** %10, align 8
  %223 = getelementptr inbounds %struct.pool_c, %struct.pool_c* %222, i32 0, i32 1
  %224 = load %struct.pool*, %struct.pool** %223, align 8
  %225 = getelementptr inbounds %struct.pool, %struct.pool* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = load %struct.pool_c*, %struct.pool_c** %10, align 8
  %228 = call i32 @calc_metadata_threshold(%struct.pool_c* %227)
  %229 = load i32, i32* @metadata_low_callback, align 4
  %230 = load %struct.pool*, %struct.pool** %11, align 8
  %231 = call i32 @dm_pool_register_metadata_threshold(i32 %226, i32 %228, i32 %229, %struct.pool* %230)
  store i32 %231, i32* %8, align 4
  %232 = load i32, i32* %8, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %235

234:                                              ; preds = %218
  br label %247

235:                                              ; preds = %218
  %236 = load i32, i32* @pool_is_congested, align 4
  %237 = load %struct.pool_c*, %struct.pool_c** %10, align 8
  %238 = getelementptr inbounds %struct.pool_c, %struct.pool_c* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %238, i32 0, i32 0
  store i32 %236, i32* %239, align 8
  %240 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %241 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %240, i32 0, i32 4
  %242 = load i32, i32* %241, align 4
  %243 = load %struct.pool_c*, %struct.pool_c** %10, align 8
  %244 = getelementptr inbounds %struct.pool_c, %struct.pool_c* %243, i32 0, i32 0
  %245 = call i32 @dm_table_add_target_callbacks(i32 %242, %struct.TYPE_6__* %244)
  %246 = call i32 @mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @dm_thin_pool_table, i32 0, i32 0))
  store i32 0, i32* %4, align 4
  br label %264

247:                                              ; preds = %234, %175
  %248 = load %struct.pool*, %struct.pool** %11, align 8
  %249 = call i32 @__pool_dec(%struct.pool* %248)
  br label %250

250:                                              ; preds = %247, %161
  %251 = load %struct.pool_c*, %struct.pool_c** %10, align 8
  %252 = call i32 @kfree(%struct.pool_c* %251)
  br label %253

253:                                              ; preds = %250, %138, %128, %117
  %254 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %255 = load %struct.dm_dev*, %struct.dm_dev** %14, align 8
  %256 = call i32 @dm_put_device(%struct.dm_target* %254, %struct.dm_dev* %255)
  br label %257

257:                                              ; preds = %253, %91
  %258 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %259 = load %struct.dm_dev*, %struct.dm_dev** %17, align 8
  %260 = call i32 @dm_put_device(%struct.dm_target* %258, %struct.dm_dev* %259)
  br label %261

261:                                              ; preds = %257, %73, %52, %40, %22
  %262 = call i32 @mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @dm_thin_pool_table, i32 0, i32 0))
  %263 = load i32, i32* %8, align 4
  store i32 %263, i32* %4, align 4
  br label %264

264:                                              ; preds = %261, %235
  %265 = load i32, i32* %4, align 4
  ret i32 %265
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @pool_features_init(%struct.pool_features*) #1

declare dso_local i32 @dm_consume_args(%struct.dm_arg_set*, i32) #1

declare dso_local i32 @parse_pool_features(%struct.dm_arg_set*, %struct.pool_features*, %struct.dm_target*) #1

declare dso_local i32 @dm_get_device(%struct.dm_target*, i8*, i32, %struct.dm_dev**) #1

declare dso_local i32 @warn_if_metadata_device_too_big(i32) #1

declare dso_local i64 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i64 @kstrtoull(i8*, i32, i64*) #1

declare dso_local %struct.pool_c* @kzalloc(i32, i32) #1

declare dso_local %struct.pool* @__pool_find(i32, i32, i64, i32, i8**, i32*) #1

declare dso_local i32 @dm_table_get_md(i32) #1

declare dso_local i64 @IS_ERR(%struct.pool*) #1

declare dso_local i32 @PTR_ERR(%struct.pool*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @dm_pool_register_metadata_threshold(i32, i32, i32, %struct.pool*) #1

declare dso_local i32 @calc_metadata_threshold(%struct.pool_c*) #1

declare dso_local i32 @dm_table_add_target_callbacks(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @__pool_dec(%struct.pool*) #1

declare dso_local i32 @kfree(%struct.pool_c*) #1

declare dso_local i32 @dm_put_device(%struct.dm_target*, %struct.dm_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
