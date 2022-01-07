; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-log.c_create_log_context.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-log.c_create_log_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_dirty_log = type { %struct.log_c* }
%struct.log_c = type { i32, i32, i64, i32, i64, i32*, %struct.TYPE_11__, i32*, i32*, i32, %struct.TYPE_7__, %struct.dm_dev*, i64, i64, i32, i64, i64, i64, %struct.dm_target* }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_7__ = type { i64, %struct.TYPE_12__*, i64 }
%struct.TYPE_12__ = type { i32 }
%struct.dm_target = type { i32 }
%struct.dm_dev = type { i32, %struct.TYPE_12__* }

@DEFAULTSYNC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"wrong number of arguments to dirty region log\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"sync\00", align 1
@FORCESYNC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"nosync\00", align 1
@NOSYNC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [51 x i8] c"unrecognised sync argument to dirty region log: %s\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%u%c\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"invalid region size %s\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [27 x i8] c"couldn't allocate core log\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@BYTE_SHIFT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [31 x i8] c"couldn't allocate clean bitset\00", align 1
@LOG_OFFSET = common dso_local global i64 0, align 8
@SECTOR_SHIFT = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [41 x i8] c"log device %s too small: need %llu bytes\00", align 1
@DM_IO_VMA = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [33 x i8] c"couldn't allocate disk io client\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"couldn't allocate disk log buffer\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"couldn't allocate sync bitset\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_dirty_log*, %struct.dm_target*, i32, i8**, %struct.dm_dev*)* @create_log_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_log_context(%struct.dm_dirty_log* %0, %struct.dm_target* %1, i32 %2, i8** %3, %struct.dm_dev* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.dm_dirty_log*, align 8
  %8 = alloca %struct.dm_target*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca %struct.dm_dev*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.log_c*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8, align 1
  store %struct.dm_dirty_log* %0, %struct.dm_dirty_log** %7, align 8
  store %struct.dm_target* %1, %struct.dm_target** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8** %3, i8*** %10, align 8
  store %struct.dm_dev* %4, %struct.dm_dev** %11, align 8
  %20 = load i32, i32* @DEFAULTSYNC, align 4
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp ult i32 %21, 1
  br i1 %22, label %26, label %23

23:                                               ; preds = %5
  %24 = load i32, i32* %9, align 4
  %25 = icmp ugt i32 %24, 2
  br i1 %25, label %26, label %30

26:                                               ; preds = %23, %5
  %27 = call i32 (i8*, ...) @DMWARN(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %6, align 4
  br label %372

30:                                               ; preds = %23
  %31 = load i32, i32* %9, align 4
  %32 = icmp ugt i32 %31, 1
  br i1 %32, label %33, label %58

33:                                               ; preds = %30
  %34 = load i8**, i8*** %10, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i64 1
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @strcmp(i8* %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %33
  %40 = load i32, i32* @FORCESYNC, align 4
  store i32 %40, i32* %12, align 4
  br label %57

41:                                               ; preds = %33
  %42 = load i8**, i8*** %10, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i64 1
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 @strcmp(i8* %44, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %41
  %48 = load i32, i32* @NOSYNC, align 4
  store i32 %48, i32* %12, align 4
  br label %56

49:                                               ; preds = %41
  %50 = load i8**, i8*** %10, align 8
  %51 = getelementptr inbounds i8*, i8** %50, i64 1
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 (i8*, ...) @DMWARN(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i8* %52)
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %6, align 4
  br label %372

56:                                               ; preds = %47
  br label %57

57:                                               ; preds = %56, %39
  br label %58

58:                                               ; preds = %57, %30
  %59 = load i8**, i8*** %10, align 8
  %60 = getelementptr inbounds i8*, i8** %59, i64 0
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 @sscanf(i8* %61, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32* %14, i8* %19)
  %63 = icmp ne i32 %62, 1
  br i1 %63, label %69, label %64

64:                                               ; preds = %58
  %65 = load %struct.dm_target*, %struct.dm_target** %8, align 8
  %66 = load i32, i32* %14, align 4
  %67 = call i32 @_check_region_size(%struct.dm_target* %65, i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %76, label %69

69:                                               ; preds = %64, %58
  %70 = load i8**, i8*** %10, align 8
  %71 = getelementptr inbounds i8*, i8** %70, i64 0
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 (i8*, ...) @DMWARN(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i8* %72)
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %6, align 4
  br label %372

76:                                               ; preds = %64
  %77 = load %struct.dm_target*, %struct.dm_target** %8, align 8
  %78 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %14, align 4
  %81 = call i32 @dm_sector_div_up(i32 %79, i32 %80)
  store i32 %81, i32* %15, align 4
  %82 = load i32, i32* @GFP_KERNEL, align 4
  %83 = call %struct.log_c* @kmalloc(i32 184, i32 %82)
  store %struct.log_c* %83, %struct.log_c** %13, align 8
  %84 = load %struct.log_c*, %struct.log_c** %13, align 8
  %85 = icmp ne %struct.log_c* %84, null
  br i1 %85, label %90, label %86

86:                                               ; preds = %76
  %87 = call i32 (i8*, ...) @DMWARN(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  %88 = load i32, i32* @ENOMEM, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %6, align 4
  br label %372

90:                                               ; preds = %76
  %91 = load %struct.dm_target*, %struct.dm_target** %8, align 8
  %92 = load %struct.log_c*, %struct.log_c** %13, align 8
  %93 = getelementptr inbounds %struct.log_c, %struct.log_c* %92, i32 0, i32 18
  store %struct.dm_target* %91, %struct.dm_target** %93, align 8
  %94 = load %struct.log_c*, %struct.log_c** %13, align 8
  %95 = getelementptr inbounds %struct.log_c, %struct.log_c* %94, i32 0, i32 17
  store i64 0, i64* %95, align 8
  %96 = load %struct.log_c*, %struct.log_c** %13, align 8
  %97 = getelementptr inbounds %struct.log_c, %struct.log_c* %96, i32 0, i32 16
  store i64 0, i64* %97, align 8
  %98 = load %struct.log_c*, %struct.log_c** %13, align 8
  %99 = getelementptr inbounds %struct.log_c, %struct.log_c* %98, i32 0, i32 15
  store i64 0, i64* %99, align 8
  %100 = load i32, i32* %14, align 4
  %101 = load %struct.log_c*, %struct.log_c** %13, align 8
  %102 = getelementptr inbounds %struct.log_c, %struct.log_c* %101, i32 0, i32 14
  store i32 %100, i32* %102, align 8
  %103 = load i32, i32* %15, align 4
  %104 = load %struct.log_c*, %struct.log_c** %13, align 8
  %105 = getelementptr inbounds %struct.log_c, %struct.log_c* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 8
  %106 = load i32, i32* %12, align 4
  %107 = load %struct.log_c*, %struct.log_c** %13, align 8
  %108 = getelementptr inbounds %struct.log_c, %struct.log_c* %107, i32 0, i32 1
  store i32 %106, i32* %108, align 4
  %109 = load i32, i32* %15, align 4
  %110 = zext i32 %109 to i64
  %111 = load i32, i32* @BYTE_SHIFT, align 4
  %112 = zext i32 %111 to i64
  %113 = shl i64 4, %112
  %114 = trunc i64 %113 to i32
  %115 = call i64 @dm_round_up(i64 %110, i32 %114)
  store i64 %115, i64* %16, align 8
  %116 = load i32, i32* @BYTE_SHIFT, align 4
  %117 = load i64, i64* %16, align 8
  %118 = zext i32 %116 to i64
  %119 = lshr i64 %117, %118
  store i64 %119, i64* %16, align 8
  %120 = load i64, i64* %16, align 8
  %121 = udiv i64 %120, 4
  %122 = load %struct.log_c*, %struct.log_c** %13, align 8
  %123 = getelementptr inbounds %struct.log_c, %struct.log_c* %122, i32 0, i32 2
  store i64 %121, i64* %123, align 8
  %124 = load %struct.dm_dev*, %struct.dm_dev** %11, align 8
  %125 = icmp ne %struct.dm_dev* %124, null
  br i1 %125, label %145, label %126

126:                                              ; preds = %90
  %127 = load i64, i64* %16, align 8
  %128 = call i8* @vmalloc(i64 %127)
  %129 = bitcast i8* %128 to i32*
  %130 = load %struct.log_c*, %struct.log_c** %13, align 8
  %131 = getelementptr inbounds %struct.log_c, %struct.log_c* %130, i32 0, i32 7
  store i32* %129, i32** %131, align 8
  %132 = load %struct.log_c*, %struct.log_c** %13, align 8
  %133 = getelementptr inbounds %struct.log_c, %struct.log_c* %132, i32 0, i32 7
  %134 = load i32*, i32** %133, align 8
  %135 = icmp ne i32* %134, null
  br i1 %135, label %142, label %136

136:                                              ; preds = %126
  %137 = call i32 (i8*, ...) @DMWARN(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  %138 = load %struct.log_c*, %struct.log_c** %13, align 8
  %139 = call i32 @kfree(%struct.log_c* %138)
  %140 = load i32, i32* @ENOMEM, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %6, align 4
  br label %372

142:                                              ; preds = %126
  %143 = load %struct.log_c*, %struct.log_c** %13, align 8
  %144 = getelementptr inbounds %struct.log_c, %struct.log_c* %143, i32 0, i32 5
  store i32* null, i32** %144, align 8
  br label %270

145:                                              ; preds = %90
  %146 = load %struct.dm_dev*, %struct.dm_dev** %11, align 8
  %147 = load %struct.log_c*, %struct.log_c** %13, align 8
  %148 = getelementptr inbounds %struct.log_c, %struct.log_c* %147, i32 0, i32 11
  store %struct.dm_dev* %146, %struct.dm_dev** %148, align 8
  %149 = load %struct.log_c*, %struct.log_c** %13, align 8
  %150 = getelementptr inbounds %struct.log_c, %struct.log_c* %149, i32 0, i32 13
  store i64 0, i64* %150, align 8
  %151 = load %struct.log_c*, %struct.log_c** %13, align 8
  %152 = getelementptr inbounds %struct.log_c, %struct.log_c* %151, i32 0, i32 12
  store i64 0, i64* %152, align 8
  %153 = load %struct.log_c*, %struct.log_c** %13, align 8
  %154 = getelementptr inbounds %struct.log_c, %struct.log_c* %153, i32 0, i32 11
  %155 = load %struct.dm_dev*, %struct.dm_dev** %154, align 8
  %156 = getelementptr inbounds %struct.dm_dev, %struct.dm_dev* %155, i32 0, i32 1
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** %156, align 8
  %158 = load %struct.log_c*, %struct.log_c** %13, align 8
  %159 = getelementptr inbounds %struct.log_c, %struct.log_c* %158, i32 0, i32 10
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 1
  store %struct.TYPE_12__* %157, %struct.TYPE_12__** %160, align 8
  %161 = load %struct.log_c*, %struct.log_c** %13, align 8
  %162 = getelementptr inbounds %struct.log_c, %struct.log_c* %161, i32 0, i32 10
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 2
  store i64 0, i64* %163, align 8
  %164 = load i64, i64* @LOG_OFFSET, align 8
  %165 = load i64, i64* @SECTOR_SHIFT, align 8
  %166 = shl i64 %164, %165
  %167 = load i64, i64* %16, align 8
  %168 = add i64 %166, %167
  %169 = load %struct.log_c*, %struct.log_c** %13, align 8
  %170 = getelementptr inbounds %struct.log_c, %struct.log_c* %169, i32 0, i32 10
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 1
  %172 = load %struct.TYPE_12__*, %struct.TYPE_12__** %171, align 8
  %173 = call i32 @bdev_logical_block_size(%struct.TYPE_12__* %172)
  %174 = call i64 @dm_round_up(i64 %168, i32 %173)
  store i64 %174, i64* %17, align 8
  %175 = load i64, i64* %17, align 8
  %176 = load %struct.dm_dev*, %struct.dm_dev** %11, align 8
  %177 = getelementptr inbounds %struct.dm_dev, %struct.dm_dev* %176, i32 0, i32 1
  %178 = load %struct.TYPE_12__*, %struct.TYPE_12__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = call i64 @i_size_read(i32 %180)
  %182 = icmp ugt i64 %175, %181
  br i1 %182, label %183, label %193

183:                                              ; preds = %145
  %184 = load %struct.dm_dev*, %struct.dm_dev** %11, align 8
  %185 = getelementptr inbounds %struct.dm_dev, %struct.dm_dev* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = load i64, i64* %17, align 8
  %188 = call i32 (i8*, ...) @DMWARN(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0), i32 %186, i64 %187)
  %189 = load %struct.log_c*, %struct.log_c** %13, align 8
  %190 = call i32 @kfree(%struct.log_c* %189)
  %191 = load i32, i32* @EINVAL, align 4
  %192 = sub nsw i32 0, %191
  store i32 %192, i32* %6, align 4
  br label %372

193:                                              ; preds = %145
  %194 = load i64, i64* %17, align 8
  %195 = load i64, i64* @SECTOR_SHIFT, align 8
  %196 = lshr i64 %194, %195
  %197 = load %struct.log_c*, %struct.log_c** %13, align 8
  %198 = getelementptr inbounds %struct.log_c, %struct.log_c* %197, i32 0, i32 10
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %198, i32 0, i32 0
  store i64 %196, i64* %199, align 8
  %200 = load i32, i32* @DM_IO_VMA, align 4
  %201 = load %struct.log_c*, %struct.log_c** %13, align 8
  %202 = getelementptr inbounds %struct.log_c, %struct.log_c* %201, i32 0, i32 6
  %203 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %202, i32 0, i32 1
  %204 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %203, i32 0, i32 1
  store i32 %200, i32* %204, align 8
  %205 = load %struct.log_c*, %struct.log_c** %13, align 8
  %206 = getelementptr inbounds %struct.log_c, %struct.log_c* %205, i32 0, i32 6
  %207 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %206, i32 0, i32 2
  %208 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %207, i32 0, i32 0
  store i32* null, i32** %208, align 8
  %209 = call i32 (...) @dm_io_client_create()
  %210 = load %struct.log_c*, %struct.log_c** %13, align 8
  %211 = getelementptr inbounds %struct.log_c, %struct.log_c* %210, i32 0, i32 6
  %212 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %211, i32 0, i32 0
  store i32 %209, i32* %212, align 8
  %213 = load %struct.log_c*, %struct.log_c** %13, align 8
  %214 = getelementptr inbounds %struct.log_c, %struct.log_c* %213, i32 0, i32 6
  %215 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = call i64 @IS_ERR(i32 %216)
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %229

219:                                              ; preds = %193
  %220 = load %struct.log_c*, %struct.log_c** %13, align 8
  %221 = getelementptr inbounds %struct.log_c, %struct.log_c* %220, i32 0, i32 6
  %222 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = call i32 @PTR_ERR(i32 %223)
  store i32 %224, i32* %18, align 4
  %225 = call i32 (i8*, ...) @DMWARN(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0))
  %226 = load %struct.log_c*, %struct.log_c** %13, align 8
  %227 = call i32 @kfree(%struct.log_c* %226)
  %228 = load i32, i32* %18, align 4
  store i32 %228, i32* %6, align 4
  br label %372

229:                                              ; preds = %193
  %230 = load i64, i64* %17, align 8
  %231 = call i8* @vmalloc(i64 %230)
  %232 = bitcast i8* %231 to i32*
  %233 = load %struct.log_c*, %struct.log_c** %13, align 8
  %234 = getelementptr inbounds %struct.log_c, %struct.log_c* %233, i32 0, i32 5
  store i32* %232, i32** %234, align 8
  %235 = load %struct.log_c*, %struct.log_c** %13, align 8
  %236 = getelementptr inbounds %struct.log_c, %struct.log_c* %235, i32 0, i32 5
  %237 = load i32*, i32** %236, align 8
  %238 = icmp ne i32* %237, null
  br i1 %238, label %250, label %239

239:                                              ; preds = %229
  %240 = call i32 (i8*, ...) @DMWARN(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0))
  %241 = load %struct.log_c*, %struct.log_c** %13, align 8
  %242 = getelementptr inbounds %struct.log_c, %struct.log_c* %241, i32 0, i32 6
  %243 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = call i32 @dm_io_client_destroy(i32 %244)
  %246 = load %struct.log_c*, %struct.log_c** %13, align 8
  %247 = call i32 @kfree(%struct.log_c* %246)
  %248 = load i32, i32* @ENOMEM, align 4
  %249 = sub nsw i32 0, %248
  store i32 %249, i32* %6, align 4
  br label %372

250:                                              ; preds = %229
  %251 = load %struct.log_c*, %struct.log_c** %13, align 8
  %252 = getelementptr inbounds %struct.log_c, %struct.log_c* %251, i32 0, i32 5
  %253 = load i32*, i32** %252, align 8
  %254 = load %struct.log_c*, %struct.log_c** %13, align 8
  %255 = getelementptr inbounds %struct.log_c, %struct.log_c* %254, i32 0, i32 6
  %256 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %255, i32 0, i32 1
  %257 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %256, i32 0, i32 0
  %258 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %257, i32 0, i32 0
  store i32* %253, i32** %258, align 8
  %259 = load %struct.log_c*, %struct.log_c** %13, align 8
  %260 = getelementptr inbounds %struct.log_c, %struct.log_c* %259, i32 0, i32 5
  %261 = load i32*, i32** %260, align 8
  %262 = bitcast i32* %261 to i8*
  %263 = load i64, i64* @LOG_OFFSET, align 8
  %264 = load i64, i64* @SECTOR_SHIFT, align 8
  %265 = shl i64 %263, %264
  %266 = getelementptr i8, i8* %262, i64 %265
  %267 = bitcast i8* %266 to i32*
  %268 = load %struct.log_c*, %struct.log_c** %13, align 8
  %269 = getelementptr inbounds %struct.log_c, %struct.log_c* %268, i32 0, i32 7
  store i32* %267, i32** %269, align 8
  br label %270

270:                                              ; preds = %250, %142
  %271 = load %struct.log_c*, %struct.log_c** %13, align 8
  %272 = getelementptr inbounds %struct.log_c, %struct.log_c* %271, i32 0, i32 7
  %273 = load i32*, i32** %272, align 8
  %274 = load i64, i64* %16, align 8
  %275 = call i32 @memset(i32* %273, i32 -1, i64 %274)
  %276 = load i64, i64* %16, align 8
  %277 = call i8* @vmalloc(i64 %276)
  %278 = bitcast i8* %277 to i32*
  %279 = load %struct.log_c*, %struct.log_c** %13, align 8
  %280 = getelementptr inbounds %struct.log_c, %struct.log_c* %279, i32 0, i32 8
  store i32* %278, i32** %280, align 8
  %281 = load %struct.log_c*, %struct.log_c** %13, align 8
  %282 = getelementptr inbounds %struct.log_c, %struct.log_c* %281, i32 0, i32 8
  %283 = load i32*, i32** %282, align 8
  %284 = icmp ne i32* %283, null
  br i1 %284, label %309, label %285

285:                                              ; preds = %270
  %286 = call i32 (i8*, ...) @DMWARN(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0))
  %287 = load %struct.dm_dev*, %struct.dm_dev** %11, align 8
  %288 = icmp ne %struct.dm_dev* %287, null
  br i1 %288, label %294, label %289

289:                                              ; preds = %285
  %290 = load %struct.log_c*, %struct.log_c** %13, align 8
  %291 = getelementptr inbounds %struct.log_c, %struct.log_c* %290, i32 0, i32 7
  %292 = load i32*, i32** %291, align 8
  %293 = call i32 @vfree(i32* %292)
  br label %300

294:                                              ; preds = %285
  %295 = load %struct.log_c*, %struct.log_c** %13, align 8
  %296 = getelementptr inbounds %struct.log_c, %struct.log_c* %295, i32 0, i32 6
  %297 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 8
  %299 = call i32 @dm_io_client_destroy(i32 %298)
  br label %300

300:                                              ; preds = %294, %289
  %301 = load %struct.log_c*, %struct.log_c** %13, align 8
  %302 = getelementptr inbounds %struct.log_c, %struct.log_c* %301, i32 0, i32 5
  %303 = load i32*, i32** %302, align 8
  %304 = call i32 @vfree(i32* %303)
  %305 = load %struct.log_c*, %struct.log_c** %13, align 8
  %306 = call i32 @kfree(%struct.log_c* %305)
  %307 = load i32, i32* @ENOMEM, align 4
  %308 = sub nsw i32 0, %307
  store i32 %308, i32* %6, align 4
  br label %372

309:                                              ; preds = %270
  %310 = load %struct.log_c*, %struct.log_c** %13, align 8
  %311 = getelementptr inbounds %struct.log_c, %struct.log_c* %310, i32 0, i32 8
  %312 = load i32*, i32** %311, align 8
  %313 = load i32, i32* %12, align 4
  %314 = load i32, i32* @NOSYNC, align 4
  %315 = icmp eq i32 %313, %314
  %316 = zext i1 %315 to i64
  %317 = select i1 %315, i32 -1, i32 0
  %318 = load i64, i64* %16, align 8
  %319 = call i32 @memset(i32* %312, i32 %317, i64 %318)
  %320 = load i32, i32* %12, align 4
  %321 = load i32, i32* @NOSYNC, align 4
  %322 = icmp eq i32 %320, %321
  br i1 %322, label %323, label %325

323:                                              ; preds = %309
  %324 = load i32, i32* %15, align 4
  br label %326

325:                                              ; preds = %309
  br label %326

326:                                              ; preds = %325, %323
  %327 = phi i32 [ %324, %323 ], [ 0, %325 ]
  %328 = load %struct.log_c*, %struct.log_c** %13, align 8
  %329 = getelementptr inbounds %struct.log_c, %struct.log_c* %328, i32 0, i32 3
  store i32 %327, i32* %329, align 8
  %330 = load i64, i64* %16, align 8
  %331 = call i32 @vzalloc(i64 %330)
  %332 = load %struct.log_c*, %struct.log_c** %13, align 8
  %333 = getelementptr inbounds %struct.log_c, %struct.log_c* %332, i32 0, i32 9
  store i32 %331, i32* %333, align 8
  %334 = load %struct.log_c*, %struct.log_c** %13, align 8
  %335 = getelementptr inbounds %struct.log_c, %struct.log_c* %334, i32 0, i32 9
  %336 = load i32, i32* %335, align 8
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %366, label %338

338:                                              ; preds = %326
  %339 = call i32 (i8*, ...) @DMWARN(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0))
  %340 = load %struct.log_c*, %struct.log_c** %13, align 8
  %341 = getelementptr inbounds %struct.log_c, %struct.log_c* %340, i32 0, i32 8
  %342 = load i32*, i32** %341, align 8
  %343 = call i32 @vfree(i32* %342)
  %344 = load %struct.dm_dev*, %struct.dm_dev** %11, align 8
  %345 = icmp ne %struct.dm_dev* %344, null
  br i1 %345, label %351, label %346

346:                                              ; preds = %338
  %347 = load %struct.log_c*, %struct.log_c** %13, align 8
  %348 = getelementptr inbounds %struct.log_c, %struct.log_c* %347, i32 0, i32 7
  %349 = load i32*, i32** %348, align 8
  %350 = call i32 @vfree(i32* %349)
  br label %357

351:                                              ; preds = %338
  %352 = load %struct.log_c*, %struct.log_c** %13, align 8
  %353 = getelementptr inbounds %struct.log_c, %struct.log_c* %352, i32 0, i32 6
  %354 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %353, i32 0, i32 0
  %355 = load i32, i32* %354, align 8
  %356 = call i32 @dm_io_client_destroy(i32 %355)
  br label %357

357:                                              ; preds = %351, %346
  %358 = load %struct.log_c*, %struct.log_c** %13, align 8
  %359 = getelementptr inbounds %struct.log_c, %struct.log_c* %358, i32 0, i32 5
  %360 = load i32*, i32** %359, align 8
  %361 = call i32 @vfree(i32* %360)
  %362 = load %struct.log_c*, %struct.log_c** %13, align 8
  %363 = call i32 @kfree(%struct.log_c* %362)
  %364 = load i32, i32* @ENOMEM, align 4
  %365 = sub nsw i32 0, %364
  store i32 %365, i32* %6, align 4
  br label %372

366:                                              ; preds = %326
  %367 = load %struct.log_c*, %struct.log_c** %13, align 8
  %368 = getelementptr inbounds %struct.log_c, %struct.log_c* %367, i32 0, i32 4
  store i64 0, i64* %368, align 8
  %369 = load %struct.log_c*, %struct.log_c** %13, align 8
  %370 = load %struct.dm_dirty_log*, %struct.dm_dirty_log** %7, align 8
  %371 = getelementptr inbounds %struct.dm_dirty_log, %struct.dm_dirty_log* %370, i32 0, i32 0
  store %struct.log_c* %369, %struct.log_c** %371, align 8
  store i32 0, i32* %6, align 4
  br label %372

372:                                              ; preds = %366, %357, %300, %239, %219, %183, %136, %86, %69, %49, %26
  %373 = load i32, i32* %6, align 4
  ret i32 %373
}

declare dso_local i32 @DMWARN(i8*, ...) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i8*) #1

declare dso_local i32 @_check_region_size(%struct.dm_target*, i32) #1

declare dso_local i32 @dm_sector_div_up(i32, i32) #1

declare dso_local %struct.log_c* @kmalloc(i32, i32) #1

declare dso_local i64 @dm_round_up(i64, i32) #1

declare dso_local i8* @vmalloc(i64) #1

declare dso_local i32 @kfree(%struct.log_c*) #1

declare dso_local i32 @bdev_logical_block_size(%struct.TYPE_12__*) #1

declare dso_local i64 @i_size_read(i32) #1

declare dso_local i32 @dm_io_client_create(...) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dm_io_client_destroy(i32) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

declare dso_local i32 @vfree(i32*) #1

declare dso_local i32 @vzalloc(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
