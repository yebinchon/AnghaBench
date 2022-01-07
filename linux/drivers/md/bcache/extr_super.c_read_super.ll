; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_super.c_read_super.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_super.c_read_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_sb = type { i32, i32, i32, i32, i32, i32, i32*, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.block_device = type { i32 }
%struct.page = type { i32 }
%struct.buffer_head = type { %struct.page*, i64 }

@SB_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"IO error\00", align 1
@SB_LABEL_SIZE = common dso_local global i32 0, align 4
@SB_JOURNAL_BUCKETS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [60 x i8] c"read sb version %llu, flags %llu, seq %llu, journal size %u\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Not a bcache superblock\00", align 1
@SB_SECTOR = common dso_local global i32 0, align 4
@bcache_magic = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"Too many journal buckets\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"Bad checksum\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"Bad UUID\00", align 1
@.str.6 = private unnamed_addr constant [53 x i8] c"Superblock block size smaller than device block size\00", align 1
@BDEV_DATA_START_DEFAULT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [16 x i8] c"Bad data offset\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"Too many buckets\00", align 1
@LONG_MAX = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [19 x i8] c"Not enough buckets\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"Bad block/bucket size\00", align 1
@PAGE_SECTORS = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [37 x i8] c"Invalid superblock: device too small\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"Bad cache device number in set\00", align 1
@MAX_CACHES_PER_SET = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [31 x i8] c"Journal buckets not sequential\00", align 1
@.str.14 = private unnamed_addr constant [59 x i8] c"Invalid superblock: first bucket comes before end of super\00", align 1
@.str.15 = private unnamed_addr constant [31 x i8] c"Unsupported superblock version\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.cache_sb*, %struct.block_device*, %struct.page**)* @read_super to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @read_super(%struct.cache_sb* %0, %struct.block_device* %1, %struct.page** %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.cache_sb*, align 8
  %6 = alloca %struct.block_device*, align 8
  %7 = alloca %struct.page**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.cache_sb*, align 8
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca i32, align 4
  store %struct.cache_sb* %0, %struct.cache_sb** %5, align 8
  store %struct.block_device* %1, %struct.block_device** %6, align 8
  store %struct.page** %2, %struct.page*** %7, align 8
  %12 = load %struct.block_device*, %struct.block_device** %6, align 8
  %13 = load i32, i32* @SB_SIZE, align 4
  %14 = call %struct.buffer_head* @__bread(%struct.block_device* %12, i32 1, i32 %13)
  store %struct.buffer_head* %14, %struct.buffer_head** %10, align 8
  %15 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %16 = icmp ne %struct.buffer_head* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %387

18:                                               ; preds = %3
  %19 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %20 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.cache_sb*
  store %struct.cache_sb* %22, %struct.cache_sb** %9, align 8
  %23 = load %struct.cache_sb*, %struct.cache_sb** %9, align 8
  %24 = getelementptr inbounds %struct.cache_sb, %struct.cache_sb* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i8* @le64_to_cpu(i32 %25)
  %27 = ptrtoint i8* %26 to i32
  %28 = load %struct.cache_sb*, %struct.cache_sb** %5, align 8
  %29 = getelementptr inbounds %struct.cache_sb, %struct.cache_sb* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load %struct.cache_sb*, %struct.cache_sb** %9, align 8
  %31 = getelementptr inbounds %struct.cache_sb, %struct.cache_sb* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i8* @le64_to_cpu(i32 %32)
  %34 = ptrtoint i8* %33 to i32
  %35 = load %struct.cache_sb*, %struct.cache_sb** %5, align 8
  %36 = getelementptr inbounds %struct.cache_sb, %struct.cache_sb* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.cache_sb*, %struct.cache_sb** %5, align 8
  %38 = getelementptr inbounds %struct.cache_sb, %struct.cache_sb* %37, i32 0, i32 17
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.cache_sb*, %struct.cache_sb** %9, align 8
  %41 = getelementptr inbounds %struct.cache_sb, %struct.cache_sb* %40, i32 0, i32 17
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @memcpy(i32 %39, i32 %42, i32 16)
  %44 = load %struct.cache_sb*, %struct.cache_sb** %5, align 8
  %45 = getelementptr inbounds %struct.cache_sb, %struct.cache_sb* %44, i32 0, i32 16
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.cache_sb*, %struct.cache_sb** %9, align 8
  %48 = getelementptr inbounds %struct.cache_sb, %struct.cache_sb* %47, i32 0, i32 16
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @memcpy(i32 %46, i32 %49, i32 16)
  %51 = load %struct.cache_sb*, %struct.cache_sb** %5, align 8
  %52 = getelementptr inbounds %struct.cache_sb, %struct.cache_sb* %51, i32 0, i32 15
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.cache_sb*, %struct.cache_sb** %9, align 8
  %55 = getelementptr inbounds %struct.cache_sb, %struct.cache_sb* %54, i32 0, i32 15
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @memcpy(i32 %53, i32 %56, i32 16)
  %58 = load %struct.cache_sb*, %struct.cache_sb** %5, align 8
  %59 = getelementptr inbounds %struct.cache_sb, %struct.cache_sb* %58, i32 0, i32 18
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.cache_sb*, %struct.cache_sb** %9, align 8
  %62 = getelementptr inbounds %struct.cache_sb, %struct.cache_sb* %61, i32 0, i32 18
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @SB_LABEL_SIZE, align 4
  %65 = call i32 @memcpy(i32 %60, i32 %63, i32 %64)
  %66 = load %struct.cache_sb*, %struct.cache_sb** %9, align 8
  %67 = getelementptr inbounds %struct.cache_sb, %struct.cache_sb* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = call i8* @le64_to_cpu(i32 %68)
  %70 = ptrtoint i8* %69 to i32
  %71 = load %struct.cache_sb*, %struct.cache_sb** %5, align 8
  %72 = getelementptr inbounds %struct.cache_sb, %struct.cache_sb* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 8
  %73 = load %struct.cache_sb*, %struct.cache_sb** %9, align 8
  %74 = getelementptr inbounds %struct.cache_sb, %struct.cache_sb* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = call i8* @le64_to_cpu(i32 %75)
  %77 = ptrtoint i8* %76 to i32
  %78 = load %struct.cache_sb*, %struct.cache_sb** %5, align 8
  %79 = getelementptr inbounds %struct.cache_sb, %struct.cache_sb* %78, i32 0, i32 3
  store i32 %77, i32* %79, align 4
  %80 = load %struct.cache_sb*, %struct.cache_sb** %9, align 8
  %81 = getelementptr inbounds %struct.cache_sb, %struct.cache_sb* %80, i32 0, i32 14
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @le32_to_cpu(i32 %82)
  %84 = load %struct.cache_sb*, %struct.cache_sb** %5, align 8
  %85 = getelementptr inbounds %struct.cache_sb, %struct.cache_sb* %84, i32 0, i32 14
  store i32 %83, i32* %85, align 8
  %86 = load %struct.cache_sb*, %struct.cache_sb** %9, align 8
  %87 = getelementptr inbounds %struct.cache_sb, %struct.cache_sb* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 8
  %89 = call i8* @le16_to_cpu(i32 %88)
  %90 = ptrtoint i8* %89 to i32
  %91 = load %struct.cache_sb*, %struct.cache_sb** %5, align 8
  %92 = getelementptr inbounds %struct.cache_sb, %struct.cache_sb* %91, i32 0, i32 4
  store i32 %90, i32* %92, align 8
  %93 = load %struct.cache_sb*, %struct.cache_sb** %9, align 8
  %94 = getelementptr inbounds %struct.cache_sb, %struct.cache_sb* %93, i32 0, i32 5
  %95 = load i32, i32* %94, align 4
  %96 = call i8* @le16_to_cpu(i32 %95)
  %97 = ptrtoint i8* %96 to i32
  %98 = load %struct.cache_sb*, %struct.cache_sb** %5, align 8
  %99 = getelementptr inbounds %struct.cache_sb, %struct.cache_sb* %98, i32 0, i32 5
  store i32 %97, i32* %99, align 4
  store i32 0, i32* %11, align 4
  br label %100

100:                                              ; preds = %120, %18
  %101 = load i32, i32* %11, align 4
  %102 = load i32, i32* @SB_JOURNAL_BUCKETS, align 4
  %103 = icmp ult i32 %101, %102
  br i1 %103, label %104, label %123

104:                                              ; preds = %100
  %105 = load %struct.cache_sb*, %struct.cache_sb** %9, align 8
  %106 = getelementptr inbounds %struct.cache_sb, %struct.cache_sb* %105, i32 0, i32 6
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %11, align 4
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = call i8* @le64_to_cpu(i32 %111)
  %113 = ptrtoint i8* %112 to i32
  %114 = load %struct.cache_sb*, %struct.cache_sb** %5, align 8
  %115 = getelementptr inbounds %struct.cache_sb, %struct.cache_sb* %114, i32 0, i32 6
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* %11, align 4
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  store i32 %113, i32* %119, align 4
  br label %120

120:                                              ; preds = %104
  %121 = load i32, i32* %11, align 4
  %122 = add i32 %121, 1
  store i32 %122, i32* %11, align 4
  br label %100

123:                                              ; preds = %100
  %124 = load %struct.cache_sb*, %struct.cache_sb** %5, align 8
  %125 = getelementptr inbounds %struct.cache_sb, %struct.cache_sb* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.cache_sb*, %struct.cache_sb** %5, align 8
  %128 = getelementptr inbounds %struct.cache_sb, %struct.cache_sb* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.cache_sb*, %struct.cache_sb** %5, align 8
  %131 = getelementptr inbounds %struct.cache_sb, %struct.cache_sb* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.cache_sb*, %struct.cache_sb** %5, align 8
  %134 = getelementptr inbounds %struct.cache_sb, %struct.cache_sb* %133, i32 0, i32 5
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @pr_debug(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i32 %126, i32 %129, i32 %132, i32 %135)
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8** %8, align 8
  %137 = load %struct.cache_sb*, %struct.cache_sb** %5, align 8
  %138 = getelementptr inbounds %struct.cache_sb, %struct.cache_sb* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @SB_SECTOR, align 4
  %141 = icmp ne i32 %139, %140
  br i1 %141, label %142, label %143

142:                                              ; preds = %123
  br label %383

143:                                              ; preds = %123
  %144 = load %struct.cache_sb*, %struct.cache_sb** %5, align 8
  %145 = getelementptr inbounds %struct.cache_sb, %struct.cache_sb* %144, i32 0, i32 17
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @bcache_magic, align 4
  %148 = call i64 @memcmp(i32 %146, i32 %147, i32 16)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %143
  br label %383

151:                                              ; preds = %143
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8** %8, align 8
  %152 = load %struct.cache_sb*, %struct.cache_sb** %5, align 8
  %153 = getelementptr inbounds %struct.cache_sb, %struct.cache_sb* %152, i32 0, i32 5
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @SB_JOURNAL_BUCKETS, align 4
  %156 = icmp ugt i32 %154, %155
  br i1 %156, label %157, label %158

157:                                              ; preds = %151
  br label %383

158:                                              ; preds = %151
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8** %8, align 8
  %159 = load %struct.cache_sb*, %struct.cache_sb** %9, align 8
  %160 = getelementptr inbounds %struct.cache_sb, %struct.cache_sb* %159, i32 0, i32 7
  %161 = load i64, i64* %160, align 8
  %162 = load %struct.cache_sb*, %struct.cache_sb** %9, align 8
  %163 = call i64 @csum_set(%struct.cache_sb* %162)
  %164 = icmp ne i64 %161, %163
  br i1 %164, label %165, label %166

165:                                              ; preds = %158
  br label %383

166:                                              ; preds = %158
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8** %8, align 8
  %167 = load %struct.cache_sb*, %struct.cache_sb** %5, align 8
  %168 = getelementptr inbounds %struct.cache_sb, %struct.cache_sb* %167, i32 0, i32 16
  %169 = load i32, i32* %168, align 8
  %170 = call i64 @bch_is_zero(i32 %169, i32 16)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %166
  br label %383

173:                                              ; preds = %166
  %174 = load %struct.cache_sb*, %struct.cache_sb** %9, align 8
  %175 = getelementptr inbounds %struct.cache_sb, %struct.cache_sb* %174, i32 0, i32 8
  %176 = load i32, i32* %175, align 8
  %177 = call i8* @le16_to_cpu(i32 %176)
  %178 = ptrtoint i8* %177 to i32
  %179 = load %struct.cache_sb*, %struct.cache_sb** %5, align 8
  %180 = getelementptr inbounds %struct.cache_sb, %struct.cache_sb* %179, i32 0, i32 8
  store i32 %178, i32* %180, align 8
  store i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.6, i64 0, i64 0), i8** %8, align 8
  %181 = load %struct.cache_sb*, %struct.cache_sb** %5, align 8
  %182 = getelementptr inbounds %struct.cache_sb, %struct.cache_sb* %181, i32 0, i32 8
  %183 = load i32, i32* %182, align 8
  %184 = shl i32 %183, 9
  %185 = load %struct.block_device*, %struct.block_device** %6, align 8
  %186 = call i32 @bdev_logical_block_size(%struct.block_device* %185)
  %187 = icmp slt i32 %184, %186
  br i1 %187, label %188, label %189

188:                                              ; preds = %173
  br label %383

189:                                              ; preds = %173
  %190 = load %struct.cache_sb*, %struct.cache_sb** %5, align 8
  %191 = getelementptr inbounds %struct.cache_sb, %struct.cache_sb* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  switch i32 %192, label %369 [
    i32 131, label %193
    i32 130, label %197
    i32 129, label %212
    i32 128, label %212
  ]

193:                                              ; preds = %189
  %194 = load i32, i32* @BDEV_DATA_START_DEFAULT, align 4
  %195 = load %struct.cache_sb*, %struct.cache_sb** %5, align 8
  %196 = getelementptr inbounds %struct.cache_sb, %struct.cache_sb* %195, i32 0, i32 9
  store i32 %194, i32* %196, align 4
  br label %370

197:                                              ; preds = %189
  %198 = load %struct.cache_sb*, %struct.cache_sb** %9, align 8
  %199 = getelementptr inbounds %struct.cache_sb, %struct.cache_sb* %198, i32 0, i32 9
  %200 = load i32, i32* %199, align 4
  %201 = call i8* @le64_to_cpu(i32 %200)
  %202 = ptrtoint i8* %201 to i32
  %203 = load %struct.cache_sb*, %struct.cache_sb** %5, align 8
  %204 = getelementptr inbounds %struct.cache_sb, %struct.cache_sb* %203, i32 0, i32 9
  store i32 %202, i32* %204, align 4
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i8** %8, align 8
  %205 = load %struct.cache_sb*, %struct.cache_sb** %5, align 8
  %206 = getelementptr inbounds %struct.cache_sb, %struct.cache_sb* %205, i32 0, i32 9
  %207 = load i32, i32* %206, align 4
  %208 = load i32, i32* @BDEV_DATA_START_DEFAULT, align 4
  %209 = icmp slt i32 %207, %208
  br i1 %209, label %210, label %211

210:                                              ; preds = %197
  br label %383

211:                                              ; preds = %197
  br label %370

212:                                              ; preds = %189, %189
  %213 = load %struct.cache_sb*, %struct.cache_sb** %9, align 8
  %214 = getelementptr inbounds %struct.cache_sb, %struct.cache_sb* %213, i32 0, i32 10
  %215 = load i32, i32* %214, align 8
  %216 = call i8* @le64_to_cpu(i32 %215)
  %217 = ptrtoint i8* %216 to i32
  %218 = load %struct.cache_sb*, %struct.cache_sb** %5, align 8
  %219 = getelementptr inbounds %struct.cache_sb, %struct.cache_sb* %218, i32 0, i32 10
  store i32 %217, i32* %219, align 8
  %220 = load %struct.cache_sb*, %struct.cache_sb** %9, align 8
  %221 = getelementptr inbounds %struct.cache_sb, %struct.cache_sb* %220, i32 0, i32 11
  %222 = load i32, i32* %221, align 4
  %223 = call i8* @le16_to_cpu(i32 %222)
  %224 = ptrtoint i8* %223 to i32
  %225 = load %struct.cache_sb*, %struct.cache_sb** %5, align 8
  %226 = getelementptr inbounds %struct.cache_sb, %struct.cache_sb* %225, i32 0, i32 11
  store i32 %224, i32* %226, align 4
  %227 = load %struct.cache_sb*, %struct.cache_sb** %9, align 8
  %228 = getelementptr inbounds %struct.cache_sb, %struct.cache_sb* %227, i32 0, i32 12
  %229 = load i32, i32* %228, align 8
  %230 = call i8* @le16_to_cpu(i32 %229)
  %231 = ptrtoint i8* %230 to i32
  %232 = load %struct.cache_sb*, %struct.cache_sb** %5, align 8
  %233 = getelementptr inbounds %struct.cache_sb, %struct.cache_sb* %232, i32 0, i32 12
  store i32 %231, i32* %233, align 8
  %234 = load %struct.cache_sb*, %struct.cache_sb** %9, align 8
  %235 = getelementptr inbounds %struct.cache_sb, %struct.cache_sb* %234, i32 0, i32 13
  %236 = load i32, i32* %235, align 4
  %237 = call i8* @le16_to_cpu(i32 %236)
  %238 = ptrtoint i8* %237 to i32
  %239 = load %struct.cache_sb*, %struct.cache_sb** %5, align 8
  %240 = getelementptr inbounds %struct.cache_sb, %struct.cache_sb* %239, i32 0, i32 13
  store i32 %238, i32* %240, align 4
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i8** %8, align 8
  %241 = load %struct.cache_sb*, %struct.cache_sb** %5, align 8
  %242 = getelementptr inbounds %struct.cache_sb, %struct.cache_sb* %241, i32 0, i32 10
  %243 = load i32, i32* %242, align 8
  %244 = load i32, i32* @LONG_MAX, align 4
  %245 = icmp sgt i32 %243, %244
  br i1 %245, label %246, label %247

246:                                              ; preds = %212
  br label %383

247:                                              ; preds = %212
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i8** %8, align 8
  %248 = load %struct.cache_sb*, %struct.cache_sb** %5, align 8
  %249 = getelementptr inbounds %struct.cache_sb, %struct.cache_sb* %248, i32 0, i32 10
  %250 = load i32, i32* %249, align 8
  %251 = icmp slt i32 %250, 128
  br i1 %251, label %252, label %253

252:                                              ; preds = %247
  br label %383

253:                                              ; preds = %247
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0), i8** %8, align 8
  %254 = load %struct.cache_sb*, %struct.cache_sb** %5, align 8
  %255 = getelementptr inbounds %struct.cache_sb, %struct.cache_sb* %254, i32 0, i32 8
  %256 = load i32, i32* %255, align 8
  %257 = call i32 @is_power_of_2(i32 %256)
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %277

259:                                              ; preds = %253
  %260 = load %struct.cache_sb*, %struct.cache_sb** %5, align 8
  %261 = getelementptr inbounds %struct.cache_sb, %struct.cache_sb* %260, i32 0, i32 8
  %262 = load i32, i32* %261, align 8
  %263 = load i32, i32* @PAGE_SECTORS, align 4
  %264 = icmp sgt i32 %262, %263
  br i1 %264, label %277, label %265

265:                                              ; preds = %259
  %266 = load %struct.cache_sb*, %struct.cache_sb** %5, align 8
  %267 = getelementptr inbounds %struct.cache_sb, %struct.cache_sb* %266, i32 0, i32 11
  %268 = load i32, i32* %267, align 4
  %269 = call i32 @is_power_of_2(i32 %268)
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %277

271:                                              ; preds = %265
  %272 = load %struct.cache_sb*, %struct.cache_sb** %5, align 8
  %273 = getelementptr inbounds %struct.cache_sb, %struct.cache_sb* %272, i32 0, i32 11
  %274 = load i32, i32* %273, align 4
  %275 = load i32, i32* @PAGE_SECTORS, align 4
  %276 = icmp slt i32 %274, %275
  br i1 %276, label %277, label %278

277:                                              ; preds = %271, %265, %259, %253
  br label %383

278:                                              ; preds = %271
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.11, i64 0, i64 0), i8** %8, align 8
  %279 = load %struct.block_device*, %struct.block_device** %6, align 8
  %280 = getelementptr inbounds %struct.block_device, %struct.block_device* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 4
  %282 = call i32 @get_capacity(i32 %281)
  %283 = load %struct.cache_sb*, %struct.cache_sb** %5, align 8
  %284 = getelementptr inbounds %struct.cache_sb, %struct.cache_sb* %283, i32 0, i32 11
  %285 = load i32, i32* %284, align 4
  %286 = load %struct.cache_sb*, %struct.cache_sb** %5, align 8
  %287 = getelementptr inbounds %struct.cache_sb, %struct.cache_sb* %286, i32 0, i32 10
  %288 = load i32, i32* %287, align 8
  %289 = mul nsw i32 %285, %288
  %290 = icmp slt i32 %282, %289
  br i1 %290, label %291, label %292

291:                                              ; preds = %278
  br label %383

292:                                              ; preds = %278
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8** %8, align 8
  %293 = load %struct.cache_sb*, %struct.cache_sb** %5, align 8
  %294 = getelementptr inbounds %struct.cache_sb, %struct.cache_sb* %293, i32 0, i32 15
  %295 = load i32, i32* %294, align 4
  %296 = call i64 @bch_is_zero(i32 %295, i32 16)
  %297 = icmp ne i64 %296, 0
  br i1 %297, label %298, label %299

298:                                              ; preds = %292
  br label %383

299:                                              ; preds = %292
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i64 0, i64 0), i8** %8, align 8
  %300 = load %struct.cache_sb*, %struct.cache_sb** %5, align 8
  %301 = getelementptr inbounds %struct.cache_sb, %struct.cache_sb* %300, i32 0, i32 12
  %302 = load i32, i32* %301, align 8
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %318

304:                                              ; preds = %299
  %305 = load %struct.cache_sb*, %struct.cache_sb** %5, align 8
  %306 = getelementptr inbounds %struct.cache_sb, %struct.cache_sb* %305, i32 0, i32 12
  %307 = load i32, i32* %306, align 8
  %308 = load %struct.cache_sb*, %struct.cache_sb** %5, align 8
  %309 = getelementptr inbounds %struct.cache_sb, %struct.cache_sb* %308, i32 0, i32 13
  %310 = load i32, i32* %309, align 4
  %311 = icmp sle i32 %307, %310
  br i1 %311, label %318, label %312

312:                                              ; preds = %304
  %313 = load %struct.cache_sb*, %struct.cache_sb** %5, align 8
  %314 = getelementptr inbounds %struct.cache_sb, %struct.cache_sb* %313, i32 0, i32 12
  %315 = load i32, i32* %314, align 8
  %316 = load i32, i32* @MAX_CACHES_PER_SET, align 4
  %317 = icmp sgt i32 %315, %316
  br i1 %317, label %318, label %319

318:                                              ; preds = %312, %304, %299
  br label %383

319:                                              ; preds = %312
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i64 0, i64 0), i8** %8, align 8
  store i32 0, i32* %11, align 4
  br label %320

320:                                              ; preds = %342, %319
  %321 = load i32, i32* %11, align 4
  %322 = load %struct.cache_sb*, %struct.cache_sb** %5, align 8
  %323 = getelementptr inbounds %struct.cache_sb, %struct.cache_sb* %322, i32 0, i32 5
  %324 = load i32, i32* %323, align 4
  %325 = icmp ult i32 %321, %324
  br i1 %325, label %326, label %345

326:                                              ; preds = %320
  %327 = load %struct.cache_sb*, %struct.cache_sb** %5, align 8
  %328 = getelementptr inbounds %struct.cache_sb, %struct.cache_sb* %327, i32 0, i32 6
  %329 = load i32*, i32** %328, align 8
  %330 = load i32, i32* %11, align 4
  %331 = zext i32 %330 to i64
  %332 = getelementptr inbounds i32, i32* %329, i64 %331
  %333 = load i32, i32* %332, align 4
  %334 = load %struct.cache_sb*, %struct.cache_sb** %5, align 8
  %335 = getelementptr inbounds %struct.cache_sb, %struct.cache_sb* %334, i32 0, i32 4
  %336 = load i32, i32* %335, align 8
  %337 = load i32, i32* %11, align 4
  %338 = add i32 %336, %337
  %339 = icmp ne i32 %333, %338
  br i1 %339, label %340, label %341

340:                                              ; preds = %326
  br label %383

341:                                              ; preds = %326
  br label %342

342:                                              ; preds = %341
  %343 = load i32, i32* %11, align 4
  %344 = add i32 %343, 1
  store i32 %344, i32* %11, align 4
  br label %320

345:                                              ; preds = %320
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8** %8, align 8
  %346 = load %struct.cache_sb*, %struct.cache_sb** %5, align 8
  %347 = getelementptr inbounds %struct.cache_sb, %struct.cache_sb* %346, i32 0, i32 4
  %348 = load i32, i32* %347, align 8
  %349 = load %struct.cache_sb*, %struct.cache_sb** %5, align 8
  %350 = getelementptr inbounds %struct.cache_sb, %struct.cache_sb* %349, i32 0, i32 5
  %351 = load i32, i32* %350, align 4
  %352 = add nsw i32 %348, %351
  %353 = load %struct.cache_sb*, %struct.cache_sb** %5, align 8
  %354 = getelementptr inbounds %struct.cache_sb, %struct.cache_sb* %353, i32 0, i32 10
  %355 = load i32, i32* %354, align 8
  %356 = icmp sgt i32 %352, %355
  br i1 %356, label %357, label %358

357:                                              ; preds = %345
  br label %383

358:                                              ; preds = %345
  store i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.14, i64 0, i64 0), i8** %8, align 8
  %359 = load %struct.cache_sb*, %struct.cache_sb** %5, align 8
  %360 = getelementptr inbounds %struct.cache_sb, %struct.cache_sb* %359, i32 0, i32 4
  %361 = load i32, i32* %360, align 8
  %362 = load %struct.cache_sb*, %struct.cache_sb** %5, align 8
  %363 = getelementptr inbounds %struct.cache_sb, %struct.cache_sb* %362, i32 0, i32 11
  %364 = load i32, i32* %363, align 4
  %365 = mul nsw i32 %361, %364
  %366 = icmp slt i32 %365, 16
  br i1 %366, label %367, label %368

367:                                              ; preds = %358
  br label %383

368:                                              ; preds = %358
  br label %370

369:                                              ; preds = %189
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.15, i64 0, i64 0), i8** %8, align 8
  br label %383

370:                                              ; preds = %368, %211, %193
  %371 = call i64 (...) @ktime_get_real_seconds()
  %372 = trunc i64 %371 to i32
  %373 = load %struct.cache_sb*, %struct.cache_sb** %5, align 8
  %374 = getelementptr inbounds %struct.cache_sb, %struct.cache_sb* %373, i32 0, i32 14
  store i32 %372, i32* %374, align 8
  store i8* null, i8** %8, align 8
  %375 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %376 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %375, i32 0, i32 0
  %377 = load %struct.page*, %struct.page** %376, align 8
  %378 = call i32 @get_page(%struct.page* %377)
  %379 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %380 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %379, i32 0, i32 0
  %381 = load %struct.page*, %struct.page** %380, align 8
  %382 = load %struct.page**, %struct.page*** %7, align 8
  store %struct.page* %381, %struct.page** %382, align 8
  br label %383

383:                                              ; preds = %370, %369, %367, %357, %340, %318, %298, %291, %277, %252, %246, %210, %188, %172, %165, %157, %150, %142
  %384 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %385 = call i32 @put_bh(%struct.buffer_head* %384)
  %386 = load i8*, i8** %8, align 8
  store i8* %386, i8** %4, align 8
  br label %387

387:                                              ; preds = %383, %17
  %388 = load i8*, i8** %4, align 8
  ret i8* %388
}

declare dso_local %struct.buffer_head* @__bread(%struct.block_device*, i32, i32) #1

declare dso_local i8* @le64_to_cpu(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32, i32) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i64 @csum_set(%struct.cache_sb*) #1

declare dso_local i64 @bch_is_zero(i32, i32) #1

declare dso_local i32 @bdev_logical_block_size(%struct.block_device*) #1

declare dso_local i32 @is_power_of_2(i32) #1

declare dso_local i32 @get_capacity(i32) #1

declare dso_local i64 @ktime_get_real_seconds(...) #1

declare dso_local i32 @get_page(%struct.page*) #1

declare dso_local i32 @put_bh(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
