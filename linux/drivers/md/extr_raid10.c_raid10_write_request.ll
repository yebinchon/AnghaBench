; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid10.c_raid10_write_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid10.c_raid10_write_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 (%struct.mddev*, i32, i64, i32)* }
%struct.mddev = type { i64, i32, i32, i32, i32, i64, i32, %struct.r10conf* }
%struct.r10conf = type { i64, i64, i64, i32, i32, i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { %struct.md_rdev*, %struct.md_rdev* }
%struct.md_rdev = type { i32, i32, i32 }
%struct.bio = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.r10bio = type { i64, i32, %struct.TYPE_7__*, i32, i32, %struct.bio*, i32 }
%struct.TYPE_7__ = type { i32, i64, %struct.bio*, %struct.bio* }

@md_cluster_ops = common dso_local global %struct.TYPE_8__* null, align 8
@WRITE = common dso_local global i32 0, align 4
@w = common dso_local global i32 0, align 4
@TASK_IDLE = common dso_local global i32 0, align 4
@MD_RECOVERY_RESHAPE = common dso_local global i32 0, align 4
@MD_SB_CHANGE_DEVS = common dso_local global i32 0, align 4
@MD_SB_CHANGE_PENDING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"wait reshape metadata\00", align 1
@max_queued_requests = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"wait queued\00", align 1
@Blocked = common dso_local global i32 0, align 4
@Faulty = common dso_local global i32 0, align 4
@R10BIO_Degraded = common dso_local global i32 0, align 4
@WriteErrorSeen = common dso_local global i32 0, align 4
@BlockedBadBlocks = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"wait rdev %d blocked\00", align 1
@GFP_NOIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mddev*, %struct.bio*, %struct.r10bio*)* @raid10_write_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @raid10_write_request(%struct.mddev* %0, %struct.bio* %1, %struct.r10bio* %2) #0 {
  %4 = alloca %struct.mddev*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca %struct.r10bio*, align 8
  %7 = alloca %struct.r10conf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.md_rdev*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.md_rdev*, align 8
  %14 = alloca %struct.md_rdev*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.md_rdev*, align 8
  %23 = alloca %struct.bio*, align 8
  store %struct.mddev* %0, %struct.mddev** %4, align 8
  store %struct.bio* %1, %struct.bio** %5, align 8
  store %struct.r10bio* %2, %struct.r10bio** %6, align 8
  %24 = load %struct.mddev*, %struct.mddev** %4, align 8
  %25 = getelementptr inbounds %struct.mddev, %struct.mddev* %24, i32 0, i32 7
  %26 = load %struct.r10conf*, %struct.r10conf** %25, align 8
  store %struct.r10conf* %26, %struct.r10conf** %7, align 8
  %27 = load %struct.mddev*, %struct.mddev** %4, align 8
  %28 = call i64 @mddev_is_clustered(%struct.mddev* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %72

30:                                               ; preds = %3
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** @md_cluster_ops, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i64 (%struct.mddev*, i32, i64, i32)*, i64 (%struct.mddev*, i32, i64, i32)** %32, align 8
  %34 = load %struct.mddev*, %struct.mddev** %4, align 8
  %35 = load i32, i32* @WRITE, align 4
  %36 = load %struct.bio*, %struct.bio** %5, align 8
  %37 = getelementptr inbounds %struct.bio, %struct.bio* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.bio*, %struct.bio** %5, align 8
  %41 = call i32 @bio_end_sector(%struct.bio* %40)
  %42 = call i64 %33(%struct.mddev* %34, i32 %35, i64 %39, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %72

44:                                               ; preds = %30
  %45 = load i32, i32* @w, align 4
  %46 = call i32 @DEFINE_WAIT(i32 %45)
  br label %47

47:                                               ; preds = %66, %44
  %48 = load %struct.r10conf*, %struct.r10conf** %7, align 8
  %49 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %48, i32 0, i32 7
  %50 = load i32, i32* @TASK_IDLE, align 4
  %51 = call i32 @prepare_to_wait(i32* %49, i32* @w, i32 %50)
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** @md_cluster_ops, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i64 (%struct.mddev*, i32, i64, i32)*, i64 (%struct.mddev*, i32, i64, i32)** %53, align 8
  %55 = load %struct.mddev*, %struct.mddev** %4, align 8
  %56 = load i32, i32* @WRITE, align 4
  %57 = load %struct.bio*, %struct.bio** %5, align 8
  %58 = getelementptr inbounds %struct.bio, %struct.bio* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.bio*, %struct.bio** %5, align 8
  %62 = call i32 @bio_end_sector(%struct.bio* %61)
  %63 = call i64 %54(%struct.mddev* %55, i32 %56, i64 %60, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %47
  br label %68

66:                                               ; preds = %47
  %67 = call i32 (...) @schedule()
  br label %47

68:                                               ; preds = %65
  %69 = load %struct.r10conf*, %struct.r10conf** %7, align 8
  %70 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %69, i32 0, i32 7
  %71 = call i32 @finish_wait(i32* %70, i32* @w)
  br label %72

72:                                               ; preds = %68, %30, %3
  %73 = load %struct.r10bio*, %struct.r10bio** %6, align 8
  %74 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  store i64 %75, i64* %10, align 8
  %76 = load %struct.mddev*, %struct.mddev** %4, align 8
  %77 = load %struct.r10conf*, %struct.r10conf** %7, align 8
  %78 = load %struct.bio*, %struct.bio** %5, align 8
  %79 = load i64, i64* %10, align 8
  %80 = call i32 @regular_request_wait(%struct.mddev* %76, %struct.r10conf* %77, %struct.bio* %78, i64 %79)
  %81 = load i32, i32* @MD_RECOVERY_RESHAPE, align 4
  %82 = load %struct.mddev*, %struct.mddev** %4, align 8
  %83 = getelementptr inbounds %struct.mddev, %struct.mddev* %82, i32 0, i32 6
  %84 = call %struct.md_rdev* @test_bit(i32 %81, i32* %83)
  %85 = icmp ne %struct.md_rdev* %84, null
  br i1 %85, label %86, label %171

86:                                               ; preds = %72
  %87 = load %struct.mddev*, %struct.mddev** %4, align 8
  %88 = getelementptr inbounds %struct.mddev, %struct.mddev* %87, i32 0, i32 5
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %111

91:                                               ; preds = %86
  %92 = load %struct.bio*, %struct.bio** %5, align 8
  %93 = getelementptr inbounds %struct.bio, %struct.bio* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.r10conf*, %struct.r10conf** %7, align 8
  %97 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp slt i64 %95, %98
  br i1 %99, label %100, label %171

100:                                              ; preds = %91
  %101 = load %struct.bio*, %struct.bio** %5, align 8
  %102 = getelementptr inbounds %struct.bio, %struct.bio* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* %10, align 8
  %106 = add nsw i64 %104, %105
  %107 = load %struct.r10conf*, %struct.r10conf** %7, align 8
  %108 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = icmp sgt i64 %106, %109
  br i1 %110, label %131, label %171

111:                                              ; preds = %86
  %112 = load %struct.bio*, %struct.bio** %5, align 8
  %113 = getelementptr inbounds %struct.bio, %struct.bio* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* %10, align 8
  %117 = add nsw i64 %115, %116
  %118 = load %struct.r10conf*, %struct.r10conf** %7, align 8
  %119 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = icmp sgt i64 %117, %120
  br i1 %121, label %122, label %171

122:                                              ; preds = %111
  %123 = load %struct.bio*, %struct.bio** %5, align 8
  %124 = getelementptr inbounds %struct.bio, %struct.bio* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.r10conf*, %struct.r10conf** %7, align 8
  %128 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = icmp slt i64 %126, %129
  br i1 %130, label %131, label %171

131:                                              ; preds = %122, %100
  %132 = load %struct.r10conf*, %struct.r10conf** %7, align 8
  %133 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.mddev*, %struct.mddev** %4, align 8
  %136 = getelementptr inbounds %struct.mddev, %struct.mddev* %135, i32 0, i32 0
  store i64 %134, i64* %136, align 8
  %137 = load %struct.mddev*, %struct.mddev** %4, align 8
  %138 = getelementptr inbounds %struct.mddev, %struct.mddev* %137, i32 0, i32 3
  %139 = load i32, i32* @MD_SB_CHANGE_DEVS, align 4
  %140 = call i32 @BIT(i32 %139)
  %141 = load i32, i32* @MD_SB_CHANGE_PENDING, align 4
  %142 = call i32 @BIT(i32 %141)
  %143 = or i32 %140, %142
  %144 = call i32 @set_mask_bits(i32* %138, i32 0, i32 %143)
  %145 = load %struct.mddev*, %struct.mddev** %4, align 8
  %146 = getelementptr inbounds %struct.mddev, %struct.mddev* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @md_wakeup_thread(i32 %147)
  %149 = load %struct.r10conf*, %struct.r10conf** %7, align 8
  %150 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %149, i32 0, i32 5
  %151 = load i32, i32* %150, align 8
  %152 = sext i32 %151 to i64
  %153 = inttoptr i64 %152 to %struct.mddev*
  %154 = call i32 (%struct.mddev*, i8*, ...) @raid10_log(%struct.mddev* %153, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %155 = load %struct.mddev*, %struct.mddev** %4, align 8
  %156 = getelementptr inbounds %struct.mddev, %struct.mddev* %155, i32 0, i32 4
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @MD_SB_CHANGE_PENDING, align 4
  %159 = load %struct.mddev*, %struct.mddev** %4, align 8
  %160 = getelementptr inbounds %struct.mddev, %struct.mddev* %159, i32 0, i32 3
  %161 = call %struct.md_rdev* @test_bit(i32 %158, i32* %160)
  %162 = icmp ne %struct.md_rdev* %161, null
  %163 = xor i1 %162, true
  %164 = zext i1 %163 to i32
  %165 = call i32 @wait_event(i32 %157, i32 %164)
  %166 = load %struct.mddev*, %struct.mddev** %4, align 8
  %167 = getelementptr inbounds %struct.mddev, %struct.mddev* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = load %struct.r10conf*, %struct.r10conf** %7, align 8
  %170 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %169, i32 0, i32 0
  store i64 %168, i64* %170, align 8
  br label %171

171:                                              ; preds = %131, %122, %111, %100, %91, %72
  %172 = load %struct.r10conf*, %struct.r10conf** %7, align 8
  %173 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %172, i32 0, i32 2
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* @max_queued_requests, align 8
  %176 = icmp sge i64 %174, %175
  br i1 %176, label %177, label %194

177:                                              ; preds = %171
  %178 = load %struct.mddev*, %struct.mddev** %4, align 8
  %179 = getelementptr inbounds %struct.mddev, %struct.mddev* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @md_wakeup_thread(i32 %180)
  %182 = load %struct.mddev*, %struct.mddev** %4, align 8
  %183 = call i32 (%struct.mddev*, i8*, ...) @raid10_log(%struct.mddev* %182, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %184 = load %struct.r10conf*, %struct.r10conf** %7, align 8
  %185 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %184, i32 0, i32 7
  %186 = load i32, i32* %185, align 8
  %187 = load %struct.r10conf*, %struct.r10conf** %7, align 8
  %188 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %187, i32 0, i32 2
  %189 = load i64, i64* %188, align 8
  %190 = load i64, i64* @max_queued_requests, align 8
  %191 = icmp slt i64 %189, %190
  %192 = zext i1 %191 to i32
  %193 = call i32 @wait_event(i32 %186, i32 %192)
  br label %194

194:                                              ; preds = %177, %171
  %195 = load %struct.r10bio*, %struct.r10bio** %6, align 8
  %196 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %195, i32 0, i32 1
  store i32 -1, i32* %196, align 8
  %197 = load %struct.r10conf*, %struct.r10conf** %7, align 8
  %198 = load %struct.r10bio*, %struct.r10bio** %6, align 8
  %199 = call i32 @raid10_find_phys(%struct.r10conf* %197, %struct.r10bio* %198)
  br label %200

200:                                              ; preds = %507, %194
  store %struct.md_rdev* null, %struct.md_rdev** %9, align 8
  %201 = call i32 (...) @rcu_read_lock()
  %202 = load %struct.r10bio*, %struct.r10bio** %6, align 8
  %203 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = trunc i64 %204 to i32
  store i32 %205, i32* %11, align 4
  store i32 0, i32* %8, align 4
  br label %206

206:                                              ; preds = %418, %200
  %207 = load i32, i32* %8, align 4
  %208 = load %struct.r10conf*, %struct.r10conf** %7, align 8
  %209 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %208, i32 0, i32 3
  %210 = load i32, i32* %209, align 8
  %211 = icmp slt i32 %207, %210
  br i1 %211, label %212, label %421

212:                                              ; preds = %206
  %213 = load %struct.r10bio*, %struct.r10bio** %6, align 8
  %214 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %213, i32 0, i32 2
  %215 = load %struct.TYPE_7__*, %struct.TYPE_7__** %214, align 8
  %216 = load i32, i32* %8, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %215, i64 %217
  %219 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  store i32 %220, i32* %12, align 4
  %221 = load %struct.r10conf*, %struct.r10conf** %7, align 8
  %222 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %221, i32 0, i32 6
  %223 = load %struct.TYPE_5__*, %struct.TYPE_5__** %222, align 8
  %224 = load i32, i32* %12, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %223, i64 %225
  %227 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %226, i32 0, i32 0
  %228 = load %struct.md_rdev*, %struct.md_rdev** %227, align 8
  %229 = call %struct.md_rdev* @rcu_dereference(%struct.md_rdev* %228)
  store %struct.md_rdev* %229, %struct.md_rdev** %13, align 8
  %230 = load %struct.r10conf*, %struct.r10conf** %7, align 8
  %231 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %230, i32 0, i32 6
  %232 = load %struct.TYPE_5__*, %struct.TYPE_5__** %231, align 8
  %233 = load i32, i32* %12, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %232, i64 %234
  %236 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %235, i32 0, i32 1
  %237 = load %struct.md_rdev*, %struct.md_rdev** %236, align 8
  %238 = call %struct.md_rdev* @rcu_dereference(%struct.md_rdev* %237)
  store %struct.md_rdev* %238, %struct.md_rdev** %14, align 8
  %239 = load %struct.md_rdev*, %struct.md_rdev** %13, align 8
  %240 = load %struct.md_rdev*, %struct.md_rdev** %14, align 8
  %241 = icmp eq %struct.md_rdev* %239, %240
  br i1 %241, label %242, label %243

242:                                              ; preds = %212
  store %struct.md_rdev* null, %struct.md_rdev** %14, align 8
  br label %243

243:                                              ; preds = %242, %212
  %244 = load %struct.md_rdev*, %struct.md_rdev** %13, align 8
  %245 = icmp ne %struct.md_rdev* %244, null
  br i1 %245, label %246, label %258

246:                                              ; preds = %243
  %247 = load i32, i32* @Blocked, align 4
  %248 = load %struct.md_rdev*, %struct.md_rdev** %13, align 8
  %249 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %248, i32 0, i32 2
  %250 = call %struct.md_rdev* @test_bit(i32 %247, i32* %249)
  %251 = call i64 @unlikely(%struct.md_rdev* %250)
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %258

253:                                              ; preds = %246
  %254 = load %struct.md_rdev*, %struct.md_rdev** %13, align 8
  %255 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %254, i32 0, i32 1
  %256 = call i32 @atomic_inc(i32* %255)
  %257 = load %struct.md_rdev*, %struct.md_rdev** %13, align 8
  store %struct.md_rdev* %257, %struct.md_rdev** %9, align 8
  br label %421

258:                                              ; preds = %246, %243
  %259 = load %struct.md_rdev*, %struct.md_rdev** %14, align 8
  %260 = icmp ne %struct.md_rdev* %259, null
  br i1 %260, label %261, label %273

261:                                              ; preds = %258
  %262 = load i32, i32* @Blocked, align 4
  %263 = load %struct.md_rdev*, %struct.md_rdev** %14, align 8
  %264 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %263, i32 0, i32 2
  %265 = call %struct.md_rdev* @test_bit(i32 %262, i32* %264)
  %266 = call i64 @unlikely(%struct.md_rdev* %265)
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %268, label %273

268:                                              ; preds = %261
  %269 = load %struct.md_rdev*, %struct.md_rdev** %14, align 8
  %270 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %269, i32 0, i32 1
  %271 = call i32 @atomic_inc(i32* %270)
  %272 = load %struct.md_rdev*, %struct.md_rdev** %14, align 8
  store %struct.md_rdev* %272, %struct.md_rdev** %9, align 8
  br label %421

273:                                              ; preds = %261, %258
  %274 = load %struct.md_rdev*, %struct.md_rdev** %13, align 8
  %275 = icmp ne %struct.md_rdev* %274, null
  br i1 %275, label %276, label %283

276:                                              ; preds = %273
  %277 = load i32, i32* @Faulty, align 4
  %278 = load %struct.md_rdev*, %struct.md_rdev** %13, align 8
  %279 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %278, i32 0, i32 2
  %280 = call %struct.md_rdev* @test_bit(i32 %277, i32* %279)
  %281 = icmp ne %struct.md_rdev* %280, null
  br i1 %281, label %282, label %283

282:                                              ; preds = %276
  store %struct.md_rdev* null, %struct.md_rdev** %13, align 8
  br label %283

283:                                              ; preds = %282, %276, %273
  %284 = load %struct.md_rdev*, %struct.md_rdev** %14, align 8
  %285 = icmp ne %struct.md_rdev* %284, null
  br i1 %285, label %286, label %293

286:                                              ; preds = %283
  %287 = load i32, i32* @Faulty, align 4
  %288 = load %struct.md_rdev*, %struct.md_rdev** %14, align 8
  %289 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %288, i32 0, i32 2
  %290 = call %struct.md_rdev* @test_bit(i32 %287, i32* %289)
  %291 = icmp ne %struct.md_rdev* %290, null
  br i1 %291, label %292, label %293

292:                                              ; preds = %286
  store %struct.md_rdev* null, %struct.md_rdev** %14, align 8
  br label %293

293:                                              ; preds = %292, %286, %283
  %294 = load %struct.r10bio*, %struct.r10bio** %6, align 8
  %295 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %294, i32 0, i32 2
  %296 = load %struct.TYPE_7__*, %struct.TYPE_7__** %295, align 8
  %297 = load i32, i32* %8, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %296, i64 %298
  %300 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %299, i32 0, i32 3
  store %struct.bio* null, %struct.bio** %300, align 8
  %301 = load %struct.r10bio*, %struct.r10bio** %6, align 8
  %302 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %301, i32 0, i32 2
  %303 = load %struct.TYPE_7__*, %struct.TYPE_7__** %302, align 8
  %304 = load i32, i32* %8, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %303, i64 %305
  %307 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %306, i32 0, i32 2
  store %struct.bio* null, %struct.bio** %307, align 8
  %308 = load %struct.md_rdev*, %struct.md_rdev** %13, align 8
  %309 = icmp ne %struct.md_rdev* %308, null
  br i1 %309, label %318, label %310

310:                                              ; preds = %293
  %311 = load %struct.md_rdev*, %struct.md_rdev** %14, align 8
  %312 = icmp ne %struct.md_rdev* %311, null
  br i1 %312, label %318, label %313

313:                                              ; preds = %310
  %314 = load i32, i32* @R10BIO_Degraded, align 4
  %315 = load %struct.r10bio*, %struct.r10bio** %6, align 8
  %316 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %315, i32 0, i32 6
  %317 = call i32 @set_bit(i32 %314, i32* %316)
  br label %418

318:                                              ; preds = %310, %293
  %319 = load %struct.md_rdev*, %struct.md_rdev** %13, align 8
  %320 = icmp ne %struct.md_rdev* %319, null
  br i1 %320, label %321, label %387

321:                                              ; preds = %318
  %322 = load i32, i32* @WriteErrorSeen, align 4
  %323 = load %struct.md_rdev*, %struct.md_rdev** %13, align 8
  %324 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %323, i32 0, i32 2
  %325 = call %struct.md_rdev* @test_bit(i32 %322, i32* %324)
  %326 = icmp ne %struct.md_rdev* %325, null
  br i1 %326, label %327, label %387

327:                                              ; preds = %321
  %328 = load %struct.r10bio*, %struct.r10bio** %6, align 8
  %329 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %328, i32 0, i32 2
  %330 = load %struct.TYPE_7__*, %struct.TYPE_7__** %329, align 8
  %331 = load i32, i32* %8, align 4
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %330, i64 %332
  %334 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %333, i32 0, i32 1
  %335 = load i64, i64* %334, align 8
  store i64 %335, i64* %16, align 8
  %336 = load %struct.md_rdev*, %struct.md_rdev** %13, align 8
  %337 = load i64, i64* %16, align 8
  %338 = load i32, i32* %11, align 4
  %339 = call i32 @is_badblock(%struct.md_rdev* %336, i64 %337, i32 %338, i64* %15, i32* %17)
  store i32 %339, i32* %18, align 4
  %340 = load i32, i32* %18, align 4
  %341 = icmp slt i32 %340, 0
  br i1 %341, label %342, label %351

342:                                              ; preds = %327
  %343 = load %struct.md_rdev*, %struct.md_rdev** %13, align 8
  %344 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %343, i32 0, i32 1
  %345 = call i32 @atomic_inc(i32* %344)
  %346 = load i32, i32* @BlockedBadBlocks, align 4
  %347 = load %struct.md_rdev*, %struct.md_rdev** %13, align 8
  %348 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %347, i32 0, i32 2
  %349 = call i32 @set_bit(i32 %346, i32* %348)
  %350 = load %struct.md_rdev*, %struct.md_rdev** %13, align 8
  store %struct.md_rdev* %350, %struct.md_rdev** %9, align 8
  br label %421

351:                                              ; preds = %327
  %352 = load i32, i32* %18, align 4
  %353 = icmp ne i32 %352, 0
  br i1 %353, label %354, label %372

354:                                              ; preds = %351
  %355 = load i64, i64* %15, align 8
  %356 = load i64, i64* %16, align 8
  %357 = icmp sle i64 %355, %356
  br i1 %357, label %358, label %372

358:                                              ; preds = %354
  %359 = load i64, i64* %16, align 8
  %360 = load i64, i64* %15, align 8
  %361 = sub nsw i64 %359, %360
  %362 = load i32, i32* %17, align 4
  %363 = sext i32 %362 to i64
  %364 = sub nsw i64 %363, %361
  %365 = trunc i64 %364 to i32
  store i32 %365, i32* %17, align 4
  %366 = load i32, i32* %17, align 4
  %367 = load i32, i32* %11, align 4
  %368 = icmp slt i32 %366, %367
  br i1 %368, label %369, label %371

369:                                              ; preds = %358
  %370 = load i32, i32* %17, align 4
  store i32 %370, i32* %11, align 4
  br label %371

371:                                              ; preds = %369, %358
  br label %418

372:                                              ; preds = %354, %351
  %373 = load i32, i32* %18, align 4
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %375, label %386

375:                                              ; preds = %372
  %376 = load i64, i64* %15, align 8
  %377 = load i64, i64* %16, align 8
  %378 = sub nsw i64 %376, %377
  %379 = trunc i64 %378 to i32
  store i32 %379, i32* %19, align 4
  %380 = load i32, i32* %19, align 4
  %381 = load i32, i32* %11, align 4
  %382 = icmp slt i32 %380, %381
  br i1 %382, label %383, label %385

383:                                              ; preds = %375
  %384 = load i32, i32* %19, align 4
  store i32 %384, i32* %11, align 4
  br label %385

385:                                              ; preds = %383, %375
  br label %386

386:                                              ; preds = %385, %372
  br label %387

387:                                              ; preds = %386, %321, %318
  %388 = load %struct.md_rdev*, %struct.md_rdev** %13, align 8
  %389 = icmp ne %struct.md_rdev* %388, null
  br i1 %389, label %390, label %402

390:                                              ; preds = %387
  %391 = load %struct.bio*, %struct.bio** %5, align 8
  %392 = load %struct.r10bio*, %struct.r10bio** %6, align 8
  %393 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %392, i32 0, i32 2
  %394 = load %struct.TYPE_7__*, %struct.TYPE_7__** %393, align 8
  %395 = load i32, i32* %8, align 4
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %394, i64 %396
  %398 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %397, i32 0, i32 3
  store %struct.bio* %391, %struct.bio** %398, align 8
  %399 = load %struct.md_rdev*, %struct.md_rdev** %13, align 8
  %400 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %399, i32 0, i32 1
  %401 = call i32 @atomic_inc(i32* %400)
  br label %402

402:                                              ; preds = %390, %387
  %403 = load %struct.md_rdev*, %struct.md_rdev** %14, align 8
  %404 = icmp ne %struct.md_rdev* %403, null
  br i1 %404, label %405, label %417

405:                                              ; preds = %402
  %406 = load %struct.bio*, %struct.bio** %5, align 8
  %407 = load %struct.r10bio*, %struct.r10bio** %6, align 8
  %408 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %407, i32 0, i32 2
  %409 = load %struct.TYPE_7__*, %struct.TYPE_7__** %408, align 8
  %410 = load i32, i32* %8, align 4
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %409, i64 %411
  %413 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %412, i32 0, i32 2
  store %struct.bio* %406, %struct.bio** %413, align 8
  %414 = load %struct.md_rdev*, %struct.md_rdev** %14, align 8
  %415 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %414, i32 0, i32 1
  %416 = call i32 @atomic_inc(i32* %415)
  br label %417

417:                                              ; preds = %405, %402
  br label %418

418:                                              ; preds = %417, %371, %313
  %419 = load i32, i32* %8, align 4
  %420 = add nsw i32 %419, 1
  store i32 %420, i32* %8, align 4
  br label %206

421:                                              ; preds = %342, %268, %253, %206
  %422 = call i32 (...) @rcu_read_unlock()
  %423 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %424 = call i64 @unlikely(%struct.md_rdev* %423)
  %425 = icmp ne i64 %424, 0
  br i1 %425, label %426, label %524

426:                                              ; preds = %421
  store i32 0, i32* %20, align 4
  br label %427

427:                                              ; preds = %504, %426
  %428 = load i32, i32* %20, align 4
  %429 = load i32, i32* %8, align 4
  %430 = icmp slt i32 %428, %429
  br i1 %430, label %431, label %507

431:                                              ; preds = %427
  %432 = load %struct.r10bio*, %struct.r10bio** %6, align 8
  %433 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %432, i32 0, i32 2
  %434 = load %struct.TYPE_7__*, %struct.TYPE_7__** %433, align 8
  %435 = load i32, i32* %20, align 4
  %436 = sext i32 %435 to i64
  %437 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %434, i64 %436
  %438 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %437, i32 0, i32 3
  %439 = load %struct.bio*, %struct.bio** %438, align 8
  %440 = icmp ne %struct.bio* %439, null
  br i1 %440, label %441, label %460

441:                                              ; preds = %431
  %442 = load %struct.r10bio*, %struct.r10bio** %6, align 8
  %443 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %442, i32 0, i32 2
  %444 = load %struct.TYPE_7__*, %struct.TYPE_7__** %443, align 8
  %445 = load i32, i32* %20, align 4
  %446 = sext i32 %445 to i64
  %447 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %444, i64 %446
  %448 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %447, i32 0, i32 0
  %449 = load i32, i32* %448, align 8
  store i32 %449, i32* %21, align 4
  %450 = load %struct.r10conf*, %struct.r10conf** %7, align 8
  %451 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %450, i32 0, i32 6
  %452 = load %struct.TYPE_5__*, %struct.TYPE_5__** %451, align 8
  %453 = load i32, i32* %21, align 4
  %454 = sext i32 %453 to i64
  %455 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %452, i64 %454
  %456 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %455, i32 0, i32 0
  %457 = load %struct.md_rdev*, %struct.md_rdev** %456, align 8
  %458 = load %struct.mddev*, %struct.mddev** %4, align 8
  %459 = call i32 @rdev_dec_pending(%struct.md_rdev* %457, %struct.mddev* %458)
  br label %460

460:                                              ; preds = %441, %431
  %461 = load %struct.r10bio*, %struct.r10bio** %6, align 8
  %462 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %461, i32 0, i32 2
  %463 = load %struct.TYPE_7__*, %struct.TYPE_7__** %462, align 8
  %464 = load i32, i32* %20, align 4
  %465 = sext i32 %464 to i64
  %466 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %463, i64 %465
  %467 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %466, i32 0, i32 2
  %468 = load %struct.bio*, %struct.bio** %467, align 8
  %469 = icmp ne %struct.bio* %468, null
  br i1 %469, label %470, label %503

470:                                              ; preds = %460
  %471 = load %struct.r10bio*, %struct.r10bio** %6, align 8
  %472 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %471, i32 0, i32 2
  %473 = load %struct.TYPE_7__*, %struct.TYPE_7__** %472, align 8
  %474 = load i32, i32* %20, align 4
  %475 = sext i32 %474 to i64
  %476 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %473, i64 %475
  %477 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %476, i32 0, i32 0
  %478 = load i32, i32* %477, align 8
  store i32 %478, i32* %21, align 4
  %479 = load %struct.r10conf*, %struct.r10conf** %7, align 8
  %480 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %479, i32 0, i32 6
  %481 = load %struct.TYPE_5__*, %struct.TYPE_5__** %480, align 8
  %482 = load i32, i32* %21, align 4
  %483 = sext i32 %482 to i64
  %484 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %481, i64 %483
  %485 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %484, i32 0, i32 1
  %486 = load %struct.md_rdev*, %struct.md_rdev** %485, align 8
  store %struct.md_rdev* %486, %struct.md_rdev** %22, align 8
  %487 = load %struct.md_rdev*, %struct.md_rdev** %22, align 8
  %488 = icmp ne %struct.md_rdev* %487, null
  br i1 %488, label %499, label %489

489:                                              ; preds = %470
  %490 = call i32 (...) @smp_mb()
  %491 = load %struct.r10conf*, %struct.r10conf** %7, align 8
  %492 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %491, i32 0, i32 6
  %493 = load %struct.TYPE_5__*, %struct.TYPE_5__** %492, align 8
  %494 = load i32, i32* %21, align 4
  %495 = sext i32 %494 to i64
  %496 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %493, i64 %495
  %497 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %496, i32 0, i32 0
  %498 = load %struct.md_rdev*, %struct.md_rdev** %497, align 8
  store %struct.md_rdev* %498, %struct.md_rdev** %22, align 8
  br label %499

499:                                              ; preds = %489, %470
  %500 = load %struct.md_rdev*, %struct.md_rdev** %22, align 8
  %501 = load %struct.mddev*, %struct.mddev** %4, align 8
  %502 = call i32 @rdev_dec_pending(%struct.md_rdev* %500, %struct.mddev* %501)
  br label %503

503:                                              ; preds = %499, %460
  br label %504

504:                                              ; preds = %503
  %505 = load i32, i32* %20, align 4
  %506 = add nsw i32 %505, 1
  store i32 %506, i32* %20, align 4
  br label %427

507:                                              ; preds = %427
  %508 = load %struct.r10conf*, %struct.r10conf** %7, align 8
  %509 = call i32 @allow_barrier(%struct.r10conf* %508)
  %510 = load %struct.r10conf*, %struct.r10conf** %7, align 8
  %511 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %510, i32 0, i32 5
  %512 = load i32, i32* %511, align 8
  %513 = sext i32 %512 to i64
  %514 = inttoptr i64 %513 to %struct.mddev*
  %515 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %516 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %515, i32 0, i32 0
  %517 = load i32, i32* %516, align 4
  %518 = call i32 (%struct.mddev*, i8*, ...) @raid10_log(%struct.mddev* %514, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %517)
  %519 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %520 = load %struct.mddev*, %struct.mddev** %4, align 8
  %521 = call i32 @md_wait_for_blocked_rdev(%struct.md_rdev* %519, %struct.mddev* %520)
  %522 = load %struct.r10conf*, %struct.r10conf** %7, align 8
  %523 = call i32 @wait_barrier(%struct.r10conf* %522)
  br label %200

524:                                              ; preds = %421
  %525 = load i32, i32* %11, align 4
  %526 = sext i32 %525 to i64
  %527 = load %struct.r10bio*, %struct.r10bio** %6, align 8
  %528 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %527, i32 0, i32 0
  %529 = load i64, i64* %528, align 8
  %530 = icmp slt i64 %526, %529
  br i1 %530, label %531, label %536

531:                                              ; preds = %524
  %532 = load i32, i32* %11, align 4
  %533 = sext i32 %532 to i64
  %534 = load %struct.r10bio*, %struct.r10bio** %6, align 8
  %535 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %534, i32 0, i32 0
  store i64 %533, i64* %535, align 8
  br label %536

536:                                              ; preds = %531, %524
  %537 = load %struct.r10bio*, %struct.r10bio** %6, align 8
  %538 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %537, i32 0, i32 0
  %539 = load i64, i64* %538, align 8
  %540 = load %struct.bio*, %struct.bio** %5, align 8
  %541 = call i32 @bio_sectors(%struct.bio* %540)
  %542 = sext i32 %541 to i64
  %543 = icmp slt i64 %539, %542
  br i1 %543, label %544, label %567

544:                                              ; preds = %536
  %545 = load %struct.bio*, %struct.bio** %5, align 8
  %546 = load %struct.r10bio*, %struct.r10bio** %6, align 8
  %547 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %546, i32 0, i32 0
  %548 = load i64, i64* %547, align 8
  %549 = trunc i64 %548 to i32
  %550 = load i32, i32* @GFP_NOIO, align 4
  %551 = load %struct.r10conf*, %struct.r10conf** %7, align 8
  %552 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %551, i32 0, i32 4
  %553 = call %struct.bio* @bio_split(%struct.bio* %545, i32 %549, i32 %550, i32* %552)
  store %struct.bio* %553, %struct.bio** %23, align 8
  %554 = load %struct.bio*, %struct.bio** %23, align 8
  %555 = load %struct.bio*, %struct.bio** %5, align 8
  %556 = call i32 @bio_chain(%struct.bio* %554, %struct.bio* %555)
  %557 = load %struct.r10conf*, %struct.r10conf** %7, align 8
  %558 = call i32 @allow_barrier(%struct.r10conf* %557)
  %559 = load %struct.bio*, %struct.bio** %5, align 8
  %560 = call i32 @generic_make_request(%struct.bio* %559)
  %561 = load %struct.r10conf*, %struct.r10conf** %7, align 8
  %562 = call i32 @wait_barrier(%struct.r10conf* %561)
  %563 = load %struct.bio*, %struct.bio** %23, align 8
  store %struct.bio* %563, %struct.bio** %5, align 8
  %564 = load %struct.bio*, %struct.bio** %5, align 8
  %565 = load %struct.r10bio*, %struct.r10bio** %6, align 8
  %566 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %565, i32 0, i32 5
  store %struct.bio* %564, %struct.bio** %566, align 8
  br label %567

567:                                              ; preds = %544, %536
  %568 = load %struct.r10bio*, %struct.r10bio** %6, align 8
  %569 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %568, i32 0, i32 4
  %570 = call i32 @atomic_set(i32* %569, i32 1)
  %571 = load %struct.mddev*, %struct.mddev** %4, align 8
  %572 = getelementptr inbounds %struct.mddev, %struct.mddev* %571, i32 0, i32 1
  %573 = load i32, i32* %572, align 8
  %574 = load %struct.r10bio*, %struct.r10bio** %6, align 8
  %575 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %574, i32 0, i32 3
  %576 = load i32, i32* %575, align 8
  %577 = load %struct.r10bio*, %struct.r10bio** %6, align 8
  %578 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %577, i32 0, i32 0
  %579 = load i64, i64* %578, align 8
  %580 = trunc i64 %579 to i32
  %581 = call i32 @md_bitmap_startwrite(i32 %573, i32 %576, i32 %580, i32 0)
  store i32 0, i32* %8, align 4
  br label %582

582:                                              ; preds = %621, %567
  %583 = load i32, i32* %8, align 4
  %584 = load %struct.r10conf*, %struct.r10conf** %7, align 8
  %585 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %584, i32 0, i32 3
  %586 = load i32, i32* %585, align 8
  %587 = icmp slt i32 %583, %586
  br i1 %587, label %588, label %624

588:                                              ; preds = %582
  %589 = load %struct.r10bio*, %struct.r10bio** %6, align 8
  %590 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %589, i32 0, i32 2
  %591 = load %struct.TYPE_7__*, %struct.TYPE_7__** %590, align 8
  %592 = load i32, i32* %8, align 4
  %593 = sext i32 %592 to i64
  %594 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %591, i64 %593
  %595 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %594, i32 0, i32 3
  %596 = load %struct.bio*, %struct.bio** %595, align 8
  %597 = icmp ne %struct.bio* %596, null
  br i1 %597, label %598, label %604

598:                                              ; preds = %588
  %599 = load %struct.mddev*, %struct.mddev** %4, align 8
  %600 = load %struct.r10bio*, %struct.r10bio** %6, align 8
  %601 = load %struct.bio*, %struct.bio** %5, align 8
  %602 = load i32, i32* %8, align 4
  %603 = call i32 @raid10_write_one_disk(%struct.mddev* %599, %struct.r10bio* %600, %struct.bio* %601, i32 0, i32 %602)
  br label %604

604:                                              ; preds = %598, %588
  %605 = load %struct.r10bio*, %struct.r10bio** %6, align 8
  %606 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %605, i32 0, i32 2
  %607 = load %struct.TYPE_7__*, %struct.TYPE_7__** %606, align 8
  %608 = load i32, i32* %8, align 4
  %609 = sext i32 %608 to i64
  %610 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %607, i64 %609
  %611 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %610, i32 0, i32 2
  %612 = load %struct.bio*, %struct.bio** %611, align 8
  %613 = icmp ne %struct.bio* %612, null
  br i1 %613, label %614, label %620

614:                                              ; preds = %604
  %615 = load %struct.mddev*, %struct.mddev** %4, align 8
  %616 = load %struct.r10bio*, %struct.r10bio** %6, align 8
  %617 = load %struct.bio*, %struct.bio** %5, align 8
  %618 = load i32, i32* %8, align 4
  %619 = call i32 @raid10_write_one_disk(%struct.mddev* %615, %struct.r10bio* %616, %struct.bio* %617, i32 1, i32 %618)
  br label %620

620:                                              ; preds = %614, %604
  br label %621

621:                                              ; preds = %620
  %622 = load i32, i32* %8, align 4
  %623 = add nsw i32 %622, 1
  store i32 %623, i32* %8, align 4
  br label %582

624:                                              ; preds = %582
  %625 = load %struct.r10bio*, %struct.r10bio** %6, align 8
  %626 = call i32 @one_write_done(%struct.r10bio* %625)
  ret void
}

declare dso_local i64 @mddev_is_clustered(%struct.mddev*) #1

declare dso_local i32 @bio_end_sector(%struct.bio*) #1

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local i32 @prepare_to_wait(i32*, i32*, i32) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @finish_wait(i32*, i32*) #1

declare dso_local i32 @regular_request_wait(%struct.mddev*, %struct.r10conf*, %struct.bio*, i64) #1

declare dso_local %struct.md_rdev* @test_bit(i32, i32*) #1

declare dso_local i32 @set_mask_bits(i32*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @md_wakeup_thread(i32) #1

declare dso_local i32 @raid10_log(%struct.mddev*, i8*, ...) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @raid10_find_phys(%struct.r10conf*, %struct.r10bio*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.md_rdev* @rcu_dereference(%struct.md_rdev*) #1

declare dso_local i64 @unlikely(%struct.md_rdev*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @is_badblock(%struct.md_rdev*, i64, i32, i64*, i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @rdev_dec_pending(%struct.md_rdev*, %struct.mddev*) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i32 @allow_barrier(%struct.r10conf*) #1

declare dso_local i32 @md_wait_for_blocked_rdev(%struct.md_rdev*, %struct.mddev*) #1

declare dso_local i32 @wait_barrier(%struct.r10conf*) #1

declare dso_local i32 @bio_sectors(%struct.bio*) #1

declare dso_local %struct.bio* @bio_split(%struct.bio*, i32, i32, i32*) #1

declare dso_local i32 @bio_chain(%struct.bio*, %struct.bio*) #1

declare dso_local i32 @generic_make_request(%struct.bio*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @md_bitmap_startwrite(i32, i32, i32, i32) #1

declare dso_local i32 @raid10_write_one_disk(%struct.mddev*, %struct.r10bio*, %struct.bio*, i32, i32) #1

declare dso_local i32 @one_write_done(%struct.r10bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
