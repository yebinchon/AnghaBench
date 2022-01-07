; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid1.c_raid1_read_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid1.c_raid1_read_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i64, i32, %struct.bitmap*, %struct.r1conf* }
%struct.bitmap = type { i32, i32 }
%struct.r1conf = type { i32, %struct.raid1_info* }
%struct.raid1_info = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i64 }
%struct.bio = type { i64, %struct.TYPE_5__*, %struct.r1bio*, i32, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.r1bio = type { i64, i32, i64, i32, %struct.bio**, %struct.bio* }
%struct.md_rdev = type { i32 }

@REQ_SYNC = common dso_local global i64 0, align 8
@BDEVNAME_SIZE = common dso_local global i32 0, align 4
@GFP_NOIO = common dso_local global i32 0, align 4
@__GFP_HIGH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"???\00", align 1
@.str.1 = private unnamed_addr constant [62 x i8] c"md/raid1:%s: %s: unrecoverable I/O read error for block %llu\0A\00", align 1
@.str.2 = private unnamed_addr constant [58 x i8] c"md/raid1:%s: redirecting sector %llu to other mirror: %s\0A\00", align 1
@WriteMostly = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"wait behind writes\00", align 1
@raid1_end_read_request = common dso_local global i32 0, align 4
@FailFast = common dso_local global i32 0, align 4
@R1BIO_FailFast = common dso_local global i32 0, align 4
@MD_FAILFAST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mddev*, %struct.bio*, i32, %struct.r1bio*)* @raid1_read_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @raid1_read_request(%struct.mddev* %0, %struct.bio* %1, i32 %2, %struct.r1bio* %3) #0 {
  %5 = alloca %struct.mddev*, align 8
  %6 = alloca %struct.bio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.r1bio*, align 8
  %9 = alloca %struct.r1conf*, align 8
  %10 = alloca %struct.raid1_info*, align 8
  %11 = alloca %struct.bio*, align 8
  %12 = alloca %struct.bitmap*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.md_rdev*, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.bio*, align 8
  store %struct.mddev* %0, %struct.mddev** %5, align 8
  store %struct.bio* %1, %struct.bio** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.r1bio* %3, %struct.r1bio** %8, align 8
  %24 = load %struct.mddev*, %struct.mddev** %5, align 8
  %25 = getelementptr inbounds %struct.mddev, %struct.mddev* %24, i32 0, i32 3
  %26 = load %struct.r1conf*, %struct.r1conf** %25, align 8
  store %struct.r1conf* %26, %struct.r1conf** %9, align 8
  %27 = load %struct.mddev*, %struct.mddev** %5, align 8
  %28 = getelementptr inbounds %struct.mddev, %struct.mddev* %27, i32 0, i32 2
  %29 = load %struct.bitmap*, %struct.bitmap** %28, align 8
  store %struct.bitmap* %29, %struct.bitmap** %12, align 8
  %30 = load %struct.bio*, %struct.bio** %6, align 8
  %31 = call i32 @bio_op(%struct.bio* %30)
  store i32 %31, i32* %13, align 4
  %32 = load %struct.bio*, %struct.bio** %6, align 8
  %33 = getelementptr inbounds %struct.bio, %struct.bio* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @REQ_SYNC, align 8
  %36 = and i64 %34, %35
  store i64 %36, i64* %14, align 8
  %37 = load %struct.r1bio*, %struct.r1bio** %8, align 8
  %38 = icmp ne %struct.r1bio* %37, null
  %39 = xor i1 %38, true
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %17, align 4
  %42 = load i32, i32* @BDEVNAME_SIZE, align 4
  %43 = zext i32 %42 to i64
  %44 = call i8* @llvm.stacksave()
  store i8* %44, i8** %18, align 8
  %45 = alloca i8, i64 %43, align 16
  store i64 %43, i64* %19, align 8
  %46 = load %struct.r1bio*, %struct.r1bio** %8, align 8
  %47 = icmp ne %struct.r1bio* %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %4
  %49 = load i32, i32* @GFP_NOIO, align 4
  %50 = load i32, i32* @__GFP_HIGH, align 4
  %51 = or i32 %49, %50
  br label %54

52:                                               ; preds = %4
  %53 = load i32, i32* @GFP_NOIO, align 4
  br label %54

54:                                               ; preds = %52, %48
  %55 = phi i32 [ %51, %48 ], [ %53, %52 ]
  store i32 %55, i32* %20, align 4
  %56 = load i32, i32* %17, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %81

58:                                               ; preds = %54
  %59 = call i32 (...) @rcu_read_lock()
  %60 = load %struct.r1conf*, %struct.r1conf** %9, align 8
  %61 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %60, i32 0, i32 1
  %62 = load %struct.raid1_info*, %struct.raid1_info** %61, align 8
  %63 = load %struct.r1bio*, %struct.r1bio** %8, align 8
  %64 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds %struct.raid1_info, %struct.raid1_info* %62, i64 %65
  %67 = getelementptr inbounds %struct.raid1_info, %struct.raid1_info* %66, i32 0, i32 0
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = call %struct.md_rdev* @rcu_dereference(%struct.TYPE_6__* %68)
  store %struct.md_rdev* %69, %struct.md_rdev** %21, align 8
  %70 = load %struct.md_rdev*, %struct.md_rdev** %21, align 8
  %71 = icmp ne %struct.md_rdev* %70, null
  br i1 %71, label %72, label %77

72:                                               ; preds = %58
  %73 = load %struct.md_rdev*, %struct.md_rdev** %21, align 8
  %74 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @bdevname(i32 %75, i8* %45)
  br label %79

77:                                               ; preds = %58
  %78 = call i32 @strcpy(i8* %45, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  br label %79

79:                                               ; preds = %77, %72
  %80 = call i32 (...) @rcu_read_unlock()
  br label %81

81:                                               ; preds = %79, %54
  %82 = load %struct.r1conf*, %struct.r1conf** %9, align 8
  %83 = load %struct.bio*, %struct.bio** %6, align 8
  %84 = getelementptr inbounds %struct.bio, %struct.bio* %83, i32 0, i32 4
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @wait_read_barrier(%struct.r1conf* %82, i64 %86)
  %88 = load %struct.r1bio*, %struct.r1bio** %8, align 8
  %89 = icmp ne %struct.r1bio* %88, null
  br i1 %89, label %94, label %90

90:                                               ; preds = %81
  %91 = load %struct.mddev*, %struct.mddev** %5, align 8
  %92 = load %struct.bio*, %struct.bio** %6, align 8
  %93 = call %struct.r1bio* @alloc_r1bio(%struct.mddev* %91, %struct.bio* %92)
  store %struct.r1bio* %93, %struct.r1bio** %8, align 8
  br label %99

94:                                               ; preds = %81
  %95 = load %struct.r1bio*, %struct.r1bio** %8, align 8
  %96 = load %struct.mddev*, %struct.mddev** %5, align 8
  %97 = load %struct.bio*, %struct.bio** %6, align 8
  %98 = call i32 @init_r1bio(%struct.r1bio* %95, %struct.mddev* %96, %struct.bio* %97)
  br label %99

99:                                               ; preds = %94, %90
  %100 = load i32, i32* %7, align 4
  %101 = load %struct.r1bio*, %struct.r1bio** %8, align 8
  %102 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %101, i32 0, i32 1
  store i32 %100, i32* %102, align 8
  %103 = load %struct.r1conf*, %struct.r1conf** %9, align 8
  %104 = load %struct.r1bio*, %struct.r1bio** %8, align 8
  %105 = call i32 @read_balance(%struct.r1conf* %103, %struct.r1bio* %104, i32* %15)
  store i32 %105, i32* %16, align 4
  %106 = load i32, i32* %16, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %121

108:                                              ; preds = %99
  %109 = load i32, i32* %17, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %118

111:                                              ; preds = %108
  %112 = load %struct.mddev*, %struct.mddev** %5, align 8
  %113 = call i32 @mdname(%struct.mddev* %112)
  %114 = load %struct.r1bio*, %struct.r1bio** %8, align 8
  %115 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = call i32 @pr_crit_ratelimited(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i32 %113, i8* %45, i64 %116)
  br label %118

118:                                              ; preds = %111, %108
  %119 = load %struct.r1bio*, %struct.r1bio** %8, align 8
  %120 = call i32 @raid_end_bio_io(%struct.r1bio* %119)
  store i32 1, i32* %22, align 4
  br label %278

121:                                              ; preds = %99
  %122 = load %struct.r1conf*, %struct.r1conf** %9, align 8
  %123 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %122, i32 0, i32 1
  %124 = load %struct.raid1_info*, %struct.raid1_info** %123, align 8
  %125 = load i32, i32* %16, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.raid1_info, %struct.raid1_info* %124, i64 %126
  store %struct.raid1_info* %127, %struct.raid1_info** %10, align 8
  %128 = load i32, i32* %17, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %143

130:                                              ; preds = %121
  %131 = load %struct.mddev*, %struct.mddev** %5, align 8
  %132 = call i32 @mdname(%struct.mddev* %131)
  %133 = load %struct.r1bio*, %struct.r1bio** %8, align 8
  %134 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.raid1_info*, %struct.raid1_info** %10, align 8
  %137 = getelementptr inbounds %struct.raid1_info, %struct.raid1_info* %136, i32 0, i32 0
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @bdevname(i32 %140, i8* %45)
  %142 = call i32 @pr_info_ratelimited(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i32 %132, i64 %135, i32 %141)
  br label %143

143:                                              ; preds = %130, %121
  %144 = load i32, i32* @WriteMostly, align 4
  %145 = load %struct.raid1_info*, %struct.raid1_info** %10, align 8
  %146 = getelementptr inbounds %struct.raid1_info, %struct.raid1_info* %145, i32 0, i32 0
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 0
  %149 = call i64 @test_bit(i32 %144, i32* %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %166

151:                                              ; preds = %143
  %152 = load %struct.bitmap*, %struct.bitmap** %12, align 8
  %153 = icmp ne %struct.bitmap* %152, null
  br i1 %153, label %154, label %166

154:                                              ; preds = %151
  %155 = load %struct.mddev*, %struct.mddev** %5, align 8
  %156 = call i32 @raid1_log(%struct.mddev* %155, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %157 = load %struct.bitmap*, %struct.bitmap** %12, align 8
  %158 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.bitmap*, %struct.bitmap** %12, align 8
  %161 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %160, i32 0, i32 0
  %162 = call i64 @atomic_read(i32* %161)
  %163 = icmp eq i64 %162, 0
  %164 = zext i1 %163 to i32
  %165 = call i32 @wait_event(i32 %159, i32 %164)
  br label %166

166:                                              ; preds = %154, %151, %143
  %167 = load i32, i32* %15, align 4
  %168 = load %struct.bio*, %struct.bio** %6, align 8
  %169 = call i32 @bio_sectors(%struct.bio* %168)
  %170 = icmp slt i32 %167, %169
  br i1 %170, label %171, label %190

171:                                              ; preds = %166
  %172 = load %struct.bio*, %struct.bio** %6, align 8
  %173 = load i32, i32* %15, align 4
  %174 = load i32, i32* %20, align 4
  %175 = load %struct.r1conf*, %struct.r1conf** %9, align 8
  %176 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %175, i32 0, i32 0
  %177 = call %struct.bio* @bio_split(%struct.bio* %172, i32 %173, i32 %174, i32* %176)
  store %struct.bio* %177, %struct.bio** %23, align 8
  %178 = load %struct.bio*, %struct.bio** %23, align 8
  %179 = load %struct.bio*, %struct.bio** %6, align 8
  %180 = call i32 @bio_chain(%struct.bio* %178, %struct.bio* %179)
  %181 = load %struct.bio*, %struct.bio** %6, align 8
  %182 = call i32 @generic_make_request(%struct.bio* %181)
  %183 = load %struct.bio*, %struct.bio** %23, align 8
  store %struct.bio* %183, %struct.bio** %6, align 8
  %184 = load %struct.bio*, %struct.bio** %6, align 8
  %185 = load %struct.r1bio*, %struct.r1bio** %8, align 8
  %186 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %185, i32 0, i32 5
  store %struct.bio* %184, %struct.bio** %186, align 8
  %187 = load i32, i32* %15, align 4
  %188 = load %struct.r1bio*, %struct.r1bio** %8, align 8
  %189 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %188, i32 0, i32 1
  store i32 %187, i32* %189, align 8
  br label %190

190:                                              ; preds = %171, %166
  %191 = load i32, i32* %16, align 4
  %192 = sext i32 %191 to i64
  %193 = load %struct.r1bio*, %struct.r1bio** %8, align 8
  %194 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %193, i32 0, i32 0
  store i64 %192, i64* %194, align 8
  %195 = load %struct.bio*, %struct.bio** %6, align 8
  %196 = load i32, i32* %20, align 4
  %197 = load %struct.mddev*, %struct.mddev** %5, align 8
  %198 = getelementptr inbounds %struct.mddev, %struct.mddev* %197, i32 0, i32 1
  %199 = call %struct.bio* @bio_clone_fast(%struct.bio* %195, i32 %196, i32* %198)
  store %struct.bio* %199, %struct.bio** %11, align 8
  %200 = load %struct.bio*, %struct.bio** %11, align 8
  %201 = load %struct.r1bio*, %struct.r1bio** %8, align 8
  %202 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %201, i32 0, i32 4
  %203 = load %struct.bio**, %struct.bio*** %202, align 8
  %204 = load i32, i32* %16, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.bio*, %struct.bio** %203, i64 %205
  store %struct.bio* %200, %struct.bio** %206, align 8
  %207 = load %struct.r1bio*, %struct.r1bio** %8, align 8
  %208 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %207, i32 0, i32 2
  %209 = load i64, i64* %208, align 8
  %210 = load %struct.raid1_info*, %struct.raid1_info** %10, align 8
  %211 = getelementptr inbounds %struct.raid1_info, %struct.raid1_info* %210, i32 0, i32 0
  %212 = load %struct.TYPE_6__*, %struct.TYPE_6__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %212, i32 0, i32 2
  %214 = load i64, i64* %213, align 8
  %215 = add nsw i64 %209, %214
  %216 = load %struct.bio*, %struct.bio** %11, align 8
  %217 = getelementptr inbounds %struct.bio, %struct.bio* %216, i32 0, i32 4
  %218 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %217, i32 0, i32 0
  store i64 %215, i64* %218, align 8
  %219 = load %struct.bio*, %struct.bio** %11, align 8
  %220 = load %struct.raid1_info*, %struct.raid1_info** %10, align 8
  %221 = getelementptr inbounds %struct.raid1_info, %struct.raid1_info* %220, i32 0, i32 0
  %222 = load %struct.TYPE_6__*, %struct.TYPE_6__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = call i32 @bio_set_dev(%struct.bio* %219, i32 %224)
  %226 = load i32, i32* @raid1_end_read_request, align 4
  %227 = load %struct.bio*, %struct.bio** %11, align 8
  %228 = getelementptr inbounds %struct.bio, %struct.bio* %227, i32 0, i32 3
  store i32 %226, i32* %228, align 8
  %229 = load %struct.bio*, %struct.bio** %11, align 8
  %230 = load i32, i32* %13, align 4
  %231 = load i64, i64* %14, align 8
  %232 = call i32 @bio_set_op_attrs(%struct.bio* %229, i32 %230, i64 %231)
  %233 = load i32, i32* @FailFast, align 4
  %234 = load %struct.raid1_info*, %struct.raid1_info** %10, align 8
  %235 = getelementptr inbounds %struct.raid1_info, %struct.raid1_info* %234, i32 0, i32 0
  %236 = load %struct.TYPE_6__*, %struct.TYPE_6__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %236, i32 0, i32 0
  %238 = call i64 @test_bit(i32 %233, i32* %237)
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %252

240:                                              ; preds = %190
  %241 = load i32, i32* @R1BIO_FailFast, align 4
  %242 = load %struct.r1bio*, %struct.r1bio** %8, align 8
  %243 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %242, i32 0, i32 3
  %244 = call i64 @test_bit(i32 %241, i32* %243)
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %252

246:                                              ; preds = %240
  %247 = load i64, i64* @MD_FAILFAST, align 8
  %248 = load %struct.bio*, %struct.bio** %11, align 8
  %249 = getelementptr inbounds %struct.bio, %struct.bio* %248, i32 0, i32 0
  %250 = load i64, i64* %249, align 8
  %251 = or i64 %250, %247
  store i64 %251, i64* %249, align 8
  br label %252

252:                                              ; preds = %246, %240, %190
  %253 = load %struct.r1bio*, %struct.r1bio** %8, align 8
  %254 = load %struct.bio*, %struct.bio** %11, align 8
  %255 = getelementptr inbounds %struct.bio, %struct.bio* %254, i32 0, i32 2
  store %struct.r1bio* %253, %struct.r1bio** %255, align 8
  %256 = load %struct.mddev*, %struct.mddev** %5, align 8
  %257 = getelementptr inbounds %struct.mddev, %struct.mddev* %256, i32 0, i32 0
  %258 = load i64, i64* %257, align 8
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %275

260:                                              ; preds = %252
  %261 = load %struct.bio*, %struct.bio** %11, align 8
  %262 = getelementptr inbounds %struct.bio, %struct.bio* %261, i32 0, i32 1
  %263 = load %struct.TYPE_5__*, %struct.TYPE_5__** %262, align 8
  %264 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 4
  %266 = load %struct.bio*, %struct.bio** %11, align 8
  %267 = load %struct.mddev*, %struct.mddev** %5, align 8
  %268 = getelementptr inbounds %struct.mddev, %struct.mddev* %267, i32 0, i32 0
  %269 = load i64, i64* %268, align 8
  %270 = call i32 @disk_devt(i64 %269)
  %271 = load %struct.r1bio*, %struct.r1bio** %8, align 8
  %272 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %271, i32 0, i32 2
  %273 = load i64, i64* %272, align 8
  %274 = call i32 @trace_block_bio_remap(i32 %265, %struct.bio* %266, i32 %270, i64 %273)
  br label %275

275:                                              ; preds = %260, %252
  %276 = load %struct.bio*, %struct.bio** %11, align 8
  %277 = call i32 @generic_make_request(%struct.bio* %276)
  store i32 0, i32* %22, align 4
  br label %278

278:                                              ; preds = %275, %118
  %279 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %279)
  %280 = load i32, i32* %22, align 4
  switch i32 %280, label %282 [
    i32 0, label %281
    i32 1, label %281
  ]

281:                                              ; preds = %278, %278
  ret void

282:                                              ; preds = %278
  unreachable
}

declare dso_local i32 @bio_op(%struct.bio*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.md_rdev* @rcu_dereference(%struct.TYPE_6__*) #1

declare dso_local i32 @bdevname(i32, i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @wait_read_barrier(%struct.r1conf*, i64) #1

declare dso_local %struct.r1bio* @alloc_r1bio(%struct.mddev*, %struct.bio*) #1

declare dso_local i32 @init_r1bio(%struct.r1bio*, %struct.mddev*, %struct.bio*) #1

declare dso_local i32 @read_balance(%struct.r1conf*, %struct.r1bio*, i32*) #1

declare dso_local i32 @pr_crit_ratelimited(i8*, i32, i8*, i64) #1

declare dso_local i32 @mdname(%struct.mddev*) #1

declare dso_local i32 @raid_end_bio_io(%struct.r1bio*) #1

declare dso_local i32 @pr_info_ratelimited(i8*, i32, i64, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @raid1_log(%struct.mddev*, i8*) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @bio_sectors(%struct.bio*) #1

declare dso_local %struct.bio* @bio_split(%struct.bio*, i32, i32, i32*) #1

declare dso_local i32 @bio_chain(%struct.bio*, %struct.bio*) #1

declare dso_local i32 @generic_make_request(%struct.bio*) #1

declare dso_local %struct.bio* @bio_clone_fast(%struct.bio*, i32, i32*) #1

declare dso_local i32 @bio_set_dev(%struct.bio*, i32) #1

declare dso_local i32 @bio_set_op_attrs(%struct.bio*, i32, i64) #1

declare dso_local i32 @trace_block_bio_remap(i32, %struct.bio*, i32, i64) #1

declare dso_local i32 @disk_devt(i64) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
