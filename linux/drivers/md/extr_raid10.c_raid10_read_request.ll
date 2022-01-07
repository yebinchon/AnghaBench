; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid10.c_raid10_read_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid10.c_raid10_read_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i64, i32, %struct.r10conf* }
%struct.r10conf = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.bio = type { i64, %struct.TYPE_8__*, %struct.r10bio*, i32, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i64 }
%struct.r10bio = type { i32, i32, i64, i32, %struct.TYPE_7__*, %struct.bio* }
%struct.TYPE_7__ = type { i32, i64, %struct.md_rdev*, %struct.bio* }
%struct.md_rdev = type { i32, i32 }

@REQ_SYNC = common dso_local global i64 0, align 8
@BDEVNAME_SIZE = common dso_local global i32 0, align 4
@GFP_NOIO = common dso_local global i32 0, align 4
@__GFP_HIGH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"???\00", align 1
@.str.1 = private unnamed_addr constant [63 x i8] c"md/raid10:%s: %s: unrecoverable I/O read error for block %llu\0A\00", align 1
@.str.2 = private unnamed_addr constant [61 x i8] c"md/raid10:%s: %s: redirecting sector %llu to another mirror\0A\00", align 1
@raid10_end_read_request = common dso_local global i32 0, align 4
@FailFast = common dso_local global i32 0, align 4
@R10BIO_FailFast = common dso_local global i32 0, align 4
@MD_FAILFAST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mddev*, %struct.bio*, %struct.r10bio*)* @raid10_read_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @raid10_read_request(%struct.mddev* %0, %struct.bio* %1, %struct.r10bio* %2) #0 {
  %4 = alloca %struct.mddev*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca %struct.r10bio*, align 8
  %7 = alloca %struct.r10conf*, align 8
  %8 = alloca %struct.bio*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.md_rdev*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.md_rdev*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.bio*, align 8
  store %struct.mddev* %0, %struct.mddev** %4, align 8
  store %struct.bio* %1, %struct.bio** %5, align 8
  store %struct.r10bio* %2, %struct.r10bio** %6, align 8
  %21 = load %struct.mddev*, %struct.mddev** %4, align 8
  %22 = getelementptr inbounds %struct.mddev, %struct.mddev* %21, i32 0, i32 2
  %23 = load %struct.r10conf*, %struct.r10conf** %22, align 8
  store %struct.r10conf* %23, %struct.r10conf** %7, align 8
  %24 = load %struct.bio*, %struct.bio** %5, align 8
  %25 = call i32 @bio_op(%struct.bio* %24)
  store i32 %25, i32* %9, align 4
  %26 = load %struct.bio*, %struct.bio** %5, align 8
  %27 = getelementptr inbounds %struct.bio, %struct.bio* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @REQ_SYNC, align 8
  %30 = and i64 %28, %29
  store i64 %30, i64* %10, align 8
  %31 = load i32, i32* @BDEVNAME_SIZE, align 4
  %32 = zext i32 %31 to i64
  %33 = call i8* @llvm.stacksave()
  store i8* %33, i8** %13, align 8
  %34 = alloca i8, i64 %32, align 16
  store i64 %32, i64* %14, align 8
  %35 = load %struct.r10bio*, %struct.r10bio** %6, align 8
  %36 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %15, align 4
  store %struct.md_rdev* null, %struct.md_rdev** %16, align 8
  %38 = load i32, i32* @GFP_NOIO, align 4
  store i32 %38, i32* %17, align 4
  %39 = load %struct.r10bio*, %struct.r10bio** %6, align 8
  %40 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %39, i32 0, i32 4
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = load i32, i32* %15, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 2
  %46 = load %struct.md_rdev*, %struct.md_rdev** %45, align 8
  %47 = icmp ne %struct.md_rdev* %46, null
  br i1 %47, label %48, label %89

48:                                               ; preds = %3
  %49 = load i32, i32* @GFP_NOIO, align 4
  %50 = load i32, i32* @__GFP_HIGH, align 4
  %51 = or i32 %49, %50
  store i32 %51, i32* %17, align 4
  %52 = call i32 (...) @rcu_read_lock()
  %53 = load %struct.r10bio*, %struct.r10bio** %6, align 8
  %54 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %53, i32 0, i32 4
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = load i32, i32* %15, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  store i32 %60, i32* %18, align 4
  %61 = load %struct.r10conf*, %struct.r10conf** %7, align 8
  %62 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %61, i32 0, i32 1
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = load i32, i32* %18, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call %struct.md_rdev* @rcu_dereference(i32 %68)
  store %struct.md_rdev* %69, %struct.md_rdev** %16, align 8
  %70 = load %struct.md_rdev*, %struct.md_rdev** %16, align 8
  %71 = icmp ne %struct.md_rdev* %70, null
  br i1 %71, label %72, label %77

72:                                               ; preds = %48
  %73 = load %struct.md_rdev*, %struct.md_rdev** %16, align 8
  %74 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @bdevname(i32 %75, i8* %34)
  br label %87

77:                                               ; preds = %48
  %78 = call i32 @strcpy(i8* %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %79 = load %struct.r10bio*, %struct.r10bio** %6, align 8
  %80 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %79, i32 0, i32 4
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %80, align 8
  %82 = load i32, i32* %15, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 2
  %86 = load %struct.md_rdev*, %struct.md_rdev** %85, align 8
  store %struct.md_rdev* %86, %struct.md_rdev** %16, align 8
  br label %87

87:                                               ; preds = %77, %72
  %88 = call i32 (...) @rcu_read_unlock()
  br label %89

89:                                               ; preds = %87, %3
  %90 = load %struct.mddev*, %struct.mddev** %4, align 8
  %91 = load %struct.r10conf*, %struct.r10conf** %7, align 8
  %92 = load %struct.bio*, %struct.bio** %5, align 8
  %93 = load %struct.r10bio*, %struct.r10bio** %6, align 8
  %94 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @regular_request_wait(%struct.mddev* %90, %struct.r10conf* %91, %struct.bio* %92, i32 %95)
  %97 = load %struct.r10conf*, %struct.r10conf** %7, align 8
  %98 = load %struct.r10bio*, %struct.r10bio** %6, align 8
  %99 = call %struct.md_rdev* @read_balance(%struct.r10conf* %97, %struct.r10bio* %98, i32* %11)
  store %struct.md_rdev* %99, %struct.md_rdev** %12, align 8
  %100 = load %struct.md_rdev*, %struct.md_rdev** %12, align 8
  %101 = icmp ne %struct.md_rdev* %100, null
  br i1 %101, label %115, label %102

102:                                              ; preds = %89
  %103 = load %struct.md_rdev*, %struct.md_rdev** %16, align 8
  %104 = icmp ne %struct.md_rdev* %103, null
  br i1 %104, label %105, label %112

105:                                              ; preds = %102
  %106 = load %struct.mddev*, %struct.mddev** %4, align 8
  %107 = call i32 @mdname(%struct.mddev* %106)
  %108 = load %struct.r10bio*, %struct.r10bio** %6, align 8
  %109 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = call i32 @pr_crit_ratelimited(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i32 %107, i8* %34, i64 %110)
  br label %112

112:                                              ; preds = %105, %102
  %113 = load %struct.r10bio*, %struct.r10bio** %6, align 8
  %114 = call i32 @raid_end_bio_io(%struct.r10bio* %113)
  store i32 1, i32* %19, align 4
  br label %252

115:                                              ; preds = %89
  %116 = load %struct.md_rdev*, %struct.md_rdev** %16, align 8
  %117 = icmp ne %struct.md_rdev* %116, null
  br i1 %117, label %118, label %129

118:                                              ; preds = %115
  %119 = load %struct.mddev*, %struct.mddev** %4, align 8
  %120 = call i32 @mdname(%struct.mddev* %119)
  %121 = load %struct.md_rdev*, %struct.md_rdev** %12, align 8
  %122 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @bdevname(i32 %123, i8* %34)
  %125 = load %struct.r10bio*, %struct.r10bio** %6, align 8
  %126 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = call i32 @pr_err_ratelimited(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0), i32 %120, i32 %124, i64 %127)
  br label %129

129:                                              ; preds = %118, %115
  %130 = load i32, i32* %11, align 4
  %131 = load %struct.bio*, %struct.bio** %5, align 8
  %132 = call i32 @bio_sectors(%struct.bio* %131)
  %133 = icmp slt i32 %130, %132
  br i1 %133, label %134, label %157

134:                                              ; preds = %129
  %135 = load %struct.bio*, %struct.bio** %5, align 8
  %136 = load i32, i32* %11, align 4
  %137 = load i32, i32* %17, align 4
  %138 = load %struct.r10conf*, %struct.r10conf** %7, align 8
  %139 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %138, i32 0, i32 0
  %140 = call %struct.bio* @bio_split(%struct.bio* %135, i32 %136, i32 %137, i32* %139)
  store %struct.bio* %140, %struct.bio** %20, align 8
  %141 = load %struct.bio*, %struct.bio** %20, align 8
  %142 = load %struct.bio*, %struct.bio** %5, align 8
  %143 = call i32 @bio_chain(%struct.bio* %141, %struct.bio* %142)
  %144 = load %struct.r10conf*, %struct.r10conf** %7, align 8
  %145 = call i32 @allow_barrier(%struct.r10conf* %144)
  %146 = load %struct.bio*, %struct.bio** %5, align 8
  %147 = call i32 @generic_make_request(%struct.bio* %146)
  %148 = load %struct.r10conf*, %struct.r10conf** %7, align 8
  %149 = call i32 @wait_barrier(%struct.r10conf* %148)
  %150 = load %struct.bio*, %struct.bio** %20, align 8
  store %struct.bio* %150, %struct.bio** %5, align 8
  %151 = load %struct.bio*, %struct.bio** %5, align 8
  %152 = load %struct.r10bio*, %struct.r10bio** %6, align 8
  %153 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %152, i32 0, i32 5
  store %struct.bio* %151, %struct.bio** %153, align 8
  %154 = load i32, i32* %11, align 4
  %155 = load %struct.r10bio*, %struct.r10bio** %6, align 8
  %156 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %155, i32 0, i32 1
  store i32 %154, i32* %156, align 4
  br label %157

157:                                              ; preds = %134, %129
  %158 = load %struct.r10bio*, %struct.r10bio** %6, align 8
  %159 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  store i32 %160, i32* %15, align 4
  %161 = load %struct.bio*, %struct.bio** %5, align 8
  %162 = load i32, i32* %17, align 4
  %163 = load %struct.mddev*, %struct.mddev** %4, align 8
  %164 = getelementptr inbounds %struct.mddev, %struct.mddev* %163, i32 0, i32 1
  %165 = call %struct.bio* @bio_clone_fast(%struct.bio* %161, i32 %162, i32* %164)
  store %struct.bio* %165, %struct.bio** %8, align 8
  %166 = load %struct.bio*, %struct.bio** %8, align 8
  %167 = load %struct.r10bio*, %struct.r10bio** %6, align 8
  %168 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %167, i32 0, i32 4
  %169 = load %struct.TYPE_7__*, %struct.TYPE_7__** %168, align 8
  %170 = load i32, i32* %15, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 3
  store %struct.bio* %166, %struct.bio** %173, align 8
  %174 = load %struct.md_rdev*, %struct.md_rdev** %12, align 8
  %175 = load %struct.r10bio*, %struct.r10bio** %6, align 8
  %176 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %175, i32 0, i32 4
  %177 = load %struct.TYPE_7__*, %struct.TYPE_7__** %176, align 8
  %178 = load i32, i32* %15, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %177, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 2
  store %struct.md_rdev* %174, %struct.md_rdev** %181, align 8
  %182 = load %struct.r10bio*, %struct.r10bio** %6, align 8
  %183 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %182, i32 0, i32 4
  %184 = load %struct.TYPE_7__*, %struct.TYPE_7__** %183, align 8
  %185 = load i32, i32* %15, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %184, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %187, i32 0, i32 1
  %189 = load i64, i64* %188, align 8
  %190 = load %struct.r10bio*, %struct.r10bio** %6, align 8
  %191 = load %struct.md_rdev*, %struct.md_rdev** %12, align 8
  %192 = call i64 @choose_data_offset(%struct.r10bio* %190, %struct.md_rdev* %191)
  %193 = add nsw i64 %189, %192
  %194 = load %struct.bio*, %struct.bio** %8, align 8
  %195 = getelementptr inbounds %struct.bio, %struct.bio* %194, i32 0, i32 4
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i32 0, i32 0
  store i64 %193, i64* %196, align 8
  %197 = load %struct.bio*, %struct.bio** %8, align 8
  %198 = load %struct.md_rdev*, %struct.md_rdev** %12, align 8
  %199 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = call i32 @bio_set_dev(%struct.bio* %197, i32 %200)
  %202 = load i32, i32* @raid10_end_read_request, align 4
  %203 = load %struct.bio*, %struct.bio** %8, align 8
  %204 = getelementptr inbounds %struct.bio, %struct.bio* %203, i32 0, i32 3
  store i32 %202, i32* %204, align 8
  %205 = load %struct.bio*, %struct.bio** %8, align 8
  %206 = load i32, i32* %9, align 4
  %207 = load i64, i64* %10, align 8
  %208 = call i32 @bio_set_op_attrs(%struct.bio* %205, i32 %206, i64 %207)
  %209 = load i32, i32* @FailFast, align 4
  %210 = load %struct.md_rdev*, %struct.md_rdev** %12, align 8
  %211 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %210, i32 0, i32 0
  %212 = call i64 @test_bit(i32 %209, i32* %211)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %226

214:                                              ; preds = %157
  %215 = load i32, i32* @R10BIO_FailFast, align 4
  %216 = load %struct.r10bio*, %struct.r10bio** %6, align 8
  %217 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %216, i32 0, i32 3
  %218 = call i64 @test_bit(i32 %215, i32* %217)
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %226

220:                                              ; preds = %214
  %221 = load i64, i64* @MD_FAILFAST, align 8
  %222 = load %struct.bio*, %struct.bio** %8, align 8
  %223 = getelementptr inbounds %struct.bio, %struct.bio* %222, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = or i64 %224, %221
  store i64 %225, i64* %223, align 8
  br label %226

226:                                              ; preds = %220, %214, %157
  %227 = load %struct.r10bio*, %struct.r10bio** %6, align 8
  %228 = load %struct.bio*, %struct.bio** %8, align 8
  %229 = getelementptr inbounds %struct.bio, %struct.bio* %228, i32 0, i32 2
  store %struct.r10bio* %227, %struct.r10bio** %229, align 8
  %230 = load %struct.mddev*, %struct.mddev** %4, align 8
  %231 = getelementptr inbounds %struct.mddev, %struct.mddev* %230, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %249

234:                                              ; preds = %226
  %235 = load %struct.bio*, %struct.bio** %8, align 8
  %236 = getelementptr inbounds %struct.bio, %struct.bio* %235, i32 0, i32 1
  %237 = load %struct.TYPE_8__*, %struct.TYPE_8__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = load %struct.bio*, %struct.bio** %8, align 8
  %241 = load %struct.mddev*, %struct.mddev** %4, align 8
  %242 = getelementptr inbounds %struct.mddev, %struct.mddev* %241, i32 0, i32 0
  %243 = load i64, i64* %242, align 8
  %244 = call i32 @disk_devt(i64 %243)
  %245 = load %struct.r10bio*, %struct.r10bio** %6, align 8
  %246 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %245, i32 0, i32 2
  %247 = load i64, i64* %246, align 8
  %248 = call i32 @trace_block_bio_remap(i32 %239, %struct.bio* %240, i32 %244, i64 %247)
  br label %249

249:                                              ; preds = %234, %226
  %250 = load %struct.bio*, %struct.bio** %8, align 8
  %251 = call i32 @generic_make_request(%struct.bio* %250)
  store i32 1, i32* %19, align 4
  br label %252

252:                                              ; preds = %249, %112
  %253 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %253)
  ret void
}

declare dso_local i32 @bio_op(%struct.bio*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.md_rdev* @rcu_dereference(i32) #1

declare dso_local i32 @bdevname(i32, i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @regular_request_wait(%struct.mddev*, %struct.r10conf*, %struct.bio*, i32) #1

declare dso_local %struct.md_rdev* @read_balance(%struct.r10conf*, %struct.r10bio*, i32*) #1

declare dso_local i32 @pr_crit_ratelimited(i8*, i32, i8*, i64) #1

declare dso_local i32 @mdname(%struct.mddev*) #1

declare dso_local i32 @raid_end_bio_io(%struct.r10bio*) #1

declare dso_local i32 @pr_err_ratelimited(i8*, i32, i32, i64) #1

declare dso_local i32 @bio_sectors(%struct.bio*) #1

declare dso_local %struct.bio* @bio_split(%struct.bio*, i32, i32, i32*) #1

declare dso_local i32 @bio_chain(%struct.bio*, %struct.bio*) #1

declare dso_local i32 @allow_barrier(%struct.r10conf*) #1

declare dso_local i32 @generic_make_request(%struct.bio*) #1

declare dso_local i32 @wait_barrier(%struct.r10conf*) #1

declare dso_local %struct.bio* @bio_clone_fast(%struct.bio*, i32, i32*) #1

declare dso_local i64 @choose_data_offset(%struct.r10bio*, %struct.md_rdev*) #1

declare dso_local i32 @bio_set_dev(%struct.bio*, i32) #1

declare dso_local i32 @bio_set_op_attrs(%struct.bio*, i32, i64) #1

declare dso_local i64 @test_bit(i32, i32*) #1

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
