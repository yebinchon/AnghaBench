; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid5.c_raid5_end_read_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid5.c_raid5_end_read_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i64, %struct.stripe_head* }
%struct.stripe_head = type { i32, i64, i32, i32, %struct.TYPE_7__*, i64, i32, %struct.r5conf* }
%struct.TYPE_7__ = type { i32, %struct.bio }
%struct.r5conf = type { i64, i64, %struct.TYPE_8__*, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_6__ = type { %struct.md_rdev*, %struct.md_rdev* }
%struct.md_rdev = type { i32, i32, i32, i32, i64, i64 }

@BDEVNAME_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"end_read_request %llu/%d, count: %d, error %d.\0A\00", align 1
@R5_ReadRepl = common dso_local global i32 0, align 4
@R5_UPTODATE = common dso_local global i32 0, align 4
@R5_ReadError = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [62 x i8] c"md/raid:%s: read error corrected (%lu sectors at %llu on %s)\0A\00", align 1
@STRIPE_SECTORS = common dso_local global i32 0, align 4
@R5_ReWrite = common dso_local global i32 0, align 4
@R5_ReadNoMerge = common dso_local global i32 0, align 4
@R5_InJournal = common dso_local global i32 0, align 4
@R5_OrigPageUPTDODATE = common dso_local global i32 0, align 4
@BLK_STS_PROTECTION = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [67 x i8] c"md/raid:%s: read error on replacement device (sector %llu on %s).\0A\00", align 1
@.str.3 = private unnamed_addr constant [61 x i8] c"md/raid:%s: read error not correctable (sector %llu on %s).\0A\00", align 1
@.str.4 = private unnamed_addr constant [61 x i8] c"md/raid:%s: read error NOT corrected!! (sector %llu on %s).\0A\00", align 1
@Faulty = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [41 x i8] c"md/raid:%s: %d read_errors > %d stripes\0A\00", align 1
@.str.6 = private unnamed_addr constant [54 x i8] c"md/raid:%s: Too many read errors, failing device %s.\0A\00", align 1
@In_sync = common dso_local global i32 0, align 4
@R5_LOCKED = common dso_local global i32 0, align 4
@STRIPE_HANDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*)* @raid5_end_read_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @raid5_end_read_request(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca %struct.stripe_head*, align 8
  %4 = alloca %struct.r5conf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.md_rdev*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.bio* %0, %struct.bio** %2, align 8
  %15 = load %struct.bio*, %struct.bio** %2, align 8
  %16 = getelementptr inbounds %struct.bio, %struct.bio* %15, i32 0, i32 1
  %17 = load %struct.stripe_head*, %struct.stripe_head** %16, align 8
  store %struct.stripe_head* %17, %struct.stripe_head** %3, align 8
  %18 = load %struct.stripe_head*, %struct.stripe_head** %3, align 8
  %19 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %18, i32 0, i32 7
  %20 = load %struct.r5conf*, %struct.r5conf** %19, align 8
  store %struct.r5conf* %20, %struct.r5conf** %4, align 8
  %21 = load %struct.stripe_head*, %struct.stripe_head** %3, align 8
  %22 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* @BDEVNAME_SIZE, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %7, align 8
  %27 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %8, align 8
  store %struct.md_rdev* null, %struct.md_rdev** %9, align 8
  store i32 0, i32* %6, align 4
  br label %28

28:                                               ; preds = %44, %1
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %47

32:                                               ; preds = %28
  %33 = load %struct.bio*, %struct.bio** %2, align 8
  %34 = load %struct.stripe_head*, %struct.stripe_head** %3, align 8
  %35 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %34, i32 0, i32 4
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  %41 = icmp eq %struct.bio* %33, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %32
  br label %47

43:                                               ; preds = %32
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %6, align 4
  br label %28

47:                                               ; preds = %42, %28
  %48 = load %struct.stripe_head*, %struct.stripe_head** %3, align 8
  %49 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %48, i32 0, i32 5
  %50 = load i64, i64* %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = load %struct.stripe_head*, %struct.stripe_head** %3, align 8
  %53 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %52, i32 0, i32 6
  %54 = call i64 @atomic_read(i32* %53)
  %55 = load %struct.bio*, %struct.bio** %2, align 8
  %56 = getelementptr inbounds %struct.bio, %struct.bio* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @pr_debug(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i64 %50, i32 %51, i64 %54, i64 %57)
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* %5, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %47
  %63 = load %struct.bio*, %struct.bio** %2, align 8
  %64 = call i32 @bio_reset(%struct.bio* %63)
  %65 = call i32 (...) @BUG()
  store i32 1, i32* %11, align 4
  br label %501

66:                                               ; preds = %47
  %67 = load i32, i32* @R5_ReadRepl, align 4
  %68 = load %struct.stripe_head*, %struct.stripe_head** %3, align 8
  %69 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %68, i32 0, i32 4
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %69, align 8
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = call i64 @test_bit(i32 %67, i32* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %66
  %78 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %79 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %78, i32 0, i32 3
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %79, align 8
  %81 = load i32, i32* %6, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 1
  %85 = load %struct.md_rdev*, %struct.md_rdev** %84, align 8
  store %struct.md_rdev* %85, %struct.md_rdev** %9, align 8
  br label %86

86:                                               ; preds = %77, %66
  %87 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %88 = icmp ne %struct.md_rdev* %87, null
  br i1 %88, label %98, label %89

89:                                               ; preds = %86
  %90 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %91 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %90, i32 0, i32 3
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %91, align 8
  %93 = load i32, i32* %6, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load %struct.md_rdev*, %struct.md_rdev** %96, align 8
  store %struct.md_rdev* %97, %struct.md_rdev** %9, align 8
  br label %98

98:                                               ; preds = %89, %86
  %99 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %100 = load %struct.stripe_head*, %struct.stripe_head** %3, align 8
  %101 = call i64 @use_new_offset(%struct.r5conf* %99, %struct.stripe_head* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %111

103:                                              ; preds = %98
  %104 = load %struct.stripe_head*, %struct.stripe_head** %3, align 8
  %105 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %104, i32 0, i32 5
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %108 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %107, i32 0, i32 5
  %109 = load i64, i64* %108, align 8
  %110 = add nsw i64 %106, %109
  store i64 %110, i64* %10, align 8
  br label %119

111:                                              ; preds = %98
  %112 = load %struct.stripe_head*, %struct.stripe_head** %3, align 8
  %113 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %112, i32 0, i32 5
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %116 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %115, i32 0, i32 4
  %117 = load i64, i64* %116, align 8
  %118 = add nsw i64 %114, %117
  store i64 %118, i64* %10, align 8
  br label %119

119:                                              ; preds = %111, %103
  %120 = load %struct.bio*, %struct.bio** %2, align 8
  %121 = getelementptr inbounds %struct.bio, %struct.bio* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %231, label %124

124:                                              ; preds = %119
  %125 = load i32, i32* @R5_UPTODATE, align 4
  %126 = load %struct.stripe_head*, %struct.stripe_head** %3, align 8
  %127 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %126, i32 0, i32 4
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %127, align 8
  %129 = load i32, i32* %6, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 0
  %133 = call i32 @set_bit(i32 %125, i32* %132)
  %134 = load i32, i32* @R5_ReadError, align 4
  %135 = load %struct.stripe_head*, %struct.stripe_head** %3, align 8
  %136 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %135, i32 0, i32 4
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %136, align 8
  %138 = load i32, i32* %6, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 0
  %142 = call i64 @test_bit(i32 %134, i32* %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %178

144:                                              ; preds = %124
  %145 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %146 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %145, i32 0, i32 2
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %146, align 8
  %148 = call i32 @mdname(%struct.TYPE_8__* %147)
  %149 = load i32, i32* @STRIPE_SECTORS, align 4
  %150 = load i64, i64* %10, align 8
  %151 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %152 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = call i8* @bdevname(i32 %153, i8* %27)
  %155 = call i32 @pr_info_ratelimited(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i32 %148, i32 %149, i64 %150, i8* %154)
  %156 = load i32, i32* @STRIPE_SECTORS, align 4
  %157 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %158 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %157, i32 0, i32 3
  %159 = call i32 @atomic_add(i32 %156, i32* %158)
  %160 = load i32, i32* @R5_ReadError, align 4
  %161 = load %struct.stripe_head*, %struct.stripe_head** %3, align 8
  %162 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %161, i32 0, i32 4
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %162, align 8
  %164 = load i32, i32* %6, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 0
  %168 = call i32 @clear_bit(i32 %160, i32* %167)
  %169 = load i32, i32* @R5_ReWrite, align 4
  %170 = load %struct.stripe_head*, %struct.stripe_head** %3, align 8
  %171 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %170, i32 0, i32 4
  %172 = load %struct.TYPE_7__*, %struct.TYPE_7__** %171, align 8
  %173 = load i32, i32* %6, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i32 0, i32 0
  %177 = call i32 @clear_bit(i32 %169, i32* %176)
  br label %200

178:                                              ; preds = %124
  %179 = load i32, i32* @R5_ReadNoMerge, align 4
  %180 = load %struct.stripe_head*, %struct.stripe_head** %3, align 8
  %181 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %180, i32 0, i32 4
  %182 = load %struct.TYPE_7__*, %struct.TYPE_7__** %181, align 8
  %183 = load i32, i32* %6, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i32 0, i32 0
  %187 = call i64 @test_bit(i32 %179, i32* %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %199

189:                                              ; preds = %178
  %190 = load i32, i32* @R5_ReadNoMerge, align 4
  %191 = load %struct.stripe_head*, %struct.stripe_head** %3, align 8
  %192 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %191, i32 0, i32 4
  %193 = load %struct.TYPE_7__*, %struct.TYPE_7__** %192, align 8
  %194 = load i32, i32* %6, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %193, i64 %195
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i32 0, i32 0
  %198 = call i32 @clear_bit(i32 %190, i32* %197)
  br label %199

199:                                              ; preds = %189, %178
  br label %200

200:                                              ; preds = %199, %144
  %201 = load i32, i32* @R5_InJournal, align 4
  %202 = load %struct.stripe_head*, %struct.stripe_head** %3, align 8
  %203 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %202, i32 0, i32 4
  %204 = load %struct.TYPE_7__*, %struct.TYPE_7__** %203, align 8
  %205 = load i32, i32* %6, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %204, i64 %206
  %208 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %207, i32 0, i32 0
  %209 = call i64 @test_bit(i32 %201, i32* %208)
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %221

211:                                              ; preds = %200
  %212 = load i32, i32* @R5_OrigPageUPTDODATE, align 4
  %213 = load %struct.stripe_head*, %struct.stripe_head** %3, align 8
  %214 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %213, i32 0, i32 4
  %215 = load %struct.TYPE_7__*, %struct.TYPE_7__** %214, align 8
  %216 = load i32, i32* %6, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %215, i64 %217
  %219 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %218, i32 0, i32 0
  %220 = call i32 @set_bit(i32 %212, i32* %219)
  br label %221

221:                                              ; preds = %211, %200
  %222 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %223 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %222, i32 0, i32 1
  %224 = call i64 @atomic_read(i32* %223)
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %230

226:                                              ; preds = %221
  %227 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %228 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %227, i32 0, i32 1
  %229 = call i32 @atomic_set(i32* %228, i32 0)
  br label %230

230:                                              ; preds = %226, %221
  br label %478

231:                                              ; preds = %119
  %232 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %233 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %232, i32 0, i32 2
  %234 = load i32, i32* %233, align 8
  %235 = call i8* @bdevname(i32 %234, i8* %27)
  store i8* %235, i8** %12, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %236 = load i32, i32* @R5_UPTODATE, align 4
  %237 = load %struct.stripe_head*, %struct.stripe_head** %3, align 8
  %238 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %237, i32 0, i32 4
  %239 = load %struct.TYPE_7__*, %struct.TYPE_7__** %238, align 8
  %240 = load i32, i32* %6, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %239, i64 %241
  %243 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %242, i32 0, i32 0
  %244 = call i32 @clear_bit(i32 %236, i32* %243)
  %245 = load %struct.bio*, %struct.bio** %2, align 8
  %246 = getelementptr inbounds %struct.bio, %struct.bio* %245, i32 0, i32 0
  %247 = load i64, i64* %246, align 8
  %248 = load i64, i64* @BLK_STS_PROTECTION, align 8
  %249 = icmp eq i64 %247, %248
  br i1 %249, label %254, label %250

250:                                              ; preds = %231
  %251 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %252 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %251, i32 0, i32 1
  %253 = call i32 @atomic_inc(i32* %252)
  br label %254

254:                                              ; preds = %250, %231
  %255 = load i32, i32* @R5_ReadRepl, align 4
  %256 = load %struct.stripe_head*, %struct.stripe_head** %3, align 8
  %257 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %256, i32 0, i32 4
  %258 = load %struct.TYPE_7__*, %struct.TYPE_7__** %257, align 8
  %259 = load i32, i32* %6, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %258, i64 %260
  %262 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %261, i32 0, i32 0
  %263 = call i64 @test_bit(i32 %255, i32* %262)
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %265, label %273

265:                                              ; preds = %254
  %266 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %267 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %266, i32 0, i32 2
  %268 = load %struct.TYPE_8__*, %struct.TYPE_8__** %267, align 8
  %269 = call i32 @mdname(%struct.TYPE_8__* %268)
  %270 = load i64, i64* %10, align 8
  %271 = load i8*, i8** %12, align 8
  %272 = call i32 @pr_warn_ratelimited(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i64 0, i64 0), i32 %269, i64 %270, i8* %271)
  br label %348

273:                                              ; preds = %254
  %274 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %275 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %274, i32 0, i32 2
  %276 = load %struct.TYPE_8__*, %struct.TYPE_8__** %275, align 8
  %277 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %276, i32 0, i32 0
  %278 = load i64, i64* %277, align 8
  %279 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %280 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %279, i32 0, i32 0
  %281 = load i64, i64* %280, align 8
  %282 = icmp sge i64 %278, %281
  br i1 %282, label %283, label %291

283:                                              ; preds = %273
  store i32 1, i32* %14, align 4
  %284 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %285 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %284, i32 0, i32 2
  %286 = load %struct.TYPE_8__*, %struct.TYPE_8__** %285, align 8
  %287 = call i32 @mdname(%struct.TYPE_8__* %286)
  %288 = load i64, i64* %10, align 8
  %289 = load i8*, i8** %12, align 8
  %290 = call i32 @pr_warn_ratelimited(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.3, i64 0, i64 0), i32 %287, i64 %288, i8* %289)
  br label %347

291:                                              ; preds = %273
  %292 = load i32, i32* @R5_ReWrite, align 4
  %293 = load %struct.stripe_head*, %struct.stripe_head** %3, align 8
  %294 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %293, i32 0, i32 4
  %295 = load %struct.TYPE_7__*, %struct.TYPE_7__** %294, align 8
  %296 = load i32, i32* %6, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %295, i64 %297
  %299 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %298, i32 0, i32 0
  %300 = call i64 @test_bit(i32 %292, i32* %299)
  %301 = icmp ne i64 %300, 0
  br i1 %301, label %302, label %310

302:                                              ; preds = %291
  store i32 1, i32* %14, align 4
  %303 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %304 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %303, i32 0, i32 2
  %305 = load %struct.TYPE_8__*, %struct.TYPE_8__** %304, align 8
  %306 = call i32 @mdname(%struct.TYPE_8__* %305)
  %307 = load i64, i64* %10, align 8
  %308 = load i8*, i8** %12, align 8
  %309 = call i32 @pr_warn_ratelimited(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i64 0, i64 0), i32 %306, i64 %307, i8* %308)
  br label %346

310:                                              ; preds = %291
  %311 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %312 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %311, i32 0, i32 1
  %313 = call i64 @atomic_read(i32* %312)
  %314 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %315 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %314, i32 0, i32 1
  %316 = load i64, i64* %315, align 8
  %317 = icmp sgt i64 %313, %316
  br i1 %317, label %318, label %344

318:                                              ; preds = %310
  %319 = load i32, i32* @Faulty, align 4
  %320 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %321 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %320, i32 0, i32 0
  %322 = call i64 @test_bit(i32 %319, i32* %321)
  %323 = icmp ne i64 %322, 0
  br i1 %323, label %343, label %324

324:                                              ; preds = %318
  %325 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %326 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %325, i32 0, i32 2
  %327 = load %struct.TYPE_8__*, %struct.TYPE_8__** %326, align 8
  %328 = call i32 @mdname(%struct.TYPE_8__* %327)
  %329 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %330 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %329, i32 0, i32 1
  %331 = call i64 @atomic_read(i32* %330)
  %332 = inttoptr i64 %331 to i8*
  %333 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %334 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %333, i32 0, i32 1
  %335 = load i64, i64* %334, align 8
  %336 = call i32 (i8*, i32, i8*, ...) @pr_warn(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i32 %328, i8* %332, i64 %335)
  %337 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %338 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %337, i32 0, i32 2
  %339 = load %struct.TYPE_8__*, %struct.TYPE_8__** %338, align 8
  %340 = call i32 @mdname(%struct.TYPE_8__* %339)
  %341 = load i8*, i8** %12, align 8
  %342 = call i32 (i8*, i32, i8*, ...) @pr_warn(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0), i32 %340, i8* %341)
  br label %343

343:                                              ; preds = %324, %318
  br label %345

344:                                              ; preds = %310
  store i32 1, i32* %13, align 4
  br label %345

345:                                              ; preds = %344, %343
  br label %346

346:                                              ; preds = %345, %302
  br label %347

347:                                              ; preds = %346, %283
  br label %348

348:                                              ; preds = %347, %265
  %349 = load i32, i32* %14, align 4
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %351, label %369

351:                                              ; preds = %348
  %352 = load i32, i32* @In_sync, align 4
  %353 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %354 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %353, i32 0, i32 0
  %355 = call i64 @test_bit(i32 %352, i32* %354)
  %356 = icmp ne i64 %355, 0
  br i1 %356, label %357, label %369

357:                                              ; preds = %351
  %358 = load i32, i32* @R5_ReadNoMerge, align 4
  %359 = load %struct.stripe_head*, %struct.stripe_head** %3, align 8
  %360 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %359, i32 0, i32 4
  %361 = load %struct.TYPE_7__*, %struct.TYPE_7__** %360, align 8
  %362 = load i32, i32* %6, align 4
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %361, i64 %363
  %365 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %364, i32 0, i32 0
  %366 = call i64 @test_bit(i32 %358, i32* %365)
  %367 = icmp ne i64 %366, 0
  br i1 %367, label %369, label %368

368:                                              ; preds = %357
  store i32 1, i32* %13, align 4
  br label %369

369:                                              ; preds = %368, %357, %351, %348
  %370 = load i32, i32* %13, align 4
  %371 = icmp ne i32 %370, 0
  br i1 %371, label %372, label %435

372:                                              ; preds = %369
  %373 = load %struct.stripe_head*, %struct.stripe_head** %3, align 8
  %374 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %373, i32 0, i32 1
  %375 = load i64, i64* %374, align 8
  %376 = icmp sge i64 %375, 0
  br i1 %376, label %377, label %393

377:                                              ; preds = %372
  %378 = load %struct.stripe_head*, %struct.stripe_head** %3, align 8
  %379 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %378, i32 0, i32 2
  %380 = load i32, i32* %379, align 8
  %381 = load i32, i32* %6, align 4
  %382 = icmp eq i32 %380, %381
  br i1 %382, label %383, label %393

383:                                              ; preds = %377
  %384 = load i32, i32* @R5_ReadError, align 4
  %385 = load %struct.stripe_head*, %struct.stripe_head** %3, align 8
  %386 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %385, i32 0, i32 4
  %387 = load %struct.TYPE_7__*, %struct.TYPE_7__** %386, align 8
  %388 = load i32, i32* %6, align 4
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %387, i64 %389
  %391 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %390, i32 0, i32 0
  %392 = call i32 @set_bit(i32 %384, i32* %391)
  br label %434

393:                                              ; preds = %377, %372
  %394 = load i32, i32* @R5_ReadNoMerge, align 4
  %395 = load %struct.stripe_head*, %struct.stripe_head** %3, align 8
  %396 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %395, i32 0, i32 4
  %397 = load %struct.TYPE_7__*, %struct.TYPE_7__** %396, align 8
  %398 = load i32, i32* %6, align 4
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %397, i64 %399
  %401 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %400, i32 0, i32 0
  %402 = call i64 @test_bit(i32 %394, i32* %401)
  %403 = icmp ne i64 %402, 0
  br i1 %403, label %404, label %423

404:                                              ; preds = %393
  %405 = load i32, i32* @R5_ReadError, align 4
  %406 = load %struct.stripe_head*, %struct.stripe_head** %3, align 8
  %407 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %406, i32 0, i32 4
  %408 = load %struct.TYPE_7__*, %struct.TYPE_7__** %407, align 8
  %409 = load i32, i32* %6, align 4
  %410 = sext i32 %409 to i64
  %411 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %408, i64 %410
  %412 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %411, i32 0, i32 0
  %413 = call i32 @set_bit(i32 %405, i32* %412)
  %414 = load i32, i32* @R5_ReadNoMerge, align 4
  %415 = load %struct.stripe_head*, %struct.stripe_head** %3, align 8
  %416 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %415, i32 0, i32 4
  %417 = load %struct.TYPE_7__*, %struct.TYPE_7__** %416, align 8
  %418 = load i32, i32* %6, align 4
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %417, i64 %419
  %421 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %420, i32 0, i32 0
  %422 = call i32 @clear_bit(i32 %414, i32* %421)
  br label %433

423:                                              ; preds = %393
  %424 = load i32, i32* @R5_ReadNoMerge, align 4
  %425 = load %struct.stripe_head*, %struct.stripe_head** %3, align 8
  %426 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %425, i32 0, i32 4
  %427 = load %struct.TYPE_7__*, %struct.TYPE_7__** %426, align 8
  %428 = load i32, i32* %6, align 4
  %429 = sext i32 %428 to i64
  %430 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %427, i64 %429
  %431 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %430, i32 0, i32 0
  %432 = call i32 @set_bit(i32 %424, i32* %431)
  br label %433

433:                                              ; preds = %423, %404
  br label %434

434:                                              ; preds = %433, %383
  br label %477

435:                                              ; preds = %369
  %436 = load i32, i32* @R5_ReadError, align 4
  %437 = load %struct.stripe_head*, %struct.stripe_head** %3, align 8
  %438 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %437, i32 0, i32 4
  %439 = load %struct.TYPE_7__*, %struct.TYPE_7__** %438, align 8
  %440 = load i32, i32* %6, align 4
  %441 = sext i32 %440 to i64
  %442 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %439, i64 %441
  %443 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %442, i32 0, i32 0
  %444 = call i32 @clear_bit(i32 %436, i32* %443)
  %445 = load i32, i32* @R5_ReWrite, align 4
  %446 = load %struct.stripe_head*, %struct.stripe_head** %3, align 8
  %447 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %446, i32 0, i32 4
  %448 = load %struct.TYPE_7__*, %struct.TYPE_7__** %447, align 8
  %449 = load i32, i32* %6, align 4
  %450 = sext i32 %449 to i64
  %451 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %448, i64 %450
  %452 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %451, i32 0, i32 0
  %453 = call i32 @clear_bit(i32 %445, i32* %452)
  %454 = load i32, i32* %14, align 4
  %455 = icmp ne i32 %454, 0
  br i1 %455, label %456, label %470

456:                                              ; preds = %435
  %457 = load i32, i32* @In_sync, align 4
  %458 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %459 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %458, i32 0, i32 0
  %460 = call i64 @test_bit(i32 %457, i32* %459)
  %461 = icmp ne i64 %460, 0
  br i1 %461, label %462, label %470

462:                                              ; preds = %456
  %463 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %464 = load %struct.stripe_head*, %struct.stripe_head** %3, align 8
  %465 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %464, i32 0, i32 5
  %466 = load i64, i64* %465, align 8
  %467 = load i32, i32* @STRIPE_SECTORS, align 4
  %468 = call i64 @rdev_set_badblocks(%struct.md_rdev* %463, i64 %466, i32 %467, i32 0)
  %469 = icmp ne i64 %468, 0
  br i1 %469, label %476, label %470

470:                                              ; preds = %462, %456, %435
  %471 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %472 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %471, i32 0, i32 2
  %473 = load %struct.TYPE_8__*, %struct.TYPE_8__** %472, align 8
  %474 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %475 = call i32 @md_error(%struct.TYPE_8__* %473, %struct.md_rdev* %474)
  br label %476

476:                                              ; preds = %470, %462
  br label %477

477:                                              ; preds = %476, %434
  br label %478

478:                                              ; preds = %477, %230
  %479 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %480 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %481 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %480, i32 0, i32 2
  %482 = load %struct.TYPE_8__*, %struct.TYPE_8__** %481, align 8
  %483 = call i32 @rdev_dec_pending(%struct.md_rdev* %479, %struct.TYPE_8__* %482)
  %484 = load %struct.bio*, %struct.bio** %2, align 8
  %485 = call i32 @bio_reset(%struct.bio* %484)
  %486 = load i32, i32* @R5_LOCKED, align 4
  %487 = load %struct.stripe_head*, %struct.stripe_head** %3, align 8
  %488 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %487, i32 0, i32 4
  %489 = load %struct.TYPE_7__*, %struct.TYPE_7__** %488, align 8
  %490 = load i32, i32* %6, align 4
  %491 = sext i32 %490 to i64
  %492 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %489, i64 %491
  %493 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %492, i32 0, i32 0
  %494 = call i32 @clear_bit(i32 %486, i32* %493)
  %495 = load i32, i32* @STRIPE_HANDLE, align 4
  %496 = load %struct.stripe_head*, %struct.stripe_head** %3, align 8
  %497 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %496, i32 0, i32 3
  %498 = call i32 @set_bit(i32 %495, i32* %497)
  %499 = load %struct.stripe_head*, %struct.stripe_head** %3, align 8
  %500 = call i32 @raid5_release_stripe(%struct.stripe_head* %499)
  store i32 0, i32* %11, align 4
  br label %501

501:                                              ; preds = %478, %62
  %502 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %502)
  %503 = load i32, i32* %11, align 4
  switch i32 %503, label %505 [
    i32 0, label %504
    i32 1, label %504
  ]

504:                                              ; preds = %501, %501
  ret void

505:                                              ; preds = %501
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @pr_debug(i8*, i64, i32, i64, i64) #2

declare dso_local i64 @atomic_read(i32*) #2

declare dso_local i32 @bio_reset(%struct.bio*) #2

declare dso_local i32 @BUG(...) #2

declare dso_local i64 @test_bit(i32, i32*) #2

declare dso_local i64 @use_new_offset(%struct.r5conf*, %struct.stripe_head*) #2

declare dso_local i32 @set_bit(i32, i32*) #2

declare dso_local i32 @pr_info_ratelimited(i8*, i32, i32, i64, i8*) #2

declare dso_local i32 @mdname(%struct.TYPE_8__*) #2

declare dso_local i8* @bdevname(i32, i8*) #2

declare dso_local i32 @atomic_add(i32, i32*) #2

declare dso_local i32 @clear_bit(i32, i32*) #2

declare dso_local i32 @atomic_set(i32*, i32) #2

declare dso_local i32 @atomic_inc(i32*) #2

declare dso_local i32 @pr_warn_ratelimited(i8*, i32, i64, i8*) #2

declare dso_local i32 @pr_warn(i8*, i32, i8*, ...) #2

declare dso_local i64 @rdev_set_badblocks(%struct.md_rdev*, i64, i32, i32) #2

declare dso_local i32 @md_error(%struct.TYPE_8__*, %struct.md_rdev*) #2

declare dso_local i32 @rdev_dec_pending(%struct.md_rdev*, %struct.TYPE_8__*) #2

declare dso_local i32 @raid5_release_stripe(%struct.stripe_head*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
