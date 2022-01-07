; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-raid.c_parse_dev_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-raid.c_parse_dev_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raid_set = type { i32, %struct.TYPE_13__*, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_9__* }
%struct.TYPE_13__ = type { i8*, i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i64, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__, i64 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_14__*, %struct.TYPE_14__* }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_12__*, i64, i64 }
%struct.TYPE_14__ = type { i32 }
%struct.dm_arg_set = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"RAID metadata device lookup failure\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Failed to allocate superblock page\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@In_sync = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"Drive designated for rebuild not specified\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"No data device supplied with metadata device\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"RAID device lookup failure\00", align 1
@.str.6 = private unnamed_addr constant [51 x i8] c"Unable to rebuild drive while array is not in-sync\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.raid_set*, %struct.dm_arg_set*)* @parse_dev_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_dev_params(%struct.raid_set* %0, %struct.dm_arg_set* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.raid_set*, align 8
  %5 = alloca %struct.dm_arg_set*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.raid_set* %0, %struct.raid_set** %4, align 8
  store %struct.dm_arg_set* %1, %struct.dm_arg_set** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %11 = load %struct.dm_arg_set*, %struct.dm_arg_set** %5, align 8
  %12 = call i8* @dm_shift_arg(%struct.dm_arg_set* %11)
  store i8* %12, i8** %10, align 8
  %13 = load i8*, i8** %10, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %353

18:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %19

19:                                               ; preds = %304, %18
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %22 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %307

25:                                               ; preds = %19
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %28 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %27, i32 0, i32 4
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  store i32 %26, i32* %34, align 8
  %35 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %36 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %35, i32 0, i32 4
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 2
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %41, align 8
  %42 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %43 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %42, i32 0, i32 4
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 1
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %48, align 8
  %49 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %50 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %49, i32 0, i32 4
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 9
  store i64 0, i64* %56, align 8
  %57 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %58 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %57, i32 0, i32 4
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %58, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 8
  store i64 0, i64* %64, align 8
  %65 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %66 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %65, i32 0, i32 2
  %67 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %68 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %67, i32 0, i32 4
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %68, align 8
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 7
  store %struct.TYPE_12__* %66, %struct.TYPE_12__** %74, align 8
  %75 = load %struct.dm_arg_set*, %struct.dm_arg_set** %5, align 8
  %76 = call i8* @dm_shift_arg(%struct.dm_arg_set* %75)
  store i8* %76, i8** %10, align 8
  %77 = load i8*, i8** %10, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %82, label %79

79:                                               ; preds = %25
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %3, align 4
  br label %353

82:                                               ; preds = %25
  %83 = load i8*, i8** %10, align 8
  %84 = call i64 @strcmp(i8* %83, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %142

86:                                               ; preds = %82
  %87 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %88 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %87, i32 0, i32 1
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %88, align 8
  %90 = load i8*, i8** %10, align 8
  %91 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %92 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %91, i32 0, i32 1
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @dm_table_get_mode(i32 %95)
  %97 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %98 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %97, i32 0, i32 4
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %98, align 8
  %100 = load i32, i32* %6, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 2
  %104 = call i32 @dm_get_device(%struct.TYPE_13__* %89, i8* %90, i32 %96, %struct.TYPE_14__** %103)
  store i32 %104, i32* %9, align 4
  %105 = load i32, i32* %9, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %86
  %108 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %109 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %108, i32 0, i32 1
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 0
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i8** %111, align 8
  %112 = load i32, i32* %9, align 4
  store i32 %112, i32* %3, align 4
  br label %353

113:                                              ; preds = %86
  %114 = load i32, i32* @GFP_KERNEL, align 4
  %115 = call i32 @alloc_page(i32 %114)
  %116 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %117 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %116, i32 0, i32 4
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %117, align 8
  %119 = load i32, i32* %6, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 6
  store i32 %115, i32* %123, align 8
  %124 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %125 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %124, i32 0, i32 4
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %125, align 8
  %127 = load i32, i32* %6, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 6
  %132 = load i32, i32* %131, align 8
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %141, label %134

134:                                              ; preds = %113
  %135 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %136 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %135, i32 0, i32 1
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i32 0, i32 0
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i8** %138, align 8
  %139 = load i32, i32* @ENOMEM, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %3, align 4
  br label %353

141:                                              ; preds = %113
  br label %142

142:                                              ; preds = %141, %82
  %143 = load %struct.dm_arg_set*, %struct.dm_arg_set** %5, align 8
  %144 = call i8* @dm_shift_arg(%struct.dm_arg_set* %143)
  store i8* %144, i8** %10, align 8
  %145 = load i8*, i8** %10, align 8
  %146 = icmp ne i8* %145, null
  br i1 %146, label %150, label %147

147:                                              ; preds = %142
  %148 = load i32, i32* @EINVAL, align 4
  %149 = sub nsw i32 0, %148
  store i32 %149, i32* %3, align 4
  br label %353

150:                                              ; preds = %142
  %151 = load i8*, i8** %10, align 8
  %152 = call i64 @strcmp(i8* %151, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %202, label %154

154:                                              ; preds = %150
  %155 = load i32, i32* @In_sync, align 4
  %156 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %157 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %156, i32 0, i32 4
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %157, align 8
  %159 = load i32, i32* %6, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 1
  %164 = call i32 @test_bit(i32 %155, i32* %163)
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %184, label %166

166:                                              ; preds = %154
  %167 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %168 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %167, i32 0, i32 4
  %169 = load %struct.TYPE_9__*, %struct.TYPE_9__** %168, align 8
  %170 = load i32, i32* %6, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 5
  %175 = load i32, i32* %174, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %184, label %177

177:                                              ; preds = %166
  %178 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %179 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %178, i32 0, i32 1
  %180 = load %struct.TYPE_13__*, %struct.TYPE_13__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %180, i32 0, i32 0
  store i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i8** %181, align 8
  %182 = load i32, i32* @EINVAL, align 4
  %183 = sub nsw i32 0, %182
  store i32 %183, i32* %3, align 4
  br label %353

184:                                              ; preds = %166, %154
  %185 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %186 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %185, i32 0, i32 4
  %187 = load %struct.TYPE_9__*, %struct.TYPE_9__** %186, align 8
  %188 = load i32, i32* %6, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %187, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %190, i32 0, i32 2
  %192 = load %struct.TYPE_14__*, %struct.TYPE_14__** %191, align 8
  %193 = icmp ne %struct.TYPE_14__* %192, null
  br i1 %193, label %194, label %201

194:                                              ; preds = %184
  %195 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %196 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %195, i32 0, i32 1
  %197 = load %struct.TYPE_13__*, %struct.TYPE_13__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %197, i32 0, i32 0
  store i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i8** %198, align 8
  %199 = load i32, i32* @EINVAL, align 4
  %200 = sub nsw i32 0, %199
  store i32 %200, i32* %3, align 4
  br label %353

201:                                              ; preds = %184
  br label %304

202:                                              ; preds = %150
  %203 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %204 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %203, i32 0, i32 1
  %205 = load %struct.TYPE_13__*, %struct.TYPE_13__** %204, align 8
  %206 = load i8*, i8** %10, align 8
  %207 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %208 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %207, i32 0, i32 1
  %209 = load %struct.TYPE_13__*, %struct.TYPE_13__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 8
  %212 = call i32 @dm_table_get_mode(i32 %211)
  %213 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %214 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %213, i32 0, i32 4
  %215 = load %struct.TYPE_9__*, %struct.TYPE_9__** %214, align 8
  %216 = load i32, i32* %6, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %215, i64 %217
  %219 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %218, i32 0, i32 1
  %220 = call i32 @dm_get_device(%struct.TYPE_13__* %205, i8* %206, i32 %212, %struct.TYPE_14__** %219)
  store i32 %220, i32* %9, align 4
  %221 = load i32, i32* %9, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %229

223:                                              ; preds = %202
  %224 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %225 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %224, i32 0, i32 1
  %226 = load %struct.TYPE_13__*, %struct.TYPE_13__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %226, i32 0, i32 0
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i8** %227, align 8
  %228 = load i32, i32* %9, align 4
  store i32 %228, i32* %3, align 4
  br label %353

229:                                              ; preds = %202
  %230 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %231 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %230, i32 0, i32 4
  %232 = load %struct.TYPE_9__*, %struct.TYPE_9__** %231, align 8
  %233 = load i32, i32* %6, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %232, i64 %234
  %236 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %235, i32 0, i32 2
  %237 = load %struct.TYPE_14__*, %struct.TYPE_14__** %236, align 8
  %238 = icmp ne %struct.TYPE_14__* %237, null
  br i1 %238, label %239, label %258

239:                                              ; preds = %229
  store i32 1, i32* %8, align 4
  %240 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %241 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %240, i32 0, i32 4
  %242 = load %struct.TYPE_9__*, %struct.TYPE_9__** %241, align 8
  %243 = load i32, i32* %6, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %242, i64 %244
  %246 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %245, i32 0, i32 2
  %247 = load %struct.TYPE_14__*, %struct.TYPE_14__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %251 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %250, i32 0, i32 4
  %252 = load %struct.TYPE_9__*, %struct.TYPE_9__** %251, align 8
  %253 = load i32, i32* %6, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %252, i64 %254
  %256 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %255, i32 0, i32 0
  %257 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %256, i32 0, i32 4
  store i32 %249, i32* %257, align 8
  br label %258

258:                                              ; preds = %239, %229
  %259 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %260 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %259, i32 0, i32 4
  %261 = load %struct.TYPE_9__*, %struct.TYPE_9__** %260, align 8
  %262 = load i32, i32* %6, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %261, i64 %263
  %265 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %264, i32 0, i32 1
  %266 = load %struct.TYPE_14__*, %struct.TYPE_14__** %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 4
  %269 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %270 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %269, i32 0, i32 4
  %271 = load %struct.TYPE_9__*, %struct.TYPE_9__** %270, align 8
  %272 = load i32, i32* %6, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %271, i64 %273
  %275 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %274, i32 0, i32 0
  %276 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %275, i32 0, i32 3
  store i32 %268, i32* %276, align 4
  %277 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %278 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %277, i32 0, i32 4
  %279 = load %struct.TYPE_9__*, %struct.TYPE_9__** %278, align 8
  %280 = load i32, i32* %6, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %279, i64 %281
  %283 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %282, i32 0, i32 0
  %284 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %283, i32 0, i32 2
  %285 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %286 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %285, i32 0, i32 2
  %287 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %286, i32 0, i32 4
  %288 = call i32 @list_add_tail(i32* %284, i32* %287)
  %289 = load i32, i32* @In_sync, align 4
  %290 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %291 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %290, i32 0, i32 4
  %292 = load %struct.TYPE_9__*, %struct.TYPE_9__** %291, align 8
  %293 = load i32, i32* %6, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %292, i64 %294
  %296 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %295, i32 0, i32 0
  %297 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %296, i32 0, i32 1
  %298 = call i32 @test_bit(i32 %289, i32* %297)
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %303, label %300

300:                                              ; preds = %258
  %301 = load i32, i32* %7, align 4
  %302 = add nsw i32 %301, 1
  store i32 %302, i32* %7, align 4
  br label %303

303:                                              ; preds = %300, %258
  br label %304

304:                                              ; preds = %303, %201
  %305 = load i32, i32* %6, align 4
  %306 = add nsw i32 %305, 1
  store i32 %306, i32* %6, align 4
  br label %19

307:                                              ; preds = %19
  %308 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %309 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %308, i32 0, i32 3
  %310 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %309, i32 0, i32 1
  %311 = load i64, i64* %310, align 8
  %312 = icmp ne i64 %311, 0
  br i1 %312, label %313, label %322

313:                                              ; preds = %307
  %314 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %315 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %314, i32 0, i32 3
  %316 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %315, i32 0, i32 0
  %317 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %316, i32 0, i32 0
  %318 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %319 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %318, i32 0, i32 2
  %320 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %319, i32 0, i32 4
  %321 = call i32 @list_add_tail(i32* %317, i32* %320)
  br label %322

322:                                              ; preds = %313, %307
  %323 = load i32, i32* %8, align 4
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %335

325:                                              ; preds = %322
  %326 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %327 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %326, i32 0, i32 2
  %328 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %327, i32 0, i32 3
  store i64 0, i64* %328, align 8
  %329 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %330 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %329, i32 0, i32 2
  %331 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %330, i32 0, i32 0
  store i32 1, i32* %331, align 8
  %332 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %333 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %332, i32 0, i32 2
  %334 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %333, i32 0, i32 1
  store i32 2, i32* %334, align 4
  br label %352

335:                                              ; preds = %322
  %336 = load i32, i32* %7, align 4
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %338, label %351

338:                                              ; preds = %335
  %339 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %340 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %339, i32 0, i32 2
  %341 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %340, i32 0, i32 2
  %342 = load i32, i32* %341, align 8
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %351, label %344

344:                                              ; preds = %338
  %345 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %346 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %345, i32 0, i32 1
  %347 = load %struct.TYPE_13__*, %struct.TYPE_13__** %346, align 8
  %348 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %347, i32 0, i32 0
  store i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.6, i64 0, i64 0), i8** %348, align 8
  %349 = load i32, i32* @EINVAL, align 4
  %350 = sub nsw i32 0, %349
  store i32 %350, i32* %3, align 4
  br label %353

351:                                              ; preds = %338, %335
  br label %352

352:                                              ; preds = %351, %325
  store i32 0, i32* %3, align 4
  br label %353

353:                                              ; preds = %352, %344, %223, %194, %177, %147, %134, %107, %79, %15
  %354 = load i32, i32* %3, align 4
  ret i32 %354
}

declare dso_local i8* @dm_shift_arg(%struct.dm_arg_set*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @dm_get_device(%struct.TYPE_13__*, i8*, i32, %struct.TYPE_14__**) #1

declare dso_local i32 @dm_table_get_mode(i32) #1

declare dso_local i32 @alloc_page(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
